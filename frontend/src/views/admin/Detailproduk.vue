<template>
  <div class="container mt-5">
    <div class="row">
      <div class="col-md-12">
        <div class="card border-0 rounded shadow">
          <div class="card-body">
            <h4>DETAIL PRODUK</h4>
            <hr>

            <div class="form-group">
              <label for="nama_barang" class="font-weight-bold">Nama Produk</label>
              <div>{{ post.nama_barang }}</div>
            </div>

            <div class="form-group">
              <label for="harga_sewa" class="font-weight-bold">Harga Sewa</label>
              <div>{{ post.harga_sewa }}</div>
            </div>

            <div class="form-group">
              <label for="stok" class="font-weight-bold">Stok</label>
              <div>{{ post.stok }}</div>
            </div>

            <div class="form-group">
              <label for="deskripsi" class="font-weight-bold">Deskripsi</label>
              <div>{{ post.deskripsi }}</div>
            </div>

            <div class="form-group">
              <label for="foto" class="font-weight-bold">Foto</label>
              <img :src="getImageUrl(post.foto)" alt="Product Image" class="img-fluid">
            </div>
            <br>
            <button class="btn btn-sm btn-batal"><router-link to="../produkadmin">BATAL</router-link></button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>


<script>
import { reactive, ref, onMounted } from 'vue';
import { useRouter, useRoute } from 'vue-router';
import axios from 'axios';

export default {
  setup() {
    // initial state
    const post = reactive({
      nama_barang: '',
      harga_sewa: '',
      stok: '',
      deskripsi: '',
      foto: ''
    });

    // state validation
    const validation = ref([]);

    // vue router
    const router = useRouter();

    // vue router
    const route = useRoute();

    // mounted
    onMounted(() => {
      // get API from Laravel Backend
      axios.get(`http://localhost:8000/api/product/${route.params.id}`)
        .then(response => {
          // assign state posts with response data
          const data = response.data.data;
          post.nama_barang = data.nama_barang;
          post.harga_sewa = data.harga_sewa;
          post.stok = data.stok;
          post.deskripsi = data.deskripsi;
          post.foto = data.foto;
        })
        .catch(error => {
          console.log(error.response.data);
        });
    });

    // method update
    function update() {
      const { nama_barang, harga_sewa, stok, deskripsi, foto } = post;

      axios.put(`http://localhost:8000/api/product/${route.params.id}`, {
        nama_barang,
        harga_sewa,
        stok,
        deskripsi,
        foto,
      })
      .then(() => {
        // redirect to siswa index
        router.push({
          path: '/produkadmin',
        });
      })
      .catch(error => {
        // assign state validation with error
        validation.value = error.response.data;
      });
    }

    function getImageUrl(filename) {
      // Assuming your backend is running on http://localhost:8000
      return `http://localhost:8000/uploads/${filename}`;
    }


    // return
    return {
      post,
      validation,
      router,
      update,
      getImageUrl,
    };
  },
};
</script>
   
<style scoped>
/* Your scoped styles here */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f8f8f8;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h2, h4 {
    text-align: center;
    color: #333;
}

table {
    width: 100%;
    margin-top: 20px;
    border-collapse: collapse;
}

table td {
    padding: 15px;
    border-bottom: 1px solid #ddd;
}

table td:first-child {
    font-weight: bold;
    width: 40%;
}

img {
    max-width: 100%;
    height: auto;
    display: block;
    margin: 15px auto;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.button-container {
    margin-top: 30px;
    text-align: center;
}

button {
    padding: 12px 24px;
    background-color: #333;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #555;
}


</style>
    