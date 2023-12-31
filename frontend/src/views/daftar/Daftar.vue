<template>
  <div class="wrapper">
    <div class="login-box">
      <form @submit.prevent="registerUser">
        <h2>Buat Akun</h2>
        <div class="input-box">
          <span class="icon">
            <ion-icon name="person"></ion-icon>
          </span>
          <input type="text" v-model="username" required />
          <label>Username</label>
        </div>
        <div class="input-box">
          <span class="icon">
            <ion-icon name="person"></ion-icon>
          </span>
          <input type="text" v-model="email" required />
          <label>Email</label>
        </div>
        <div class="input-box">
          <span class="icon">
            <ion-icon name="lock-closed"></ion-icon>
          </span>
          <input type="password" v-model="password" required />
          <label>Password</label>
        </div>
        <button type="submit">Daftar</button> 
        <br><br>
        <button @click="cancelLogin">Batal</button>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      username: '',
      email: '',
      password: '',
    };
  },
  methods: {
    async registerUser() {
      try {
        const response = await this.$http.post('/registrasi', {
          username: this.username,
          email: this.email,
          password: this.password,
        });

        console.log(response.data);
      } catch (error) {
        console.error(error.response.data);
      }
      this.$router.push('/');
    },
    cancelLogin() {
      this.$router.go(-1);
    },
  },
  head() {
    return {
      script: [
        { src: 'https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js' },
        { src: 'https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js' },
      ],
    };
  },
};
</script>

<style scoped>
  /* Import the external CSS file */
  @import './style.css';
</style>