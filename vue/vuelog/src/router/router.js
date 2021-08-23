import { createWebHistory, createRouter } from "vue-router";

const load = (component) => import(`../components/${component}.vue`)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: load('Home')
  },
  {
    path: '/list',
    name: 'List',
    component: load('List')
  },
  {
    path: '/detail/:id',
    name: 'Detail',
    component: load('Detail')
  }
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;