<template>
    <div>
        <title>Brand List</title>
        <div class="row">
            <div class="col-10">Brand List</div>
            <div class="col-2">
                <lazyNuxtLinkAdmin to="/brand/add-brand" class="btn btn-primary text-right">Add New Brand</lazyNuxtLinkAdmin>
            </div>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Action</th>

                </tr>
            </thead>
            <tbody>
                <tr v-for="(brand, index) in brands" :key="index">
                    <th scope="row">{{ index + 1 }}</th>
                    <td>{{ brand.name }}</td>
                    <td>====</td>
                </tr>

            </tbody>
        </table>
    </div>
</template>
<script setup>
definePageMeta({
    middleware: 'is-logged-out',
})
import axios from "axios";
const brands = ref([]);
const brandlist = async () => {
    try {
        let response = await axios.get("/brands/allbrandlist");
        brands.value = response.data.data;
    } catch (error) {
        console.error("Error fetching brands:", error);
    }
};
onMounted(() => {
    brandlist(); // Call the brandlist function when the component is mounted
});
</script>
