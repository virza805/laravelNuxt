<template>
  <div>
    <h1 class="font-semibold uppercase text-primaryDark">Settings</h1>
    <form
    @submit.prevent="handleSaveProfile"
    class="p-5 my-5 bg-gray-50">
      <form-input
      placeholder="Username"
      v-model="profile.username"
      label="Username"
      :helperText="errorMsg('username')"
      :hasError="hasError('username')"
       />
      <form-input
      v-model="profile.email"
      placeholder="Email"
      label="Email"
      :helperText="errorMsg('email')"
      :hasError="hasError('email')"
       />
      <form-button :loading="loading_profile">Update Profile</form-button>
    </form>

    <form
    @submit.prevent="handleUpdatePassword"
    class="p-5 my-5 bg-gray-50">
      <form-input
        name="current_password"
        placeholder="Current password"
        label="Current password"
        type="password"
        v-model="pass.current_password"
      :helperText="errorMsg('current_password')"
      :hasError="hasError('current_password')"
      />
      <form-input
        name="password"
        placeholder="Password"
        label="New password"
        type="password"
        v-model="pass.password"
      :helperText="errorMsg('password')"
      :hasError="hasError('password')"
      />
      <form-input
        name="password_confirmation"
        placeholder="Confirm new password"
        label="Confirm password"
        type="password"
        v-model="pass.password_confirmation"
      :helperText="errorMsg('password_confirmation')"
      :hasError="hasError('password_confirmation')"
      />
      <form-button :loading="loading_password">Update password</form-button>
    </form>
  </div>
</template>

<script>
import form from "~/mixins/form";
export default {
  // middleware: "authenticated", // alradey acha ti
  head: {
    title: "Setting",
  },
  middleware: ["auth"],
  mixins: [form],
  data() {
    return {
      profile: {
        username: this.$auth.user.username.split("u/")[1],
        email: this.$auth.user.email,
      },
      pass: {
        password: "",
        password_confirmation: "",
        current_password: "",
      },
      loading_profile: false,
      loading_password: false,
    };
  },
  methods: {
    async  handleSaveProfile() {
      try {
        this.errors = {};
        this.loading_profile = true;
        await this.$axios.$put("/api/auth/update-profile", this.profile);
        this.loading_profile = false;
        // toast massage show

          this.$store.commit("toast/fire", {
            text: "Successfully update you profile. Thanks",
          });

        await this.$auth.fetchUser();
      } catch (error) {
        this.loading_profile = true;
        this.errors = error.response.data.errors;

        // toast massage show
          this.$store.commit("toast/fire", {
            text: error.response.data.message,
            type: "error",
          });
        this.loading_profile = false;

      }
    },
    async handleUpdatePassword() {
      try {
        this.errors = {};
        this.loading_password = true;
        await this.$axios.$put("/api/auth/update-password", this.pass);


      this.$auth.logout();
      // toast massage show

          this.$store.commit("toast/fire", {
            text: "Successfully update you password. Please login again",
          });
this.loading_password = false;

      } catch (error) {
        this.loading_password = true;
        this.errors = error.response.data.errors;

        // toast massage show
          this.$store.commit("toast/fire", {
            text: error.response.data.message,
            type: "error",
          });
        this.loading_password = false;

      }
    },
  },
};
</script>

<style>

</style>
