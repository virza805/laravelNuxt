<template>
  <div>
    <h2 class="font-semibold uppercase text-primaryDark my-4">Login to your account</h2>
<a href=""></a>
    <form action="#" @submit.prevent="handleSubmit" class="mt-6">

      <form-input
        type="email"
        label="Email Address"
        :helperText="errorMsg('email')"
        :hasError="hasError('email')"
        v-model="form.email"
       />

      <form-input
        type="password"
        label="Password"
        :helperText="errorMsg('password')"
        :hasError="hasError('password')"
        v-model="form.password"
       />

       <form-button :loading = "loading">Login</form-button>
    </form>
  </div>
</template>

<script>
// import Input from "~/components/form/input.vue";
import form from "~/mixins/form";
export default {
    // components: { Input }
    head: {
      title: "Login",
    },
    mixins: [form],
    middleware: "guest",
    data() {
      return {
        form: {
          email: "",
          password: ""
        },
        errors: {},
        loading: false,
      }
    },
    methods: {
      async handleSubmit(){
        // api call

        try {

        this.errors = {};
          this.loading = true;
          await  this.$auth.loginWith("local", { data: this.form });
          this.loading = false;

          // toast massage show

          this.$store.commit("toast/fire", {
            text: "Successfully login you account.Thanks",
          });

          // this.$router.push("/");

          console.log(res);

        } catch (e) {
          this.errors = e.response.data?.errors || {};

          this.$store.commit("toast/fire", {
            text: e.response.data.message,
            type: "error",
          });
          this.loading = false;

        }

      },

    },
};
</script>

<style>

</style>
