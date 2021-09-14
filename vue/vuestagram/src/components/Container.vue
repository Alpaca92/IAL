<template>
  <div>
    <Post :postDatas="postDatas" />
  </div>
</template>

<script>
import Post from './Post.vue'

export default {
  name: "Container",
  components: {
    Post,
  },
  props: {
    postDatas: Array,
  }
};
</script>

<style></style>
