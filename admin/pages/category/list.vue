<template>
    <title>Category List</title>
    <div>
        <div class="content-wrapper">
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <p>Category</p>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item">
                                    <LazyNuxtLink to="/admin/dashboard">Home</LazyNuxtLink>
                                </li>
                                <li class="breadcrumb-item active">
                                    <LazyNuxtLink to="/category/add">New</LazyNuxtLink>
                                </li>



                            </ol>
                        </div>
                    </div>
                </div>
            </section>

            <!-- <button @click="pageRedirect()">Pages</button> -->
            <section class="content">
                <div class="container-fluid">
                    <!-- Start -->
                    <div class="card border-top border-0 border-4 border-info">
                        <div class="border p-4 rounded">

                            <div class="card card-primary card-outline card-tabs">
                                <div class="card-header p-0 pt-1 border-bottom-0">


                                    <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="pill"
                                                href="#custom-tabs-three-home" role="tab"
                                                aria-controls="custom-tabs-three-home" aria-selected="true">Active List</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                                                href="#custom-tabs-two-profile" role="tab"
                                                aria-controls="custom-tabs-three-profile" aria-selected="false">Inactive
                                                List</a>
                                        </li>


                                    </ul>
                                </div>
                                <div class="card-body">
                                    <div class="tab-content" id="custom-tabs-three-tabContent">
                                        <div class="tab-pane fade active show" id="custom-tabs-three-home" role="tabpanel"
                                            aria-labelledby="custom-tabs-three-home-tab">
                                            <!-- General  -->

                                            <ul>
                                                <li v-for="category in categories" :key="category.id">
                                                    <span class="badge bg-dark">{{ category.name }}</span>
                                                    <ul v-if="category.children && category.children.length">
                                                        <template v-for="childLevel1 in category.children"
                                                            :key="childLevel1.id">
                                                            <li>
                                                                <span class="badge bg-secondary">{{ childLevel1.name
                                                                }}</span>
                                                                <ul
                                                                    v-if="childLevel1.children && childLevel1.children.length">
                                                                    <template v-for="childLevel2 in childLevel1.children"
                                                                        :key="childLevel2.id">
                                                                        <li>
                                                                            <span>{{ childLevel2.name }}</span>
                                                                            <ul
                                                                                v-if="childLevel2.children && childLevel2.children.length">
                                                                                <template
                                                                                    v-for="childLevel3 in childLevel2.children"
                                                                                    :key="childLevel3.id">
                                                                                    <li>
                                                                                        <span >{{ childLevel3.name }}</span>
                                                                                        <ul
                                                                                            v-if="childLevel3.children && childLevel3.children.length">
                                                                                            <template
                                                                                                v-for="childLevel4 in childLevel3.children"
                                                                                                :key="childLevel4.id">
                                                                                                <li>
                                                                                                    <span>{{  childLevel4.name }}</span>
                                                                                                    <ul
                                                                                                        v-if="childLevel4.children && childLevel4.children.length">
                                                                                                        <template
                                                                                                            v-for="childLevel5 in childLevel4.children"
                                                                                                            :key="childLevel5.id">
                                                                                                            <li>
                                                                                                                <span >{{ childLevel5.name }}</span>
                                                                                                                <ul
                                                                                                                    v-if="childLevel5.children && childLevel5.children.length">
                                                                                                                    <template
                                                                                                                        v-for="childLevel6 in childLevel5.children"
                                                                                                                        :key="childLevel6.id">
                                                                                                                        <li>
                                                                                                                            <span>{{ childLevel6.name }}</span>
                                                                                                                            <!-- Add more nested levels if needed -->
                                                                                                                        </li>
                                                                                                                    </template>
                                                                                                                </ul>
                                                                                                            </li>
                                                                                                        </template>
                                                                                                    </ul>
                                                                                                </li>
                                                                                            </template>
                                                                                        </ul>
                                                                                    </li>
                                                                                </template>
                                                                            </ul>
                                                                        </li>
                                                                    </template>
                                                                </ul>
                                                            </li>
                                                        </template>
                                                    </ul>
                                                </li>
                                            </ul>

                                        </div>

                                        <div class="tab-pane fade" id="custom-tabs-two-profile" role="tabpanel"
                                            aria-labelledby="custom-tabs-three-home-tab">
                                            <!-- General  -->
                                            <ul>
                                                <li v-for="category in Inacategories" :key="category.id">
                                                    <span class="badge bg-danger">{{ category.name }} <span
                                                            @click="editCategory(category.id)"><i
                                                                class="bx bx-edit"></i></span></span>

                                                </li>
                                            </ul>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
        </div>
        <!-- END -->

    </div>
</template>
<script setup>
import { ref, onMounted } from 'vue';
import { useRouter } from 'vue-router';
import axios from "axios";

const categories = ref([]);
const Inacategories = ref([]);

const router = useRouter();

const editCategory = (id) => {
    router.push({
        path: '/category/edit',
        query: { id }
    });
};

const fetchData = async () => {
    try {
        const response = await axios.get('/category/getCategoryList');
        console.log(response.data); // Print the data received from the server
        categories.value = response.data; // Set the categories value to the data received
    } catch (error) {
        console.error(error);
    }
};

const fetchInacCatData = async () => {
    try {
        const response = axios.get('/category/getInacCategoryList');
        Inacategories.value = response.data;

    } catch (error) {
        console.error(error);
    }
};

onMounted(async () => {
    await fetchData();
    await fetchInacCatData();
});
</script>
<style scoped>/* Add CSS styles for the hover effect */
ul li:hover {
    background-color: #f0f0f0;
    /* Change the background color on hover */
    cursor: pointer;
    /* Change the cursor to a pointer on hover */
}

ul li:hover .bx-edit {
    color: #007bff;
    /* Change the color of the edit icon on hover */
}</style>
