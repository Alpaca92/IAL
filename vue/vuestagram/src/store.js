import { createStore } from "vuex";

const store = createStore({
  state() {
    return {
      name: "yim",
      age: 20,
    };
  },
  mutations: {
    increaseAge(state, payload) {
      state.age += payload;
    },
  },
});

export default store;
