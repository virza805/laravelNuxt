<template>
<div>
  <Toast />
  <!-- <pre>{{ $auth.user }}</pre> -->
  <nav class="navbar">
    <div class="container navbar__inner">
      <!-- <nuxt-link class="w-16" to="/"><img src="~/static/images/logo.png" alt=""></nuxt-link> -->
      <nuxt-link class="navbar__logo" to="/"></nuxt-link>

      <div class="navbar__user-menu" v-if="$auth.loggedIn">
        Howdy
        <a class="font-bold" href="#"> /{{ $auth.user.username }} </a>
        <a class="text-xs text-gray-700" href="#">
          (settings)
        </a>
        <span class="font-thin">|</span>
        <a href="#" to="/notifications"> Notifications (14) </a>
        <span class="font-thin">|</span>
        <button @click="handleLogout()" class="cursor-pointer link">Logout</button>
      </div>

      <div class="navbar__user-menu" v-else>
        Want to join?
        <nuxt-link to="/auth/login" class="link">Login</nuxt-link>
        or
        <NuxtLink to="/auth/signup" class="link">Signup</NuxtLink>
        in a seconds.
      </div>
    </div>
  </nav>
</div>
</template>

<script>
import Toast from "./toast.vue";
export default {
    // data() {
    //     return {
    //         isloggedIn: false
    //     };
    // },
    components: { Toast },
    methods: {
      handleLogout(){
        this.$auth.logout();
      },
    },
};
</script>
