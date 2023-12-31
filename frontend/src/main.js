import { createApp } from 'vue';
import App from './App.vue';
import axios from 'axios';
import router from './router'; 
import store from './store/store';
import 'jquery';
import 'bootstrap';

const app = createApp(App);

// Set base URL untuk Axios
axios.defaults.baseURL = 'http://localhost:8000/api';

// Gunakan Axios dalam seluruh aplikasi
app.config.globalProperties.$http = axios;

app.use(router);
app.use(store);
app.mount('#app');
