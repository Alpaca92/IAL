<template>
  <div class="modal black-bg" v-if="showModal">
    <div class="inner_modal white-bg">
      <h4>{{ products[productIndex].title }}</h4>
      <img :src="products[productIndex].image" alt="" style="width: 100%" />
      <p>설명<br />{{ products[productIndex].content }}</p>
      <p>가격 : {{ products[productIndex].price }}원</p>
      <!-- <button @click="showModal = false">❌</button> -->
    </div>
  </div>
</template>

<script>
export default {
  name: "Modal",
  props: {
    products: Array,
    productIndex: Number,
    showModal: Boolean
  }
};
</script>

<style>
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
