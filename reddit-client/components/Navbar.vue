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
        <nuxt-link class="font-bold" to="#"> /{{ $auth.user.username }} </nuxt-link>
        <nuxt-link  class="text-xs text-gray-700" to="/settings">
          (settings)
        </nuxt-link>
        <span class="font-thin">|</span>
        <nuxt-link to="/notifications"> Notifications (14) </nuxt-link>
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
