<template>
  <Nav></Nav>
  <router-view></router-view>
</template>


<script>
import Nav from './components/common/Nav.vue'

export default {
  name:'App',
  components:{
    Nav,
  }
}
</script>

<style>

</style>
