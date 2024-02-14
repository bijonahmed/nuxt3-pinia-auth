<template>
<title>Welcome to my Ecommarce</title>
<!-- <AdminLayout> -->

    <div class="container">
        <!-- Button trigger modal -->

        <hr />
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Launch demo modal
        </button>
        <hr />
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        ...sdfsdf
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                This is some text within a card body.
            </div>
        </div>
        <hr />
        <div class="alert alert-primary" role="alert">
            A simple primary alert—check it out!
        </div>
        <div class="alert alert-secondary" role="alert">
            A simple secondary alert—check it out!
        </div>
        <div class="alert alert-success" role="alert">
            A simple success alert—check it out!
        </div>
        <div class="alert alert-danger" role="alert">
            A simple danger alert—check it out!
        </div>
        <div class="alert alert-warning" role="alert">
            A simple warning alert—check it out!
        </div>
        <div class="alert alert-info" role="alert">
            A simple info alert—check it out!
        </div>
        <div class="alert alert-light" role="alert">
            A simple light alert—check it out!
        </div>
        <div class="alert alert-dark" role="alert">
            A simple dark alert—check it out!
        </div>
        <h1>BIjon</h1>
        <button type="button" class="btn btn-primary">Primary</button>
        <button type="button" class="btn btn-secondary">Secondary</button>
        <button type="button" class="btn btn-success">Success</button>
        <button type="button" class="btn btn-danger">Danger</button>
        <button type="button" class="btn btn-warning">Warning</button>
        <button type="button" class="btn btn-info">Info</button>
        <button type="button" class="btn btn-light">Light</button>
        <button type="button" class="btn btn-dark">Dark</button>

        <button type="button" class="btn btn-link">Link</button>
    </div>
 
    <!-- </AdminLayout> -->
</template>

<script setup>
import CommonHeader from '~~/layouts/CommonHeader.vue';
// import {
//     useCartStore
// } from '~~/stores/cart';
// import {
//     useProductStore
// } from '~~/stores/product';
// import {
//     storeToRefs
// } from 'pinia';
// const cartStore = useCartStore()
// const productStore = useProductStore()
// const {
//     products
// } = storeToRefs(productStore)
// //console.log("products from index " + products);

// const addToCart = async (productID) => {
//     try {
//         await cartStore.addToCart(productID);
//     } catch (error) {}
// }

// onMounted(async () => {
//     try {
//         await productStore.getProduct()
//     } catch (error) {
//         console.log(error)
//     }
// })
</script>
