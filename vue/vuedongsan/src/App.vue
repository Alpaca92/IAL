<template>
  <div>
    <div class="menu">
      <a v-for="gnb in gnbs" :key="gnb">
        {{ gnb }}
      </a>
    </div>
    <button class="sort-btn btn" @click="priceSort">낮은 가격 순 정렬</button>
    <button class="sortback-btn btn" @click="sortBack">처음 순서로 정렬</button>
    <Card
      :product="product"
      v-for="product in products"
      :key="product.id"
      @open-modal="
        showModal = true;
        productIndex = $event;
      "
    ></Card>
    <Modal
      :products="products"
      :showModal="showModal"
      :productIndex="productIndex"
      @close-modal="showModal = false"
    >
    </Modal>
  </div>
</template>

<script>
import roomDatas from "./data/post";
import Card from "./components/Card";
import Modal from "./components/Modal";

export default {
  name: "App",
  data() {
    return {
      gnbs: ["Home", "Products", "About"],
      originalProducts: [...roomDatas],
      products: roomDatas,
      showModal: false,
      productIndex: 0,
    };
  },
  components: {
    Card,
    Modal,
  },
  methods: {
    priceSort() {
      this.products.sort((a, b) => {
        return a.price - b.price
      })
    },
    sortBack() {
      this.products = [...this.originalProducts]
    },
  },
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

.title {
  cursor: pointer;
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

.btn {
  margin: 20px 10px;
}
</style>
