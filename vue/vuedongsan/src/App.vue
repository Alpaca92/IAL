<template>
  <div>
    <div class="menu">
      <a v-for="gnb in gnbs" :key="gnb">
        {{ gnb }}
      </a>
    </div>
    <div v-for="product in products" :key="product.id">
      <img :src="product.image" alt="" style="width: 100%;">
      <h4>
        name : {{ product.title }}
      </h4>
      <p>
        price : {{ product.price }}원
      </p>
    </div>
  </div>
</template>

<script>
import roomDatas from "./data/post.js";

export default {
  name: "App",
  data() {
    return {
      gnbs: ["Home", "Products", "About"],
      products: roomDatas,
    };
  },
  components: {},
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

.menu {
  background: darkslateblue;
  padding: 15px;
  border-radius: 5px;
}

.menu a {
  color: #fff;
  padding: 10px;
}

.room-img {
  width: 100%;
  margin-top: 40px;
}

.black-bg {
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
  position: fixed;
  left: 0;
  top: 0;
  padding: 20px;
  box-sizing: border-box;
}

.white-bg {
  width: 100%;
  background: #fff;
  border-radius: 10px;
  padding: 20px;
  box-sizing: border-box;
}
</style>
