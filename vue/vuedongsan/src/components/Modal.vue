<template>
  <div class="modal black-bg" v-if="showModal">
    <div class="inner_modal white-bg">
      <Discount></Discount>
      <h4>{{ products[productIndex].title }}</h4>
      <img :src="products[productIndex].image" alt="" style="width: 100%" />
      <p>설명<br />{{ products[productIndex].content }}</p>
      <p>가격 : {{ months * products[productIndex].price }}원</p>
      <input placeholder="개월수를 입력하세요" v-model.number="months" />
      <button @click="$emit('close-modal')">❌</button>
    </div>
  </div>
</template>

<script>
import Discount from "./Discount.vue";

export default {
  name: "Modal",
  props: {
    products: Array,
    productIndex: Number,
    showModal: Boolean,
  },
  components: {
    Discount,
  },
  data() {
    return {
      months: 3,
    };
  },
  watch: {
    months(val) {
      if (typeof val !== "number") {
        alert("숫자를 입력해주세요.");

        return (this.months = 3);
      }
    },
  },
  beforeUpdate() {
    if (this.months <= 2) {
      alert("최소 3개월 이상 빌려야 합니다.");
      this.months = 3;
    }
  },
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

input {
  display: block;
  margin: 0 auto;
}
</style>
