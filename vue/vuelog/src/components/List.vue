<template>
  <div class="post" v-for="post in blog" :key="post.number">
    <h5 class="post__title">{{ post.title }}</h5>
    <time class="post__date">{{ post.date }}</time>
    <p class="post__content">{{ post.content }}</p>
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
}

.post__date {
  font-size: 12px;
}

.post__content {
  margin-top: 15px;
  font-size: 14px;
}
</style>
