<template>
  <div>
    <Navbar />
    <div class="container reddit-layout">
      <main class="reddit-layout__content">
        <Nuxt />
      </main>
      <aside class="reddit-layout__sidebar">
        <Sidebar />
      </aside>
    </div>
    <Footer />
  </div>
</template>

<script>
// import Navbar from "~/components/Navbar.vue";
export default {
    // components: { Navbar }
}
</script>

<style>

</style>
