<template>
  <div class="mb-2 input-component">
    <label>
      <span class="font-bold text-gray-600">
        {{ label }}
      </span>
      <input
        :type="type"

        :class="{
          'border-red-500': hasError,
        }"
        @change="$emit('input', $event.target.value)"
        :value="value"
        v-bind="$attrs"
        class="block w-full px-2 py-1 text-xl border focus:outline-none"
      />
      <p
        :class="{
          'border-red-500': hasError,
          'border-green-700': !hasError,
        }"
        class="text-sm"
        >{{ helperText }}</p>
    </label>
  </div>
</template>

<script>
export default {
  inheritAttrs: false,

  props: {
    label: {
      type: String,
      require: true,
    },
    // name: {
    //   type: String,
    //   require: true,
    // },
    helperText: {
      type: String,
      require: false,
    },
    hasError: {
      type: Boolean,
      require: false,
    },
    value: {
      type: String,
      require: false,
    },
    type: {
      type: String,
      default: 'text',
    },
  },

}
</script>

<style>

</style>
