<template>
  <div class="post">
    <h4 to="/detail" class="post__title">{{ blog[$route.params.id].title }}</h4>
    <time class="post__date">{{ blog[$route.params.id].date }}</time>
    <p class="post__content">{{ blog[$route.params.id].content }}</p>
  </div>
</template>

<script>
export default {
  name: "Detail",
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

  .post__date {
    font-size: 12px;
  }

  .post__content {
    margin-top: 15px;
    font-size: 14px;
  }
</style>
