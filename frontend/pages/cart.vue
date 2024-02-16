<template>
    <title>Cart</title>
    <!-- <AdminLayout> -->

        <CartCount/>
        
    <div class="max-w-[750px] mx-auto pb-24">
        <div class="bg-white">
            <div class="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
                <h2 class="text-2xl font-bold tracking-tight text-gray-900">Customers also purchased</h2>
                <div class="mt-6 row row-cols-1 row-cols-sm-2 row-cols-lg-4 g-4">
                    <div v-for="(product, index) in products" :key="index" class="col">
                        <div class="card border-0 shadow-sm">
                            <div class="aspect-ratio ratio-1x1">
                                <img :src="product.thumbnail" alt="Product image" class="card-img-top img-fluid rounded-md" style="height:150px;width:150%;">
                            </div>
                            <div class="card-body">
                                <h3 class="card-title"><a href="#" class="text-decoration-none text-dark">{{
                                    product?.title }}</a></h3>
                                <p class="card-text">$ {{ product.price }}</p>
                                <button class="btn btn-primary btn-sm" @click.prevent="addToCart(product.id)">Add to
                                    cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- </AdminLayout> -->
</template>

<script setup>

import AdminLayout from '~~/layouts/AdminLayout.vue';
import { useCartStore } from '~~/stores/cart';
import { useProductStore } from '~~/stores/product';
import { storeToRefs } from 'pinia';
const cartStore = useCartStore()
const productStore = useProductStore()
const { products } = storeToRefs(productStore)
//console.log("products from index " + products);

const addToCart = async (productID) => {
    try {
        await cartStore.addToCart(productID);
    } catch (error) { }
}

 
onMounted(async () => {
    try {
        await productStore.getProduct()
    } catch (error) {
        console.log(error)
    }
})
</script>
