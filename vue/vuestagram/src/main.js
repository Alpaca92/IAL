import { createApp } from "vue";
import store from "./store";
import mitt from "mitt";
import App from "./App.vue";
import './registerServiceWorker'

const emitter = mitt();
const app = createApp(App);

app.config.globalProperties.emitter = emitter;
app.use(store).mount("#app");
