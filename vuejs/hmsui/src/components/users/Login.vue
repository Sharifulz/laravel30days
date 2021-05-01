<template>
<form @submit.prevent="handleSubmit">
    <div class="row mt-5">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping">@</span>
                <input type="text" v-model="username" class="form-control" placeholder="Username" />
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row mt-2">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping">@</span>
                <input type="password" v-model="password" class="form-control" id="inputPassword" placeholder="Password">
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row mt-2">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="input-group">
                <input type="submit" class="form-control btn btn-danger" id="submitLogin" value="Login"> </div>
        </div>
        <div class="col-md-4"></div>
    </div>
</form>
</template>

<script>
import axios from "axios";
export default {
    props: {},
    name: "Login",
    data() {
        return {
            username: '',
            password: ''
        }
    },
    methods: {
       async handleSubmit() {
            const data = {
                email: this.username,
                password: this.password
            }

         const response = await axios.post('/api/auth/login',data);

         console.log('respobse', response.data.token);

        localStorage.setItem('token', response.data.token);
        this.$router.push('/profile');
  
        }
    }
};
</script>

<style scoped>
</style>
