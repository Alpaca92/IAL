<template>
  <div style="padding: 10px">
    <h4>팔로워</h4>
    <input placeholder="🔍" />
    <div class="post-header" v-for="follower in followers" :key="follower">
      <div class="profile" :style="`background-image: url(${follower.image})`"></div>
      <span class="profile-name">{{ follower.name }}</span>
    </div>
  </div>
</template>

<script>
import { onMounted, ref } from "vue";
import axios from "axios";

export default {
  name: "MyPage",
  setup() {
    const followers = ref([]);

    onMounted(() => {
      axios.get("/follower.json").then((result) => {
        followers.value = result.data;
      });
    });

    return { followers };
  },
};
</script>

<style></style>
