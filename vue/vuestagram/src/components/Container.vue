<template>
  <div v-for="postData in postDatas" :key="postData">
    <Post :postData="postData" />
  </div>
</template>

<script>
import Post from "./Post.vue";

export default {
  name: "Container",
  components: {
    Post,
  },
  props: {
    postDatas: Array,
  },
};
</script>

<style></style>
