<template>
    <head>
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    </head>
    <div class="container-fluid">
      <div class="row bg-secondary py-1 px-xl-5">
        <div class="col-lg-6 d-none d-lg-block">
        </div>
          <div class="col-lg-6 text-center text-lg-right">
            <div class="d-inline-flex align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">Akun Saya</button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <router-link to="/login" class="dropdown-item">Login</router-link>
                        <router-link to="/daftar" class="dropdown-item">Daftar</router-link>
                    </div>
                  </div>
                </div>
                <div class="d-inline-flex align-items-center d-block d-lg-none">
                    <a href="" class="btn px-0 ml-2">
                        <i class="fas fa-heart text-dark"></i>
                        <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                    </a>
                    <a href="" class="btn px-0 ml-2">
                        <i class="fas fa-shopping-cart text-dark"></i>
                        <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
            <div class="col-lg-4">
                <a href="" class="text-decoration-none">
                    <img src="@/views/boostrap/img/login/header.jpg" alt="MultiShop Logo">
                </a>
            </div>
            <div class="col-lg-4 col-6 text-left">
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Pencarian">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <div class="container-fluid bg-dark mb-30">
        <div class="row px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                    <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>Kategori</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                    <div class="navbar-nav w-100">
                        <div class="nav-item dropdown dropright">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Tenda <i class="fa fa-angle-right float-right mt-1"></i></a>
                            <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                <a href="/dtenda2" class="dropdown-item">Tenda EIGER Senaru 2P</a>
                                <a href="/dtenda1" class="dropdown-item">Tenda Camping Raung B Kapasitas 4 orang</a>      
                            </div>
                        </div>
                        <a href="/ptas" class="nav-item nav-link">Tas Carrier</a>
                        <a href="/psepatu" class="nav-item nav-link">Sepatu</a>
                        <a href="/dmatras1" class="nav-item nav-link">Matras</a>
                        <a href="/psb" class="nav-item nav-link">SleepingBag</a>
                        <a href="/pkompor" class="nav-item nav-link">Kompor Portable</a>
                        <a href="/dgas1" class="nav-item nav-link">Gas</a>
                        <a href="/dpole1" class="nav-item nav-link">Treking Pole</a>
                        <a href="/djaket1" class="nav-item nav-link">Jaket</a>
                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <span class="h1 text-uppercase text-dark bg-light px-2">Multi</span>
                        <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="/" class="nav-item nav-link active">Beranda</a>
                            <a href="/product" class="nav-item nav-link">Produk</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                            <a href="/keranjang" class="btn px-0 ml-3">
                                <i class="fas fa-shopping-cart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->

    <!-- Breadcrumb Start -->
    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-12">
                <nav class="breadcrumb bg-light mb-30">
                    <a class="breadcrumb-item text-dark" href="#">Beranda</a>
                    <a class="breadcrumb-item text-dark" href="#">Detail Produk</a>
                    <span class="breadcrumb-item active">Tas Carrier</span>
                </nav>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Start -->
    <div class="container-fluid">
    <div class="row px-xl-5">
        <!-- Shop Sidebar Start -->
        <div class="col-lg-3 col-md-4">
            <!-- Price Start -->
            <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter</span></h5>
            <div class="bg-light p-4 mb-30">
                <form class="d-flex flex-column">
                    <label class="mb-2">Pilih Kategori</label>
                    <select name="" class="mb-3">
                        <option>Semua</option> 
                        <option>Tenda</option>
                        <option>Tas Carrier</option> 
                        <option>Sepatu</option>
                        <option>Matras</option>
                        <option>Handlamp</option>
                        <option>Kompor</option>
                        <option>Sleeping Bag</option>
                        <option>Trekking Pole</option>
                        <option>Jaket</option>
                    </select>
                    <div class="mb-3">
                        <a href="" class="btn btn-outline-dark btn-sm">Cari</a>
                    </div>
                </form>
            </div>
            <!-- Price End -->
        </div>
        <!-- Shop Sidebar End -->
 
        <!-- Shop Product Start -->
        <div class="col-lg-9 col-md-8">
            <div class="row pb-3">
                <div class="col-12 pb-1">
                    <div class="d-flex align-items-center justify-content-between mb-4">
               
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 pb-1">
                    <div class="product-item bg-light mb-4">
                        <div class="product-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="@/views/boostrap/img/tas/tas1.jpg" alt="">
                            <div class="product-action">
                                <a class="btn btn-outline-dark btn-square" href="/dtas1"><i class="fa fa-shopping-cart"></i></a>
                            </div>
                        </div>
                        <div class="text-center py-4">
                            <a class="h6 text-decoration-none text-truncate" href="/dtas1">Tas Carrier - Biru Tua</a>
                            <div class="d-flex align-items-center justify-content-center mt-2">
                                <h5>Rp 25.000 perhari</h5>
                            </div>
                            <div class="d-flex align-items-center justify-content-center mb-1">
                                <small class="fa fa-star text-primary mr-1"></small>
                                <small class="fa fa-star text-primary mr-1"></small>
                                <small class="fa fa-star text-primary mr-1"></small>
                                <small class="fa fa-star text-primary mr-1"></small>
                                <small class="fa fa-star-half-alt text-primary mr-1"></small>
                                <small>(13)</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 pb-1">
                     <div class="product-item bg-light mb-4">
                        <div class="product-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="@/views/boostrap/img/tas/tas2.jpg" alt="">
                            <div class="product-action">
                                <a class="btn btn-outline-dark btn-square" href="/dtas2"><i class="fa fa-shopping-cart"></i></a>
                            </div>
                        </div>
                        <div class="text-center py-4">
                            <a class="h6 text-decoration-none text-truncate" href="/dtas2">Tas Carrier - Biru Muda</a>
                            <div class="d-flex align-items-center justify-content-center mt-2">
                               <h5>Rp 25.000 perhari</h5>
                            </div>
                            <div class="d-flex align-items-center justify-content-center mb-1">
                                <small class="fa fa-star text-primary mr-1"></small>
                                <small class="fa fa-star text-primary mr-1"></small>
                                <small class="fa fa-star text-primary mr-1"></small>
                                <small class="fa fa-star-half-alt text-primary mr-1"></small>
                                <small class="far fa-star text-primary mr-1"></small>
                                <small>(18)</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 pb-1">
                    <div class="product-item bg-light mb-4">
                        <div class="product-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="@/views/boostrap/img/tas/tas3.jpg" alt="">
                            <div class="product-action">
                                <a class="btn btn-outline-dark btn-square" href="/dtas3"><i class="fa fa-shopping-cart"></i></a>
                            </div>
                        </div>
                        <div class="text-center py-4">
                            <a class="h6 text-decoration-none text-truncate" href="/dtas3">Tas Carrier - Merah</a>
                            <div class="d-flex align-items-center justify-content-center mt-2">
                                <h5>Rp 25.000 perhari</h5>
                            </div>
                            <div class="d-flex align-items-center justify-content-center mb-1">
                                <small class="fa fa-star text-primary mr-1"></small>
                                <small class="fa fa-star text-primary mr-1"></small>
                                <small class="fa fa-star text-primary mr-1"></small>
                                <small class="far fa-star text-primary mr-1"></small>
                                <small class="far fa-star text-primary mr-1"></small>
                                <small>(13)</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    
    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-secondary mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <h5 class="text-secondary text-uppercase mb-4">Camping Adventure</h5>
                <p class="mb-4">Selamat datang di Camping Adventure! Nikmati sewa alat camping murah dan mudah. Temukan koleksi terbaik kami untuk pengalaman outdoor yang tak terlupakan. Mulailah petualangan Anda sekarang!</p>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-4 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">Pesan Cepat</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Beranda</a>
                            <a class="text-secondary mb-2" href="product.php"><i class="fa fa-angle-right mr-2"></i>Produk</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">Jelajahi Camping Adventure</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Tentang Kami</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Kebijakan Camping Adventure</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Blog</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Kontak Media</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">Hubungi Kami</h5>
                        <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Online</p>
                        <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>campingadv@gmail.com</p>
                        <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+6285 8000 864 54</p>
                        <h6 class="text-secondary text-uppercase mt-4 mb-3">Ikuti Kami</h6>
                        <div class="d-flex">
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a class="btn btn-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row border-top mx-xl-5 py-4" style="border-color: rgba(256, 256, 256, .1) !important;">
            <div class="col-md-6 px-xl-0">
                <p class="mb-md-0 text-center text-md-left text-secondary">
                    &copy; <a class="text-primary" href="#">Domain</a>. All Rights Reserved. Designed
                    by
                    <a class="text-primary" href="https://htmlcodex.com">HTML Codex</a>
                    <br>Distributed By: <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                </p>
            </div>
        </div>
    </div>
    <!-- Footer End -->

</template>

<script>
export default {
  // Komponen utama halaman beranda
  mounted() {
    // Load jQuery
    const jqueryScript = document.createElement('script');
    jqueryScript.src = 'https://code.jquery.com/jquery-3.4.1.min.js';
    document.head.appendChild(jqueryScript);

    // Load Bootstrap JS
    const bootstrapScript = document.createElement('script');
    bootstrapScript.src = 'https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js';
    document.head.appendChild(bootstrapScript);
  },
};
</script>


<style scoped>
  /* Import the external CSS file */
  @import '@/views/boostrap/css/bootstrap-grid.css';
  @import '@/views/boostrap/css/bootstrap-grid.min.css';
  @import '@/views/boostrap/css/bootstrap-reboot.css';
  @import '@/views/boostrap/css/bootstrap-reboot.min.css';
  @import '@/views/boostrap/css/bootstrap.css';
  @import '@/views/boostrap/css/bootstrap.min.css';
  @import '@/views/boostrap/css/style.min.css';
  @import '@/views/boostrap/css/stylebos.css';
</style>