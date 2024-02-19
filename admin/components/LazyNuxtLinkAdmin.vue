<template>
  <NuxtLink :to="adminRoute" v-bind="$attrs">
    <slot></slot>
  </NuxtLink>
</template>

<script>
export default {
  name: 'LazyNuxtLinkAdmin',
  inheritAttrs: false,
  props: {
    to: {
      type: String,
      required: true
    }
  },
  computed: {
    adminRoute() {
      return '/admin' + this.to
    }
  }
}
</script>
