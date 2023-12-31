<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class LoginadminController extends Controller
{
    public function loginadmin(Request $request)
    {
        // Set validasi
        $validator = Validator::make($request->all(), [
            'username' => 'required',
            'password' => 'required',
        ]);

        // Respons kesalahan validasi
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        // Coba melakukan login
        $admin = Admin::where('username', $request->username)->first();

        if ($admin && password_verify($request->password, $admin->password)) {
            // Jika berhasil login
            $token = $this->generateToken();

            return response()->json([
                'success' => true,
                'message' => 'Login admin berhasil',
                'data' => $admin,
                'token' => $token,
            ], 200);
        }

        // Jika login gagal
        return response()->json([
            'success' => false,
            'message' => 'Login admin gagal',
        ], 401);
    }



    public function logoutadmin(Request $request)
    {
        $admin = Auth::user();
        $admin->tokens()->delete();

        return response()->json([
            'success' => true,
            'message' => 'Logout admin berhasil',
        ], 200);
    }

    private function generateToken()
    {
        // Implementasikan logika pembuatan token sesuai kebutuhan aplikasi Anda
        // Contoh sederhana: generate token secara acak
        return bin2hex(random_bytes(32));
    }
}