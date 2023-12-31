import { createStore } from 'vuex';

export default createStore({
  state: {
    username: '',
    isLoggedIn: false,
  },
  mutations: {
    setUser(state, username) {
      state.username = username;
    },
    setAdmin(state, username) {
      state.username = username;
    },
    setLoginStatus(state, status) {
      state.isLoggedIn = status;
    },
  },
});
