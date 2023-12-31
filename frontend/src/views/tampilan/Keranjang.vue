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
                        <a href="/dpole1" class="nav-item nav-link">Trekking Pole</a>
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
                    <span class="breadcrumb-item active">Pembayaran</span>
                </nav>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <div class="container-fluid">
        <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">PEMBAYARAN</span></h5>
        <div class="row px-xl-5">
            <div class="col-lg-13 mb-5">
                <div class="contact-form bg-light p-30">
                    <div id="success"></div>
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                        <label for="name">Nama</label>
                            <input type="text" class="form-control" id="name" placeholder=""
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <label for="start_date">Tanggal Mulai Pinjam</label>
                            <input type="date" class="form-control" id="start_date" required="required"
                                data-validation-required-message="Please enter the start date" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <label for="end_date">Tanggal Pengembalian Barang</label>
                            <input type="date" class="form-control" id="end_date" required="required"
                                data-validation-required-message="Please enter the end date" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                        <label for="name">No Telepon</label>
                            <input type="" class="form-control" id="telepon" placeholder=""
                                required="required" data-validation-required-message="" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                        <label for="alamat">Alamat</label>
                            <textarea class="form-control" rows="8" id="alamat" placeholder=""
                                required="required"
                                data-validation-required-message="alamat"></textarea>
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <label for="ktp">Upload Foto KTP</label>
                            <input type="file" class="form-control-file" id="ktp" accept="image/*" required="required" />
                        <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <label for="metode">Metode Pembayaran</label>
                                <div class="form-check">
                                <input class="form-check-input" type="radio" name="paymentMethod" id="dana1" value="dana">
                                <label class="form-check-label" for="dana1">Dana (085800086454)</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="paymentMethod" id="dana2" value="dana">
                                <label class="form-check-label" for="dana2">Gopay (085800086454)</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="paymentMethod" id="dana3" value="dana">
                                <label class="form-check-label" for="dana3">Ovo (085800086454)</label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label for="pembayaran">Upload Bukti Pembayaran</label>
                            <input type="file" class="form-control-file" id="ktp" accept="image/*" required="required" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div>
                        <label for="name">Barang di Sewa</label>
                            <input type="email" class="form-control" id="email" placeholder=""
                                required="required" data-validation-required-message="Please enter your email" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <br><br>
                        <div>
                            <button class="btn btn-danger py-2 px-4" type="submit" id="pesan">Pesan</button>
                            <br><br>
                            <button class="btn btn-primary py-2 px-4" type="submit" id="batal">Batal</button>
                            <br><br>
                        </div>
                    </form>
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
import axios from 'axios';
import { onMounted, ref, computed } from 'vue';

export default {
  setup() {
    let posts = ref([]);
    let currentPage = ref(1);
    const recordsPerPage = 11;

    // Move the getImageUrl function outside of the setup function
    function getImageUrl(filename) {
      // Assuming your backend is running on http://localhost:8000
      return `http://localhost:8000/uploads/${filename}`;
    }

    onMounted(() => {
      axios
        .get('http://localhost:8000/api/product')
        .then((response) => {
          posts.value = response.data.data.sort((a, b) => a.id - b.id);
        })
        .catch((error) => {
          console.log(error.response.data);
        });
    });

    function getSlicedData() {
      const startIndex = (currentPage.value - 1) * recordsPerPage;
      const endIndex = startIndex + recordsPerPage;
      return posts.value.slice(startIndex, endIndex);
    }

    return {
      posts: computed(() => getSlicedData()),
      currentPage,
      getImageUrl, // Make sure to include getImageUrl in the return object
    };
  },
  computed: {
    username() {
      return this.$store.state.username;
    },
    isLoggedIn() {
      return this.$store.state.isLoggedIn;
    },
  },
  methods: {
    logoutUser() {
      this.$store.commit('setUser', ''); // Clear username
      this.$store.commit('setLoginStatus', false); // Update login status
      this.$router.push('/login');
    },
  },
};
</script>
