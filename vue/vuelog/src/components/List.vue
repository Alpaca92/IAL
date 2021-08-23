<template>
  <div class="post" v-for="post in blog" :key="post.number">
    <router-link :to="{ name: 'Detail', params: { id: post.number }}" class="post__title">{{ post.title }}</router-link>
  </div>
</template>

<script>
export default {
  name: "List",
  props: {
    blog: Array,
  },
};
</script>

<style>
  .post {
    padding: 20px;
  }

  .post__title {
    font-weight: 700;
    display: block;
    text-decoration: none;
    color: inherit;
  }
</style>
