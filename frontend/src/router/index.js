import { createRouter, createWebHistory } from 'vue-router';
import Home from '../views/Home.vue';
import Daftar from '../views/daftar/Daftar.vue';
import Login from '../views/daftar/Login.vue';
import Product from '../views/tampilan/Product.vue';
import Keranjang from '../views/tampilan/Keranjang.vue';
import Dtenda1 from '../views/tampilan/dtenda/Dtenda1.vue';
import Dtenda2 from '../views/tampilan/dtenda/Dtenda2.vue';
import Djaket1 from '../views/tampilan/djaket/Djaket1.vue';
import Dmatras1 from '../views/tampilan/dmatras/Dmatras1.vue';
import Dpole1 from '../views/tampilan/dpole/Dpole1.vue';
import Psepatu from '../views/tampilan/dsepatu/Psepatu.vue';
import Dsepatu1 from '../views/tampilan/dsepatu/Dsepatu1.vue';
import Dsepatu2 from '../views/tampilan/dsepatu/Dsepatu2.vue';
import Dsepatu3 from '../views/tampilan/dsepatu/Dsepatu3.vue';
import Ptas from '../views/tampilan/dtas/Ptas.vue';
import Dtas1 from '../views/tampilan/dtas/Dtas1.vue';
import Dtas2 from '../views/tampilan/dtas/Dtas2.vue';
import Dtas3 from '../views/tampilan/dtas/Dtas3.vue';
import Dgas1 from '../views/tampilan/dgas/Dgas1.vue';
import Pkompor from '../views/tampilan/dkompor/Pkompor.vue';
import Dkompor1 from '../views/tampilan/dkompor/Dkompor1.vue';
import Dkompor2 from '../views/tampilan/dkompor/Dkompor2.vue';
import Dkompor3 from '../views/tampilan/dkompor/Dkompor3.vue';
import Psb from '../views/tampilan/dsb/Psb.vue';
import Dsb1 from '../views/tampilan/dsb/Dsb1.vue';
import Dsb2 from '../views/tampilan/dsb/Dsb2.vue';
import Dsb3 from '../views/tampilan/dsb/Dsb3.vue';
import Loginadmin from '../views/admin/login/Loginadmin.vue';
import Dashboard from '../views/admin/Dashboard.vue';
import Produkadmin from '../views/admin/Produkadmin.vue';
import Tambahproduk from '../views/admin/Tambahproduk.vue';
import Detailproduk from '../views/admin/Detailproduk.vue';
import Editproduk from '../views/admin/Editproduk.vue';
import Detailbarang from '../views/tampilan/Detailbarang.vue';

const routes = [
  { path: '/', component: Home },
  { path: '/daftar', component: Daftar },
  { path: '/login', component: Login },
  { path: '/product', component: Product },
  { path: '/keranjang', component: Keranjang },
  { path: '/dtenda1', component: Dtenda1 },
  { path: '/dtenda2', component: Dtenda2 },
  { path: '/djaket1', component: Djaket1 },
  { path: '/dmatras1', component: Dmatras1 },
  { path: '/dpole1', component: Dpole1 },
  { path: '/psepatu', component: Psepatu },
  { path: '/dsepatu1', component: Dsepatu1 },
  { path: '/dsepatu2', component: Dsepatu2 },
  { path: '/dsepatu3', component: Dsepatu3 },
  { path: '/ptas', component: Ptas },
  { path: '/dtas1', component: Dtas1 },
  { path: '/dtas2', component: Dtas2 },
  { path: '/dtas3', component: Dtas3 },
  { path: '/dgas1', component: Dgas1 },
  { path: '/pkompor', component: Pkompor },
  { path: '/dkompor1', component: Dkompor1 },
  { path: '/dkompor2', component: Dkompor2 },
  { path: '/dkompor3', component: Dkompor3 },
  { path: '/psb', component: Psb },
  { path: '/dsb1', component: Dsb1 },
  { path: '/dsb2', component: Dsb2 },
  { path: '/dsb3', component: Dsb3 },
  { path: '/loginadmin', component: Loginadmin },
  { path: '/dashboard', component: Dashboard },
  { path: '/produkadmin', component: Produkadmin },
  { path: '/tambahproduk', component: Tambahproduk },
  { path: '/detailproduk/:id', name: 'detailproduk', component: Detailproduk },
  { path: '/editproduk/:id', name: "product.edit", component: Editproduk },
  { path: '/detailbarang/:id', name: "detailbarang", component: Detailbarang },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
