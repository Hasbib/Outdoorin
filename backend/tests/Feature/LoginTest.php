<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Users;

class LoginTest extends TestCase
{


    /**
     * A basic test example.
     *
     * @return void
     */
    public function test_can_login_with_valid_credentials()
    {
        // Data untuk login
        $loginData = [
            'username' => 'habib12',
            'password' => '12345678',
        ];

        // Mengirim permintaan HTTP ke endpoint untuk login
        $response = $this->json('POST', '/api/login', $loginData);

        // Memastikan respons dari server adalah 200 (OK)
        $response->assertStatus(200);

        // Memastikan bahwa respons berisi data user yang diharapkan
        $response->assertJsonFragment([
            'username' => 'habib12',
            'email' => 'habib@gmail.com',
        ]);

        // Memastikan bahwa respons berisi token
        $response->assertJsonStructure([
            'token',
        ]);
    }

    /**
     * Test case for invalid login credentials.
     *
     * @return void
     */
    public function test_cannot_login_with_invalid_credentials()
    {
        // Data untuk login dengan credential yang salah
        $invalidLoginData = [
            'username' => 'habib12',
            'password' => 'wrongpassword',
        ];

        // Mengirim permintaan HTTP ke endpoint untuk login dengan credential yang salah
        $response = $this->json('POST', '/api/login', $invalidLoginData);

        // Memastikan respons dari server adalah 401 (Unauthorized)
        $response->assertStatus(401);
    }
}
