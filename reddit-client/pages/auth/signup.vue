<template>
  <div>
    <h2 class="font-semibold uppercase text-primaryDark my-4">Create a new account</h2>
<!-- <pre>
  {{errors}}
</pre> -->
    <form action="#" @submit.prevent="handleSubmit" class="mt-6">
      <!-- <h3>{{ form.username }}</h3> -->
      <form-input
        label="User Name"
        :helperText="errorMsg('username')"
        :hasError="hasError('username')"
        v-model="form.username"
       />

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
      <form-input
        type="password"
        label="Confirm Password"
        :helperText="errorMsg('password_confirmation')"
        :hasError="hasError('password_confirmation')"
        v-model="form.password_confirmation"
        class="mb-10 "
       />

       <form-button :loading = "loading">SignUp</form-button>
    </form>
  </div>
</template>

<script>
// import Input from "~/components/form/input.vue";
import form from "~/mixins/form";
export default {
    // components: { Input }
    head: {
      title: "Signup",
    },
    mixins: [form],
    data() {
      return {
        form: {
          username: "",
          email: "",
          password: "",
          password_confirmation: ""
        },
        errors: {},
        loading: false,
      }
    },
    methods: {
      async handleSubmit(){
        // api call

        try {

          this.loading = true;
          const res = await this.$axios.$post('/api/auth/register', this.form);
          this.loading = false;

          // toast massage show

          this.$store.commit("toast/fire", {
            text: "Successfully created a new account. please check your email to verify your account.",
          });

          this.$router.push("/");

          console.log(res);

        } catch (e) {

          this.$store.commit("toast/fire", {
            text: e.response.data.message,
            type: "error"
          });

          this.errors = e.response.data?.errors || {};
          this.loading = false;

        }

        // this.$axios.$post('/api/auth/register', this.form).then((res) => {
        //   this.$router.push("/");
        // })
        // .catch((e) => {
        //   console.log(e.response.data);
        //   this.errors = e.response.data?.errors || {};
        // });
      },

    },
}
</script>

<style>

</style>
