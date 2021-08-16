<template>
  <div class="no-discount">
    <h4>지금 결제하면 {{ discountRate }}% 할인 안해줌 ㅋㅋ</h4>
  </div>
</template>

<script>
export default {
  name: "Discount",
  data() {
    return {
      discountRate : 20
    }
  }
};
</script>

<style>
  .no-discount {
    background: #eee;
    padding: 10px;
    margin: 10px;
    border-radius: 5px;
  }
</style>
