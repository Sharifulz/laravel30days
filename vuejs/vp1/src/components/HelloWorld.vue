<template>
  <div class="hello">
    <h1>App Name: {{ appName }}. Version : {{ version }}</h1>

     <div class="row">
      <div v-for="(info, index) in infos" :key="index">
        <h2>{{info.name}}</h2>
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
      loading: false,
    };
  },
  mounted() {
    this.getInfo();
  },
  methods: {
    getInfo() {
      this.loading = false;

      axios
        .get("http://localhost:8000/api/info")
        .then((response) => {
          this.infos = response.data;
          console.log(response.data);
        })
        .catch((error) => {
          console.log(error);
          this.loading = false;
        });
    },
  },
  name: "HelloWorld",
  props: {
    appName: String,
    version: String,
  },
};
</script>

<style scoped>
</style>
