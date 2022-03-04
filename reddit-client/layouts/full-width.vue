<template>
  <div>
    <Navbar />
    <main class=" container my-10 mx-auto">
      <Nuxt />
    </main>
    <Footer />
  </div>
</template>

<script>
import Footer from "~/components/Footer.vue";
// import Navbar from "~/components/Navbar.vue";
export default {
    components: { Footer }
}
</script>

<style>

</style>
