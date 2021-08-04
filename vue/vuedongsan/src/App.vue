<template>
  <div class="menu">
    <a v-for="gnb in gnbs" :key="gnb">
      {{ gnb }}
    </a>
  </div>

  <div v-for="product in products" :key="product">
    <img :src="product.imgUrl" alt="" class="room-img">
    <p>{{ product.name }}</p>
    <p>{{ product.price }}</p>
    <button @click="increase(product)">⚠허위매물신고⚠</button>
    <span>신고수 : {{ product.scam }}</span>
    <div v-if="product.modalToShow" class="black-bg" @click="product.modalToShow = !product.modalToShow">
      <div class="modal white-bg">
        모달임 ㄹㅇ ㅋㅋ
      </div>
    </div>
    <button @click="product.modalToShow = !product.modalToShow">모달 보이게해줘</button>
  </div>
</template>

<script>
export default {
  name: "App",
  data() {
    return {
      gnbs: ["Home", "Products", "About"],
      products: [
        { name: "역삼동 원룸", price: 20, scam:0, imgUrl: require("./assets/room0.jpg"), modalToShow: false },
        { name: "역사동 원룸", price: 201, scam:0, imgUrl: require("./assets/room1.jpg"), modalToShow: false },
        { name: "역오동 원룸", price: 203, scam:0, imgUrl: require("./assets/room2.jpg"), modalToShow: false },
      ],
    };
  },
  components: {},
  methods: {
    increase(obj) {
      return obj.scam++
    }
  }
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
