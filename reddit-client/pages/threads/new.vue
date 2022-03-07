<template>
  <div>
    <h2>Create New threads</h2>
  </div>
</template>

<script>
export default {
  head: {
    title: "newThreads",
  },
  middleware: ['auth', 'email-verified'],
}
</script>

<style>

</style>
