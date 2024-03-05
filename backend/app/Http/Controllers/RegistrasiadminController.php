<?php

namespace App\Http\Controllers;

use App\Models\Admin; // Assuming you have a model named RegistrasiAdmin
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class RegistrasiadminController extends Controller 
{
    // Index
    public function index()
    {
        // Ambil data dari tabel registrasiadmins
        $registrasiadmins = Admin::orderBy('username', 'asc')->get();

        // Buat respons JSON
        return response()->json([
            'success' => true,
            'message' => 'List Data Registrasi Admin',
            'data' => $registrasiadmins
        ], 200);
    }

    // Show
    public function show($id)
    {
        // Temukan registrasi admin berdasarkan ID
        $registrasiadmin = Admin::findOrFail($id); 
        // Buat respons JSON
        return response()->json([
            'success' => true,
            'message' => 'Detail Data Registrasi Admin',
            'data' => $registrasiadmin
        ], 200);
    }

    // Store
    public function store(Request $request)
    {
        // Set validasi
        $validator = Validator::make($request->all(), [
            'username' => 'required', 
            'email' => 'required', 
            'password' => 'required',
        ]);

        // Respons kesalahan validasi
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        // Simpan ke database
        $registrasiadmin = Admin::create([
            'username' => $request->username,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);

        // Sukses menyimpan ke database
        if ($registrasiadmin) {
            return response()->json([
                'success' => true,
                'message' => 'Registrasi Admin berhasil',
                'data' => $registrasiadmin
            ], 201);
        }

        // Gagal menyimpan ke database
        return response()->json([
            'success' => false,
            'message' => 'Registrasi Admin gagal',
        ], 409);
    }

    // Update
    public function update(Request $request, $id)
    {
        // Set validasi
        $validator = Validator::make($request->all(), [
            'username' => 'required',
            'email' => 'required',
            'password' => 'required',
        ]);

        // Respons kesalahan validasi
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        // Temukan registrasi admin berdasarkan ID
        $registrasiadmin = Admin::findOrFail($id);

        // Jika registrasi admin ditemukan
        if ($registrasiadmin) {
            // Update registrasi admin
            $registrasiadmin->update([
                'username' => $request->username,
                'email' => $request->email,
                'password' => bcrypt($request->password), // Updated to hash the password
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Data registrasi admin berhasil diupdate',
                'data' => $registrasiadmin
            ], 200);
        }

        // Data registrasi admin tidak ditemukan
        return response()->json([
            'success' => false,
            'message' => 'Data tidak ditemukan',
        ], 404);
    }

    // Destroy
    public function destroy($id)
    {
        // Temukan registrasi admin berdasarkan ID
        $registrasiadmin = Admin::findOrFail($id);

        // Jika registrasi admin ditemukan
        if ($registrasiadmin) {
            // Hapus registrasi admin
            $registrasiadmin->delete();

            return response()->json([
                'success' => true,
                'message' => 'Data registrasi admin berhasil dihapus',
            ], 200);
        }

        // Data registrasi admin tidak ditemukan
        return response()->json([
            'success' => false,
            'message' => 'Data tidak ditemukan',
        ], 404);
    }
}
