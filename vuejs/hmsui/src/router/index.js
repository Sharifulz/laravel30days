import { createRouter, createWebHistory } from "vue-router";
import Login from "../components/users/Login.vue";
import Register from "../components/users/Register.vue";
import Welcome from "../components/Welcome.vue";
import Profile from "../components/users/Profile.vue";

const routes = [
  {
    path: "/",
    component: Welcome,
  },
  {
    path: "/register",
    component: Register,
  },
  {
    path: "/login",
    component: Login,
  },
  {
    path: "/profile",
    component: Profile,
  },
];

const router = createRouter({
  mode:'history',
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
