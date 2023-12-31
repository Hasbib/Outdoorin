<template>
    <div id="wrapper">
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
          <a class="navbar-brand-posisi" href="/dashboard">Dashboard Admin</a>
        </div>
        <ul class="nav navbar-right top-nav">
            <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="user-dropdown"><i class="fa fa-user"></i> Habib</a>
            </li>
        </ul>

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
                  <i class="fa fa-desktop"></i>Produk
                </li>
                <a href="/tambahproduk" class="btn btn-sm btn-success">Tambah Produk</a>
              </ol>
            </div>
          </div>
  
          <div class="row">
            <div class="col-lg-3">
              <!-- Left Sidebar (Navigation) -->
              <div class="sidebar">
                <ul class="nav nav-pills flex-column">
                  <li class="nav-item">
                    <a class="nav-link" href="/dashboard"><i class="fa fa-fw fa-dashboard"></i> Pelanggan</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" href="/produkadmin"><i class="fa fa-fw fa-edit"></i> Produk</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href=""><i class="fa fa-fw fa-desktop"></i> LOGOUT</a>
                  </li>
                </ul>
              </div>
            </div>
  
            <div class="col-lg-9">
              <!-- Main Content Area -->
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> Database Produk</h3>
                </div>
                <div class="panel-body">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Nama Barang</th>
                        <th>Harga Sewa</th>
                        <th>stok</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="(product, index) in posts" :key="index">
                        <td>{{ product.id }}</td>
                        <td>{{ product.nama_barang }}</td>
                        <td>{{ product.harga_sewa }}</td>
                        <td>{{ product.stok }}</td>
                        <router-link :to="{ name: 'detailproduk', params: { id: product.id } }" class="btn btn-info btn-detail">Detail</router-link>

                        <router-link :to="{ name: 'product.edit', params: { id: product.id } }" class="btn btn-info btn-edit">
                          Edit
                        </router-link>
                        <a href="#" class="btn btn-danger btn-hapus" 
                        @click="deleteProduct(product.id)">Hapus</a>
                    </tr>
                  </tbody>
                  </table>
                  <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center mt-4">
                        <li class="page-item" :class="{ disabled: currentPage === 1 }">
                          <button class="page-link" @click="changePage(currentPage - 1)" :disabled="currentPage === 1">
                            revious
                          </button>
                        </li>
                        <li class="page-item" v-for="pageNumber in totalPages" :key="pageNumber" :class="{ active: currentPage === pageNumber }">
                          <button class="page-link" @click="changePage(pageNumber)">{{ pageNumber }}</button>
                        </li>
                          <li class="page-item" :class="{ disabled: currentPage === totalPages }">
                          <button class="page-link" @click="changePage(currentPage + 1)" :disabled="currentPage === totalPages">
                            Next
                          </button>
                        </li>
                      </ul>
                    </nav>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>

<script>
import axios from 'axios';
import { onMounted, ref, computed } from 'vue';

export default {
  setup() {
    let posts = ref([]);
    let currentPage = ref(1);
    const recordsPerPage = 11;

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

    const totalPages = computed(() => Math.ceil(posts.value.length / recordsPerPage));

    function changePage(newPage) {
      if (newPage >= 1 && newPage <= totalPages.value) {
        currentPage.value = newPage;
      }
    }

    function getSlicedData() {
      const startIndex = (currentPage.value - 1) * recordsPerPage;
      const endIndex = startIndex + recordsPerPage;
      return posts.value.slice(startIndex, endIndex);
    }

    function deleteProduct(id) {
      const index = posts.value.findIndex((product) => product.id === id);
      if (index !== -1) {
        const confirmation = confirm('Anda yakin ingin hapus?');
        if (confirmation) {
          axios
            .delete(`http://localhost:8000/api/product/${id}`)
            .then(() => {
              posts.value.splice(index, 1);
            })
            .catch((error) => {
              console.log(error.response.data);
            });
        }
      }
    }

    
    return {
      posts: computed(() => getSlicedData()),
      currentPage,
      totalPages,
      changePage,
      deleteProduct,
    };
  },
};
</script>

  
<style scoped>
/* Import the external CSS file */
@import './style.css';
</style>