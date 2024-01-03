<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Product;

class ProductTest extends TestCase
{
    /**
     * Test case for retrieving a product from the database.
     *
     * @return void
     */
    public function test_can_retrieve_product_from_database()
    {
        // Create a product in the database
        $product = Product::factory()->create([
            'nama_barang' => 'Televisi',
            'harga_sewa' => '70.000',
            'deskripsi' => 'Televisi',
            'stok' => '6',
            'foto' => 'televisi.jpg',
        ]);

        // Send a GET request to retrieve the product by ID
        $response = $this->json('GET', '/api/product/' . $product->id);

        // Assert the response status is 200 (OK)
        $response->assertStatus(200);

        // Assert that the response contains the expected product data
        $response->assertJson([
            'success' => true,
            'message' => 'Detail Data Product',
            'data' => [
                'id' => $product->id,
                'nama_barang' => 'Televisi',
                'harga_sewa' => '70.000',
                'deskripsi' => 'Televisi',
                'stok' => '6',
                'foto' => 'televisi.jpg',
            ],
        ]);
    }
}
