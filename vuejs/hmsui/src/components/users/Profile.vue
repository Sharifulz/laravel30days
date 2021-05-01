<template>
  <h1>Welcome, Profile Page</h1>
  {{ name }}
</template>

<script>
import axios from 'axios';
export default {
  data(){
    return{
      name:''
    }
  },
  props: {
  },
  name: "Profile",
  async created(){
    const response = await axios.get('/api/auth/profile');
    this.name= response.data.name;
    console.log(response);
  }
};
</script>

<style scoped>
</style>