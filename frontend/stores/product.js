import { defineStore } from "pinia";
import axios from "~/plugins/axios";

const $axios = axios().provide.axios;

export const useProductStore = defineStore('product', {
    state: () => ({
        products: {},
        isLoading: false,
    }),
    actions: {
        async getProduct() {
            let res = await $axios.get('https://dummyjson.com/products')
            //console.log("Products" + res.data.products);
            //return false; 
            this.$state.products = res.data.products; //res.data.data.result;
        },
    },
    persist: true,
})