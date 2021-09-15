<template>
  <div class="header">
    <ul class="header-button-left">
      <li @click="step = 0">Cancel</li>
    </ul>
    <ul class="header-button-right">
      <li v-if="step === 1" @click="step++">Next</li>
      <li v-if="step === 2" @click="publish">Post</li>
    </ul>
    <img src="./assets/alpaca.png" class="logo" />
  </div>

  <Container
    @write="write = $event"
    :postDatas="postDatas"
    :step="step"
    :imageUrl="imageUrl"
  />
  <button style="margin-bottom: 40px" @click="more">more</button>

  <div class="footer">
    <ul class="footer-button-plus">
      <input type="file" @change="upload" id="file" class="inputfile" />
      <label for="file" class="input-plus">+</label>
    </ul>
  </div>
</template>

<script>
import Container from "./components/Container.vue";
import postDatas from "./assets/db";
import axios from "axios";

export default {
  name: "App",
  components: {
    Container,
  },
  data() {
    return {
      postDatas,
      clickedBtn: 0,
      step: 0,
      imageUrl: null,
    };
  },
  methods: {
    more() {
      axios
        .get(`https://codingapple1.github.io/vue/more${this.clickedBtn}.json`)
        .then((result) => {
          this.clickedBtn++;

          return this.postDatas.push(result.data);
        })
        .catch((error) => console.log(`Error: ${error}`));
    },
    upload(event) {
      const files = event.target.files;

      this.imageUrl = URL.createObjectURL(files[0]);
      this.step = 1;
    },
    publish() {
      const newPost = {
        name: "Kim Hyun",
        userImage: "https://placeimg.com/100/100/arch",
        postImage: this.imageUrl,
        likes: 36,
        date: "May 15",
        liked: false,
        content: this.write,
        filter: "perpetua",
      };

      this.postDatas.unshift(newPost);
      this.step = 0;
    },
  },
};
</script>

<style>
body {
  margin: 0;
}
ul {
  padding: 5px;
  list-style-type: none;
}
.logo {
  width: 22px;
  margin: auto;
  display: block;
  position: absolute;
  left: 0;
  right: 0;
  top: 13px;
}
.header {
  width: 100%;
  height: 40px;
  background-color: white;
  padding-bottom: 8px;
  position: sticky;
  top: 0;
}
.header-button-left {
  color: skyblue;
  float: left;
  width: 50px;
  padding-left: 20px;
  cursor: pointer;
  margin-top: 10px;
}
.header-button-right {
  color: skyblue;
  float: right;
  width: 50px;
  cursor: pointer;
  margin-top: 10px;
}
.footer {
  width: 100%;
  position: sticky;
  bottom: 0;
  padding-bottom: 10px;
  background-color: white;
}
.footer-button-plus {
  width: 80px;
  margin: auto;
  text-align: center;
  cursor: pointer;
  font-size: 24px;
  padding-top: 12px;
}
.sample-box {
  width: 100%;
  height: 600px;
  background-color: bisque;
}
.inputfile {
  display: none;
}
.input-plus {
  cursor: pointer;
}
#app {
  box-sizing: border-box;
  font-family: "consolas";
  margin-top: 60px;
  width: 100%;
  max-width: 460px;
  margin: auto;
  position: relative;
  border-right: 1px solid #eee;
  border-left: 1px solid #eee;
}
</style>
