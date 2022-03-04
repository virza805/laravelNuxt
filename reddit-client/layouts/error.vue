<template>
  <div class="text-center my-12">
    <div>
      <img class="mx-auto" src="~/static/images/404.png" alt="" />
    </div>
    <div>
      <h2 class="text-6xl font-bold ">{{ error.statusCode }}</h2>
      <p class="text-lg text-red-500 my-4 ">{{ error.message }}</p>
      <h3 class="text-2xl ">
        {{ error.path }}
      </h3>
    </div>
  </div>
</template>

<script>
export default {

  layout: "full-width",
  props:["error"]

}
</script>

<style>

</style>
