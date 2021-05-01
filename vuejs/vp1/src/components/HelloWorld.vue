<template>
  <div class="hello">
    <h1>App Name: {{ appName }}. Version : {{ version }}</h1>

    <h1>Registration</h1>

    <form>
      <input type="text" id="name" v-model="userInfo.name" />
      <input type="number" id="age" v-model="userInfo.age" />
      <input type="text" id="blood_group" v-model="userInfo.blood_group" />
      <button @click.prevent="submitData()">Submit</button>
    </form>

    <button @click="showUserInfos()">Show User</button>
    <button @click="clearUser()">Clear</button>
    <div class="row">
      <div v-for="(info, index) in infos" :key="index">
        <h5>{{ info.name }}, {{ info.age }}, {{ info.dob }}</h5>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      infos: [],
      userInfo: {
        name: "",
        age: 0,
        blood_group: "",
      },
    };
  },

  created() {},

  methods: {
    clearUser() {
      this.infos = [];
    },
    showUserInfos() {
      (this.infos = []),
        axios
          .get("http://localhost:8000/api/info")
          .then((response) => {
            this.infos = response.data;
            console.log(response.data);
          })
          .catch((error) => {
            console.log(error);
          });
    },
    submitData() {
      axios
        .post("http://localhost:8000/api/info", {
          name: this.userInfo.name,
          age: this.userInfo.age,
          blood_group: this.userInfo.blood_group,
          dob: "2021-01-11",
        })
        .then((response) => {
          console.log(response);
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
  name: "HelloWorld",
  //props used for component: data transfer
  props: {
    appName: String,
    version: String,
  },
};
</script>

<style scoped></style>
