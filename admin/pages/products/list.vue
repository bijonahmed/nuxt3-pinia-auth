<template>
    <title>Product List</title>
    <div>
        <div class="content-wrapper">

            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <p>Product List</p>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item">
                                    <LazyNuxtLink href="/admin/dashboard">Home</LazyNuxtLink>
                                </li>
                                <li class="breadcrumb-item active">Product</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </section>

            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">

                                    <div>
                                        <input type="text" v-model="searchQuery" placeholder="Search Product">
                                       
                                        <select v-model="selectedFilter" @change="filterData">
                                            <option value="1">Active Products</option>
                                            <option value="0">Inactive Products</option>
                                        </select>

                                        <button @click="filterData()">Filter</button>
                                        <table id="example2" class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>SL</th>
                                                    <th>Product Name</th>
                                                    <th>Quantity</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr v-for="(pro, index) in productdata" :key="index">
                                                    <td>{{ pro.id }}</td>
                                                    <td>{{ pro.name }}</td>
                                                    <td>{{ pro.stock_qty }}</td>
                                                    <td>===</td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>SL</th>
                                                    <th>Product Name</th>
                                                    <th>Quantity</th>
                                                    <th>Action</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                        <center>
                                            <div class="pagination" style="text-align: center;">
                                                <button :disabled="currentPage === 1"
                                                    @click="fetchData(currentPage - 1)">Previous</button>
                                                <template v-for="pageNumber in displayedPages" :key="pageNumber">
                                                    <button @click="fetchData(pageNumber)">{{ pageNumber }}</button>
                                                </template>
                                                <button :disabled="currentPage === totalPages"
                                                    @click="fetchData(currentPage + 1)">Next</button>
                                            </div>
                                        </center>


                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </section>

        </div>
    </div>
</template>

<script>
import { ref, watch, onMounted } from 'vue';
import axios from 'axios';

export default {
    setup() {
        const currentPage = ref(1);
        const pageSize = 5;
        const totalRecords = ref(0);
        const totalPages = ref(0);
        const productdata = ref([]);
        const searchQuery = ref(''); // Add a ref for the search query
        const selectedFilter = ref(''); // Add a ref for the search query


        const fetchData = async (page) => {
            try {
                const response = await axios.get(`/product/getProductList`, {
                    params: {
                        page: page,
                        pageSize: pageSize,
                        searchQuery: searchQuery.value, // Pass the search query parameter
                        selectedFilter: selectedFilter.value, // Pass the search query parameter
                    }
                });
                //console.log("Response:", response.data);
                productdata.value = response.data.data;
                totalRecords.value = response.data.total_records;
                totalPages.value = response.data.total_pages;
                currentPage.value = response.data.current_page;
            } catch (error) {
                //console.error('Error fetching data:', error);
            }
        };

        onMounted(() => {
            fetchData(currentPage.value);
        });

        // Watch for changes in current page and fetch data accordingly
        watch(currentPage, (newPage) => {
            fetchData(newPage);
        });

        // Compute the range of displayed pages
        const displayedPages = computed(() => {
            const maxDisplayedPages = 10; // Maximum number of displayed pages
            const startPage = Math.max(1, currentPage.value - Math.floor(maxDisplayedPages / 2));
            const endPage = Math.min(totalPages.value, startPage + maxDisplayedPages - 1);
            return Array.from({ length: endPage - startPage + 1 }, (_, i) => startPage + i);
        });

        const filterData = () => {
            fetchData(1); // Reset to first page when search query changes
        };
        return {
            currentPage,
            totalPages,
            fetchData,
            productdata,
            displayedPages,
            filterData,
            searchQuery,
            selectedFilter
        };
    }
};
</script>

<style>
.pagination {
    display: inline-block;
    text-align: center;
}

.pagination button {
    margin: 0 5px;
    padding: 5px 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.pagination button:hover {
    background-color: #0056b3;
}

.pagination button[disabled] {
    background-color: #6c757d;
    cursor: not-allowed;
}

.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    min-height: 1px;
    padding: 0.5rem;
}</style>