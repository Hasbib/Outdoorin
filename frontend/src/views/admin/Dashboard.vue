<template>
  <div id="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="navbar-header">
        <a class="navbar-brand-posisi" href="/dashboard">Dashboard Admin</a>
      </div>
      <ul class="nav navbar-right top-nav">
        <li class="dropdown">
          <a href="#" data-toggle="dropdown" class="user-dropdown"><i class="fa fa-user"></i> {{ username }}</a>
        </li>
      </ul>
      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
          <li class="active">
            <a href="/dashboard"><i class="fa fa-fw fa-dashboard"></i> Pelanggan</a>
          </li>
          <li>
            <a href="/produkadmin"><i class="fa fa-fw fa-edit"></i> Produk</a>
          </li>
          <li>
            <a href=""><i class="fa fa-fw fa-desktop"></i> LOGOUT</a>
          </li>
        </ul>
      </div>
    </nav>

    <div id="page-wrapper">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <ol class="breadcrumb">
              <li>
                <i class="fa fa-dashboard"></i> <a href="/dashboard"><span class="bold-text">Dashboard Admin</span> / </a>
              </li>
              <li class="active">
                <i class="fa fa-desktop"></i>Pelanggan
              </li>
            </ol>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-3">
            <!-- Left Sidebar (Navigation) -->
            <div class="sidebar">
              <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                  <a class="nav-link active" href="/dashboard"><i class="fa fa-fw fa-dashboard"></i> Pelanggan</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/produkadmin"><i class="fa fa-fw fa-edit"></i> Produk</a>
                </li>
                <li class="nav-item">
                  <a @click="logoutAdmin" class="nav-link" href=""><i class="fa fa-fw fa-desktop"></i> LOGOUT</a>
                </li>
              </ul>
            </div>
          </div>

          <div class="col-lg-9">
            <!-- Main Content Area -->
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> Database Pemesanan</h3>
              </div>
              <div class="panel-body">
                <table class="table">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama</th>
                      <th>Email</th>
                      <th>Tanggal Peminjaman</th>
                      <th>Alat</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>Habib</td>
                      <td>Habibshohiburrotib@gmail.com</td>
                      <td>27/11/2023</td>
                      <td>Tenda, Matras, Jaket</td>
                      <td>
                        <a href="/detailproduk" class="btn btn-info btn-detail">Detail</a>
                        <a href="" class="btn btn-danger btn-hapus"
                          onclick="return confirm('Anda yakin ingin hapus?');">Hapus</a>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  computed: {
    username() {
      return this.$store.state.username;
    },
  },
  methods: {
    logoutAdmin() {
      this.$store.commit('setAdmin', ''); // Clear username
      this.$store.commit('setLoginStatus', false); // Update login status
      this.$router.push('/loginadmin');
    },
  },
};
</script>

  
<style scoped>
/* Import the external CSS file */
@import './style.css';
</style>
