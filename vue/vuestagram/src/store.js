import { createStore } from "vuex";

const store = createStore({
  state() {
    return {
      name: "yim",
      age: 20,
    };
  },
  mutations: {
    changeName(state) {
      state.name = "kim";
    },
  },
});

export default store;
