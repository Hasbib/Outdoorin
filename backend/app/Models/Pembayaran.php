<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pembayaran extends Model
{
    use HasFactory;
    
    protected $table ='pembayarans';
    protected $fillable = [
        'nama_pemyewa', 'tanggal_sewa', 'tanggal_pengembalian', 'no_telepon', 'alamat', 'ktp',
        'metode_pembayaran', 'bayar', 'sewa'  
    ];
}
