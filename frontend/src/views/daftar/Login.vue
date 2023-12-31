<template>
  <div class="wrapper">
    <div class="login-box">
      <form @submit.prevent="loginUser">
        <h2>Login</h2>
        <div class="input-box">
          <span class="icon">
            <ion-icon name="person"></ion-icon>
          </span>
          <input type="text" v-model="username" required />
          <label>Username</label>
        </div>
        <div class="input-box">
          <span class="icon">
            <ion-icon name="lock-closed"></ion-icon>
          </span>
          <input type="password" v-model="password" required />
          <label>Password</label>
        </div>
        <button type="submit">Login</button>
        <br><br>
        <button @click="cancelLogin">Batal</button>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  computed: {
    isLoggedIn() {
      return this.$store.state.isLoggedIn;
    },
  },
  methods: {
    async loginUser() {
      try {
        const response = await this.$http.post('/login', {
          username: this.username,
          password: this.password,
        });

        if (response.status === 200 && response.data.success) {
          this.$store.commit('setUser', this.username);
          this.$store.commit('setLoginStatus', true);
          this.$router.push('/');
        } else {
          alert('Username atau password salah');
        }
      } catch (error) {
        if (!error.response) {
          console.error(error);
          alert('Terjadi kesalahan jaringan. Silakan coba lagi.');
        } else {
          console.error(error.response.data);
          alert('Username atau password salah');
        }
      }
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
