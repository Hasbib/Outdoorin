<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\File;

class ProductController extends Controller
{
    // Index
    public function index()
    {
        // Retrieve data from the "products" table
        $products = Product::orderBy('nama_barang', 'asc')->get();

        // Create JSON response
        return response()->json([
            'success' => true,
            'message' => 'List Data Product',
            'data' => $products
        ], 200);
    }

    // Show
    public function show($id)
    {
        $product = Product::findOrFail($id);

        return response()->json([
            'success' => true,
            'message' => 'Detail Data Product',
            'data' => $product
        ], 200);
    }

    // Store
    public function store(Request $request)
    {
        // Set validation rules
        $validator = Validator::make($request->all(), [
            'nama_barang' => 'required',
            'harga_sewa' => 'required',
            'deskripsi' => 'required',
            'stok' => 'required',
            'foto' => 'required|image|mimes:jpeg,png,jpg,gif',
        ]);

        // Respond with validation errors
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        // Get the original name of the uploaded file
        $originalName = $request->file('foto')->getClientOriginalName();

        // Save to the database with the original file name
        $product = Product::create([
            'nama_barang' => $request->nama_barang,
            'harga_sewa' => $request->harga_sewa,
            'deskripsi' => $request->deskripsi,
            'stok' => $request->stok,
            'foto' => $originalName, // Save the original file name
        ]);

        // Move the uploaded file to the desired directory
        $request->file('foto')->move(public_path('uploads'), $originalName);

        // Success saving to the database
        if ($product) {
            return response()->json([
                'success' => true,
                'message' => 'Input berhasil',
                'data' => $product
            ], 201);
        }

        // Failed to save to the database
        return response()->json([
            'success' => false,
            'message' => 'Input gagal',
        ], 409);
    }

    // Update
    public function update(Request $request, $id)
    {
        // Set validation rules
        $validator = Validator::make($request->all(), [
            'nama_barang' => 'required',
            'harga_sewa' => 'required',
            'deskripsi' => 'required',
            'stok' => 'required',
            'foto' => 'sometimes|image|mimes:jpeg,png,jpg,gif',
        ]);

        // Respond with validation errors
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        // Find product by ID
        $product = Product::findOrFail($id);

        // If the product is found
        if ($product) {
            // Update product
            $product->update([
                'nama_barang' => $request->nama_barang,
                'harga_sewa' => $request->harga_sewa,
                'deskripsi' => $request->deskripsi,
                'stok' => $request->stok,
            ]);

            // Check if a new file is provided in the request
            if ($request->hasFile('foto')) {
                // Get the original name of the uploaded file
                $originalName = $request->file('foto')->getClientOriginalName();

                // Update the product's photo with the original file name
                $product->update(['foto' => $originalName]);

                // Move the uploaded file to the desired directory
                $request->file('foto')->move(public_path('uploads'), $originalName);
            }

            return response()->json([
                'success' => true,
                'message' => 'Data product berhasil diupdate',
                'data' => $product
            ], 200);
        }

        // Product data not found
        return response()->json([
            'success' => false,
            'message' => 'Data tidak ditemukan',
        ], 404);
    }

    public function destroy($id)
    {
        // Find product by ID
        $product = Product::findOrFail($id);

        // If the product is found
        if ($product) {
            // Delete product
            $product->delete();

            // Delete the associated file from the uploads directory
            $filePath = public_path('uploads') . '/' . $product->foto;
            if (File::exists($filePath)) {
                File::delete($filePath);
            }

            return response()->json([
                'success' => true,
                'message' => 'Data product berhasil dihapus',
            ], 200);
        }

        // Product data not found
        return response()->json([
            'success' => false,
            'message' => 'Data tidak ditemukan',
        ], 404);
    }
}
