<template>
  <div>
    <form-button @click="$store.commit('toast/fire', {text: 'Heyyy..Error.', type: 'error'})">Error</form-button>
    <form-button @click="$store.commit('toast/fire', {text: 'Hi Tanvir Success...'})">Success</form-button>
    <form-button @click="$store.commit('toast/fire', {text: 'Hi information...', type: 'info'})">info.</form-button>
    <form-button @click="$store.commit('toast/fire', {text: 'Hi..Warning.', type: 'warning'})">Warning</form-button>
    <h2 class=" text-2xl text-green-600 font-semibold">Home Page</h2>
  </div>
</template>

<script>
export default {
    name: "IndexPage",
    // layout: "full-width",
    // components: { Navbar }
}
</script>
