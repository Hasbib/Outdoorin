<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    public function login(Request $request)
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
        if (Auth::attempt(['username' => $request->username, 'password' => $request->password])) {
            // Jika berhasil login
            $user = Auth::user();
    
            // Dapatkan token
            $token = $user->createToken('token-name')->plainTextToken;
    
            return response()->json([
                'success' => true,
                'message' => 'Login berhasil',
                'data' => $user,
                'token' => $token,
            ], 200);
        }
    
        // Jika login gagal
        return response()->json([
            'success' => false,
            'message' => 'Login gagal',
        ], 401);
    }

    public function logout(Request $request)
    {
        $user = Auth::user();
        $user->tokens()->delete(); // Revoke all tokens for the authenticated user

        return response()->json([
            'success' => true,
            'message' => 'Logout berhasil',
        ], 200);
    }
}
