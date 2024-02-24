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
                                    <LazyNuxtLink to="/admin/dashboard">Home</LazyNuxtLink>
                                </li>
                                <li class="breadcrumb-item active">
                                    <LazyNuxtLink to="/products/list">Back to List</LazyNuxtLink>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </section>

            <section class="content">
                <div class="container-fluid">
                
                            <div class="col-xl-12 mx-auto">
                                <div class="card border-top border-0 border-4 border-info">
                                    <div class="card-body">
                                        <div class="border p-4 rounded">
                                            <div class="card">

                                                <div class="row">
                                                    <div class="col-md-7">
                                                        <table class="table table-bordered w-100">
                                                            <tr style="background: #000;color: rgb(253, 253, 253);">
                                                                <td width="21%">Seller Name</td>
                                                                <td width="1%"><strong>:</strong></td>
                                                                <td width="78%">{{ productData.seller_name }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td width="21%">Product Name</td>
                                                                <td width="1%"><strong>:</strong></td>
                                                                <td width="78%">{{ productData.name }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Meta Tag Title</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.meta_title }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Meta Tag Description</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.meta_description }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Meta Tag Keywords</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.meta_keyword }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Product Tags</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.product_tag }}</td>
                                                            </tr>

                                                            <tr>
                                                                <td colspan="3">&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brand</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.brand_name }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>SKU</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.sku }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>External Link</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.external_link }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Description</td>
                                                                <td><strong>:</strong></td>
                                                                <td>
                                                                    <div class="pro_description marleft"></div>

                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Price</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.price }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Unit</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.unit }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Discount</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.discount }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Quantity</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.stock_qty }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Stock Minimum Quantity</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.stock_mini_qty }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Out Of Stock Status</td>
                                                                <td><strong>:</strong></td>
                                                                <td>
                                                                    <span v-if="productData.stock_status === 1"
                                                                        class="marleft">2-3 Days</span>
                                                                    <span v-if="productData.stock_status === 2"
                                                                        class="marleft">In Stock</span>
                                                                    <span v-if="productData.stock_status === 3"
                                                                        class="marleft">Out Of Stock</span>
                                                                    <span v-if="productData.stock_status === 4"
                                                                        class="marleft">Pre-Order</span>
                                                                    <span v-if="productData.stock_status === 5"
                                                                        class="marleft">Others</span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Free Shipping</td>
                                                                <td><strong>:</strong></td>
                                                                <td>
                                                                    <div v-if="productData.free_shopping === 0"
                                                                        class="marleft">No</div>
                                                                    <div v-if="productData.free_shopping === 1"
                                                                        class="marleft">Yes</div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Flat Rate</td>
                                                                <td><strong>:</strong></td>
                                                                <td>
                                                                    <div v-if="productData.flat_rate_status === 0"
                                                                        class="marleft">No</div>
                                                                    <div v-if="productData.flat_rate_status === 1"
                                                                        class="marleft">Yes</div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Shipping Days</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.shipping_days }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Vat</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.vat }} </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Vat Status</td>
                                                                <td><strong>:</strong></td>
                                                                <td>
                                                                    <div v-if="productData.vat_status === 0"
                                                                        class="marleft">No</div>
                                                                    <div v-if="productData.vat_status === 1"
                                                                        class="marleft">Yes</div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Tax</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.tax }} </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Tax Status</td>
                                                                <td><strong>:</strong></td>
                                                                <td>
                                                                    <div v-if="productData.tax_status === 0"
                                                                        class="marleft">No</div>
                                                                    <div v-if="productData.tax_status === 1"
                                                                        class="marleft">Yes</div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                            </tr>

                                                            <tr>
                                                                <td>Manufacturer</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.manufacturer }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Categories</td>
                                                                <td><strong>:</strong></td>
                                                                <td>
                                                                    <div class="output-container">
                                                                        <span class="show_categorys"></span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Size</td>
                                                                <td><strong>:</strong></td>
                                                                <td>
                                                                    <div class="output-container">
                                                                        <span class="implproaddr"></span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Download Link</td>
                                                                <td><strong>:</strong></td>
                                                                <td>{{ productData.download_link }}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Status</td>
                                                                <td><strong>:</strong></td>
                                                                <td>
                                                                    <div v-if="productData.status === 0" class="marleft">
                                                                        Draft</div>
                                                                    <div v-if="productData.status === 1" class="marleft">
                                                                        Publish</div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>

                                                    <div class="col-md-5" v-if="productData.category_id == 27">
                                                        <div class="scrollable-container">
                                                            <p>Total Tickets: {{ ticketHistory.length }}</p>
                                                            <table class="w-100" border="1">
                                                                <tr>
                                                                    <td width="15%">#</td>
                                                                    <td width="70%">TIcket Number </td>
                                                                    <td width="15%">Status</td>
                                                                </tr>
                                                                <tr v-for="(data, index) in ticketHistory" :key="index">
                                                                    <td>{{ index + 1 }}</td>
                                                                    <td>{{ data.ticket_number }}</td>
                                                                    <td>
                                                                        <div v-if="data.status === 0" class="marleft">
                                                                            Inactive</div>
                                                                        <div v-if="data.status === 1" class="marleft">Active
                                                                        </div>

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="row">

                                                <div class="col-md-3">
                                                    <div class="alert alert-primary" role="alert">
                                                        <center><small>Thumbnail Images</small></center>
                                                        <hr />
                                                        <img :src="productImg" alt="N/A"
                                                            class="img-fluid max-width-100 img-thumbnail" />
                                                    </div>
                                                </div>

                                                <div class="col-md-9">
                                                    <div class="alert alert-primary" role="alert">
                                                        Additional Images
                                                        <hr />
                                                        <!-- productAddImgs -->
                                                        <div class="row">
                                                            <div class="col-md-2" v-for="(data, index) in productAddImgs"
                                                                :key="index">
                                                                <img :src="data.images" alt="N/A"
                                                                    class="img-fluid max-width-100 img-thumbnail" />
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>

                                            <!-- END -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                </div>
            </section>
        </div>
    </div>
</template>

<script setup>
import { ref, reactive, onMounted } from 'vue';
const router = useRouter();
import axios from 'axios';
import swal from 'sweetalert2';
window.Swal = swal;

definePageMeta({
    middleware: 'is-logged-out',
})
const productData = ref({
    id: '',
    name: '',
    description: '',
    meta_title: '',
    category_id: '',
    meta_description: '',
    meta_keyword: '',
    description: '',
    parent_id: 0,
    mobile_view_class: '',
    product_tag: '',
    discount: '',
    sku: '',
    category_id: '',
    brand_name: '',
    external_link: '',
    price: '',
    unit: '',
    stock_qty: '',
    stock_mini_qty: '',
    stock_status: '',
    free_shopping: '',
    seller_name: '',
    flat_rate_status: '',
    shipping_days: '',
    vat: '',
    vat_status: '',
    tax: '',
    tax_status: '',
    status: '',
    manufacturer: '',
    download_link: ''
});
 
const ticketHistory = ref([]);
const historVarient = ref([{
    varient_id: '',
    sku: '',
    qty: '',
    price: '',
    file: ''
}]);
const productImg = ref('');
const productAddImgs = ref([]);
const notifmsg = ref('');
const errors = ref({});


const varientHistory = () => {
    const product_id = router.currentRoute.value.query.parameter;
    axios.get(`/product/getVarientHistory`, {
        params: {
            product_id: product_id
        }
    }).then(response => {
        historVarient.value = response.data;
    });
};

const productDetails = () => {
    const product_id = router.currentRoute.value.query.parameter;
    axios.get(`/product/productrow/${product_id}`).then(response => {
        const data = response.data;
        productData.value.name = data.product.name;
        productData.value.seller_name = data.seller_name;
        productData.value.category_id = data.category_id;
        productData.value.description = data.product.description;
        productData.value.meta_title = data.product.meta_title;
        productData.value.meta_description = data.product.meta_description;
        productData.value.meta_keyword = data.product.meta_keyword;
        productData.value.product_tag = data.product.product_tag;
        productData.value.keyword = data.product.keyword;
        productData.value.brand_name = data.product.brand_name;
        productData.value.sku = data.product.sku;
        productData.value.external_link = data.product.external_link;
        $(".pro_description").html(data.product.description);
        $(".implproaddr").html(data.implproaddr);
        productData.value.price = data.product.price;
        productData.value.unit = data.product.unit;
        productData.value.stock_qty = data.product.stock_qty;
        productData.value.stock_mini_qty = data.product.stock_mini_qty;
        productData.value.discount = data.product.discount;
        productData.value.stock_status = data.product.stock_status;
        productData.value.free_shopping = data.product.free_shopping;
        productData.value.flat_rate_status = data.product.flat_rate_status;
        productData.value.shipping_days = data.product.shipping_days;
        productData.value.vat = data.product.vat;
        productData.value.vat_status = data.product.vat_status;
        productData.value.tax = data.product.tax;
        productData.value.tax_status = data.product.tax_status;
        productData.value.status = data.product.status;
        productData.value.manufacturer = data.product.manufac_name;
        productData.value.download_link = data.product.download_link;
        productImg.value = data.productImg;
        productAddImgs.value = data.product_imgs;
        ticketHistory.value = data.ticketHistory;
        $(".show_categorys").html(data.product_cat);
    });
};

onMounted(() => {
    productDetails();
    varientHistory();
});
</script>

<style scoped>
.scrollable-container {
    max-height: 400px;
    /* Adjust the maximum height as needed */
    overflow-y: auto;
    border: 1px solid #dddddd;
    /* Optional: Add a border for styling */
    padding: 8px;
    /* Optional: Add padding for better appearance */
}

table {
    border-collapse: collapse;
    width: 100%;
}

th,
td {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 1px;
}

th {
    background-color: #f2f2f2;
}

.marleft {
    margin-left: -7px;
}

.output-container {
    white-space: pre-line;
    margin-left: -7px;
}</style>

