<!-- SummernoteEditor.vue -->
<template>
  <div class="summernote-editor"></div>
</template>

<script setup>
const $ = window.jQuery;
import { onMounted, onUnmounted, ref } from 'vue';
const editorContent = ref('');

onMounted(() => {
  $('.summernote-editor').summernote({
    callbacks: {
      onChange: function(contents) {
        editorContent.value = contents;
        emit('content-updated', editorContent.value);
      }
    }
  });
});

onUnmounted(() => {
  $('.summernote-editor').summernote('destroy');
});
</script>

<style scoped>
.summernote-editor {
  height: 300px; /* Example height */
}
</style>
