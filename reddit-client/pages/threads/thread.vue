<template>
  <div v-bind="$attrs">
    <div class="thread">
      <div class="thread__votes">
        <button
          class="arrow arrow--up-vote"
          :class="{ 'arrow--up-vote--voted': true }"
        ></button>

        <div class="text-sm font-bold text-gray-600">14</div>

        <button
          class="arrow arrow--down-vote"
          :class="{
            'arrow--down-vote--voted': false
          }"
        ></button>
      </div>

      <div class="thread__inner">
        <div class="thread__icon">
          <a
            href="#"
            class="block logos"
            :class="{
              'logos--logo-link': true,
              'logos--logo-post': false
            }"
          ></a>
        </div>

        <div>
          <a href="#" class="mt-0 text-xl">
            Lorem ipsum dolor sit amet.
          </a>
          <a href="#" target="_blank" class="text-sm text-gray-500">
            (google.com)
          </a>

          <div class="flex">
            <button
              class="mr-2 icons icons--icon-post"
              @click="expanded = !expanded"
            ></button>

            <div>
              <p class="text-sm text-gray-600">
                submitted 5 minutes ago by
                <a href="#" class="font-bold text-gray-600">
                  u/rayhan
                </a>
              </p>

              <div>
                <span class="mr-3 text-sm font-bold text-gray-600">
                  74 comments
                </span>
                <button
                  class="mr-3 text-sm font-bold text-gray-600 hover:underline"
                >
                  Share
                </button>
                <a class="text-sm font-bold text-red-600 cursor-pointer">
                  Delete
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      isLiked: false,
      isUnliked: true,
      expanded: false
    };
  }
};
</script>
