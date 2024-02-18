<template>
    <div>
        <div class="row">
            <div class="col-4">
                <div class="alert alert-primary" role="alert">
                    Cart Total Item: {{ cartStore.cartTotalItem }}
                </div>
                <div class="alert alert-secondary" role="alert">
                    Total Cart Price: <span>${{ cartStore.totalCartPrice }}</span>
                </div>
            </div>

            <div class="col-4">
                <p>Item History</p>
                <hr />
                <button @click="clearProducts()">Clear Products</button>
                <table>
                    <thead>
                        <tr>
                            <th>Item Name</th>
                            <th>Quantity</th>
                            <th>Images</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(item, index) in formattedCart" :key="index">
                            <td>{{ item.name }}</td>
                            <td>{{ item.quantity }}</td>
                            <td> <img :src="item.image" alt="Product Image" style="width: 50px; height: 50px;"></td>
                            <td> <button @click="deleteProduct(item.id)">Delete</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</template>

<script setup>
import { useUserStore } from '~~/stores/user'
import { storeToRefs } from 'pinia';
import { useCartStore } from '~~/stores/cart';
const userStore = useUserStore();
const { isLoggedIn } = storeToRefs(userStore)
const cartStore = useCartStore()

const formattedCart = computed(() => {
    return cartStore.formattedCart;
});

const clearProducts = () => {
    cartStore.clearCart();

}

const deleteProduct = (productId) => {
    cartStore.deleteProduct(productId);
};

onMounted(() => {

});

computed(async () => {

})
</script>
