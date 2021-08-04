<template>
  <div class="menu">
    <a v-for="gnb in gnbs" :key="gnb">
      {{ gnb }}
    </a>
  </div>

  <div v-for="product in products" :key="product">
    <p>{{ product.name }}</p>
    <p>{{ product.price }}</p>
    <button @click="product.scam += 1">⚠허위매물신고⚠</button>
    <span>신고수 : {{ product.scam }}</span>
  </div>
</template>

<script>
export default {
  name: "App",
  data() {
    return {
      gnbs: ["Home", "Products", "About"],
      products: [
        { name: "역삼동 원룸", price: 20, scam:0 },
        { name: "역사동 원룸", price: 201, scam:0 },
        { name: "역오동 원룸", price: 203, scam:0 },
      ],
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
</style>
