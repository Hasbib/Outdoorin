<template>
  <div class="container mt-5">
    <div class="row">
      <div class="col-md-12">
        <div class="card border-0 rounded shadow">
          <div class="card-body">
            <h4>TAMBAH PRODUK</h4>
            <hr>

            <form @submit.prevent="store" method="post">

              <div class="form-group">
                <label for="title" class="font-weight-bold">Nama Produk</label>
                <input type="text" class="form-control" v-model="post.nama_barang" placeholder="Masukkan nama produk">

                <!-- validation -->
                <div v-if="validation.nama_barang" class="mt-2 alert alert-danger">
                  {{ validation.nama_barang[0] }}
                </div>
              </div>

              <div class="form-group">
                <label for="title" class="font-weight-bold">Harga Sewa</label>
                <input type="text" class="form-control" v-model="post.harga_sewa" placeholder="Masukkan harga sewa">

                <!-- validation -->
                <div v-if="validation.harga_sewa" class="mt-2 alert alert-danger">
                  {{ validation.harga_sewa[0] }}
                </div>
              </div>

              <div class="form-group">
                <label for="title" class="font-weight-bold">Stok</label>
                <input type="text" class="form-control" v-model="post.stok" placeholder="Masukkan stok tersisa">

                <!-- validation -->
                <div v-if="validation.stok" class="mt-2 alert alert-danger">
                  {{ validation.stok[0] }}
                </div>
              </div>

              <div class="form-group">
                <label for="title" class="font-weight-bold">Deskripsi</label>
                <textarea class="form-control" v-model="post.deskripsi" placeholder="Masukkan deskripsi barang "></textarea>

                <!-- validation -->
                <div v-if="validation.deskripsi" class="mt-2 alert alert-danger">
                  {{ validation.deskripsi[0] }}
                </div>
              </div>

              <div class="form-group">
                <label for="foto" class="font-weight-bold">Foto</label>
                <input type="file" class="form-control-file" id="foto" @change="handleFileUpload" accept="image/*">

                <!-- validation -->
                <div v-if="validation.foto" class="mt-2 alert alert-danger">
                  {{ validation.foto[0] }}
                </div>
              </div>

              <button type="submit" class="btn btn-primary">SIMPAN</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { reactive, ref } from 'vue';
import { useRouter } from 'vue-router';
import axios from 'axios';

export default {
  setup() {
    // initial state siswa
    const post = reactive({
      nama_barang: '',
      harga_sewa: '',
      stok: '',
      deskripsi: '',
      foto: null, // Use null to represent the file
    });

    // state validation
    const validation = ref([]);

    // vue router
    const router = useRouter();

// method store
function store() {
  const formData = new FormData();
  formData.append('nama_barang', post.nama_barang);
  formData.append('harga_sewa', post.harga_sewa);
  formData.append('stok', post.stok);
  formData.append('deskripsi', post.deskripsi);
  formData.append('foto', post.foto);

  axios.post('http://localhost:8000/api/product', formData)
    .then(() => {
      // redirect to product index
      router.push({ path: '/produkadmin' });
    })
    .catch(error => {
      // assign validation state with error
      validation.value = error.response.data;
    });
}


    function handleFileUpload(event) {
      const file = event.target.files[0];

      if (file) {
        // You can store the file object in the post data or perform other actions
        post.foto = file;
      }
    }

    return {
      post,
      validation,
      router,
      store,
      handleFileUpload
    };
  }
};
</script>


    
<style scoped>
/* Your scoped styles here */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    color: #333;
}

form {
    margin-top: 20px;
}

label {
    display: block;
    margin-bottom: 8px;
    color: #333;
}

input, textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-sizing: border-box;
    font-size: 16px;
}

textarea {
    resize: vertical;
}

.btn-tambah {
  background-color: #4CAF50; 
  color: white;
}

.btn-batal {
  background-color: #3498db; 
  color: white;
}

.btn-batal:hover {
  background-color: #2980b9; 
}

</style>
    