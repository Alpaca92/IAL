import axios from "axios";
import { createStore } from "vuex";

const store = createStore({
  state() {
    return {
      likes: [0, 1, 2],
      more: {},
      name: 'kim',
      age: 12
    };
  },
  mutations: {
    setMore(state, result) {
      state.more = result;
    },
  },
  actions: {
    getData(context) {
      axios
        .get(`https://codingapple1.github.io/vue/more0.json`)
        .then((result) => context.commit("setMore", result));
    },
  },
});

export default store;
