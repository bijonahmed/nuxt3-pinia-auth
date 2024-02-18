// plugins/lazyNuxtLinkAdmin.js

import Vue from 'vue'
import LazyNuxtLinkAdmin from '@/components/LazyNuxtLinkAdmin.vue'

Vue.component('LazyNuxtLinkAdmin', {
  extends: LazyNuxtLinkAdmin,
  props: {
    to: {
      type: String,
      required: true,
      validator: function (value) {
        return value.startsWith('/')
      }
    }
  },
  computed: {
    adminRoute() {
      return '/admin' + this.to
    }
  }
})
