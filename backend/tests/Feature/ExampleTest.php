<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ExampleTest extends TestCase
{
    use RefreshDatabase;

    /**
     * A basic test example.
     */
    public function test_the_application_returns_a_successful_response(): void
    {
        // Memastikan bahwa lingkungan database yang digunakan adalah lingkungan tes
        $this->assertEquals('testing', config('app.env'));

        // Membuat beberapa data tes di dalam tabel 'products'
        // Anda dapat menyesuaikan ini sesuai kebutuhan tes Anda
        \App\Models\Product::factory()->count(5)->create();

        // Melakukan permintaan HTTP ke endpoint /
        $response = $this->get('/');

        // Memeriksa apakah respons memiliki status 200 (OK)
        $response->assertStatus(200);
    }
}
