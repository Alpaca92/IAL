<template>
    <img :src="product.image" alt="" style="width: 100%;" />
    <h4 class="title" @click="$emit('open-modal', product.id)">
      name : {{ product.title }}
    </h4>
    <p>price : {{ product.price }}원</p>
</template>

<script>
export default {
  name: "Card",
  props: {
    product: Object,
  }
};
</script>

<style></style>
