<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Users; // Sesuaikan dengan namespace model Users

class RegistrasiAdminTest extends TestCase
{
   // Menggunakan trait RefreshDatabase untuk mereset basis data setiap kali menjalankan pengujian

    /**
     * A basic test example.
     *
     * @return void
     */
    public function test_can_create_user_with_given_credentials()
    {
        // Data untuk membuat user baru
        $userData = [
            'username' => 'habibs',
            'email' => 'habibs@gmail.com',
            'password' => '12345678',
        ];
    
        // Mengirim permintaan HTTP ke endpoint untuk membuat user
        $response = $this->json('POST', '/api/registrasiadmin', $userData);
    
        // Memastikan respons dari server adalah 201 (Created)
        $response->assertStatus(201);
    
        // Memastikan bahwa user telah disimpan di basis data
        $this->assertDatabaseHas('users', [
            'username' => 'habibs',
            'email' => 'habibs@gmail.com',
        ]);
    
        // Memastikan bahwa respons berisi data user yang diharapkan
        $response->assertJsonFragment([
            'username' => 'habibs',
            'email' => 'habibs@gmail.com',
        ]);
    }
    
}
