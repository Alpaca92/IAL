<template>
  <div>
    <Post :postData="postData" v-for="postData in postDatas" :key="postData" />
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
