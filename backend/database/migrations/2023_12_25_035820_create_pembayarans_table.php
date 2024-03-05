<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pembayarans', function (Blueprint $table) {
            $table->id();
            $table->string('nama_pemyewa', 100)->nullable();
            $table->date('tanggal_sewa');
            $table->date('tanggal_pengembalian');
            $table->string('no_telepon', 50)->nullable();  
            $table->string('alamat', 50)->nullable();
            $table->string('ktp', 100)->nullable();
            $table->string('metode_pembayaran', 50)->nullable;
            $table->string('bayar', 100)->nullable();
            $table->string('sewa', 100)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pembayarans');
    }
};
