<template>
  <title>Add Product</title>
  <div>
    <div class="content-wrapper">
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <p>Add Product</p>
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

      <!-- <button @click="pageRedirect()">Pages</button> -->
      <section class="content">
        <div class="container-fluid">
          <!-- Start -->
          <div class="card border-top border-0 border-4 border-info">
            <div class="border p-4 rounded">
              <form @submit.prevent="saveData()" id="formrest" class="forms-sample" enctype="multipart/form-data">
                <div class="card card-primary card-outline card-tabs">
                  <div class="card-header p-0 pt-1 border-bottom-0">
                    <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
                      <li class="nav-item">
                        <a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="pill"
                          href="#custom-tabs-three-home" role="tab" aria-controls="custom-tabs-three-home"
                          aria-selected="true">General</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill"
                          href="#custom-tabs-three-profile" role="tab" aria-controls="custom-tabs-three-profile"
                          aria-selected="false">Data</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="custom-tabs-three-messages-tab" data-toggle="pill"
                          href="#custom-tabs-three-messages" role="tab" aria-controls="custom-tabs-three-messages"
                          aria-selected="false">Categories</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="custom-tabs-three-settings-tab" data-toggle="pill"
                          href="#custom-tabs-three-settings" role="tab" aria-controls="custom-tabs-three-settings"
                          aria-selected="false">Images</a>
                      </li>
                    </ul>
                  </div>
                  <div class="card-body">
                    <div class="tab-content" id="custom-tabs-three-tabContent">
                      <div class="tab-pane fade active show" id="custom-tabs-three-home" role="tabpanel"
                        aria-labelledby="custom-tabs-three-home-tab">
                        <!-- General  -->
                        <div class="row mb-3 required">
                          <label for="input-name-1" class="col-sm-2 col-form-label required-label">Product Name</label>
                          <div class="col-sm-10">
                            <input type="text" name="name" placeholder="Product Name" v-model="insertdata.name"
                              class="form-control" />
                            <input type="hidden" name="id" id="id" class="form-control" />
                            <span class="text-danger" v-if="errors.name">{{
                              errors.name[0]
                            }}</span>
                          </div>
                        </div>
                        <div class="row mb-3 required">
                          <label for="input-meta-title-1" class="col-sm-2 col-form-label">Meta Tag Title</label>
                          <div class="col-sm-10">
                            <input type="text" name="meta_title" value placeholder="Meta Tag Title"
                              v-model="insertdata.meta_title" class="form-control" />
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label for="input-meta-description-1" class="col-sm-2 col-form-label">Meta Tag
                            Description</label>
                          <div class="col-sm-10">
                            <textarea name="meta_description" rows="5" placeholder="Meta Tag Description"
                              v-model="insertdata.meta_description" id="meta_description" class="form-control"></textarea>
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label for="input-meta-description-1" class="col-sm-2 col-form-label">Meta Tag Keywords</label>
                          <div class="col-sm-10">
                            <textarea name="meta_keyword" rows="5" placeholder="Meta Tag Keywords" class="form-control"
                              v-model="insertdata.meta_keyword"></textarea>
                          </div>
                        </div>
                        <div class="row mb-3 required">
                          <label for="input-meta-title-1" class="col-sm-2 col-form-label">Product Tags</label>
                          <div class="col-sm-10">
                            <input type="text" placeholder="Product Tags" v-model="insertdata.ptag" class="form-control"
                              @input="addCommas" />
                            <input type="hidden" placeholder="Product Tags" v-model="insertdata.product_tag"
                              class="form-control" />
                            {{ product_tag_msg }}
                            <small>Comma separated</small>
                          </div>
                        </div>
                      </div>
                      <div class="tab-pane fade" id="custom-tabs-three-profile" role="tabpanel"
                        aria-labelledby="custom-tabs-three-profile-tab">
                        <!-- Data -->
                        <div class="card">
                          <div class="card-body">
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-2 col-form-label">Brands</label>
                              <div class="col-sm-10">
                                <select v-model="insertdata.brand" class="form-control">
                                  <option value="" selected>
                                    Select Brand
                                  </option>
                                  <option v-for="data in modelresults" :value="data.id"> {{ data.name }} </option>
                                </select>
                              </div>
                            </div>
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-2 col-form-label required-label">SKU</label>
                              <div class="col-sm-10">
                                <input type="text" placeholder="SKU" v-model="insertdata.sku" class="form-control" />
                                <span class="text-danger" v-if="errors.sku">{{
                                  errors.sku[0]
                                }}</span>
                                <small>Stock Keeping Unit</small>
                              </div>
                            </div>
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-2 col-form-label">External Link</label>
                              <div class="col-sm-10">
                                <input type="text" placeholder="External Link" v-model="insertdata.external_link"
                                  class="form-control" />
                              </div>
                            </div>
                            <hr />

                            <div class="row mb-3">
                              <label for="input-description-1" class="col-sm-2 col-form-label">Description</label>
                              <div class="col-sm-10">
                                <div class="summernote-editor" style="height: 100%;"></div>
                              </div>
                            </div>
                            <hr />

                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-4 col-form-label required-label">Price</label>
                              <div class="col-sm-8">
                                <input type="text" placeholder="Price" v-model="insertdata.price" class="form-control"
                                  @input="validateInput" />
                                <span class="text-danger" v-if="errors.price">{{ errors.price[0] }}</span>
                              </div>
                            </div>
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-4 col-form-label">Unit</label>
                              <div class="col-sm-8">
                                <input type="text" placeholder="Unit (e.g. KG, Pc etc)" v-model="insertdata.unit"
                                  class="form-control" />
                              </div>
                            </div>
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-4 col-form-label">Discount</label>
                              <div class="col-sm-4">
                                <input type="text" placeholder="0" v-model="insertdata.discount" class="form-control"
                                  @input="validateInput" />
                              </div>
                              <div class="col-sm-4">
                                <select class="form-control" aria-label=".form-select-sm example"
                                  v-model="insertdata.discount_status">
                                  <option selected>Select</option>
                                  <option value="1">Percent</option>
                                  <option value="2">Flat</option>
                                </select>
                              </div>
                            </div>
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1"
                                class="col-sm-4 col-form-label required-label">Quantity</label>
                              <div class="col-sm-8">
                                <input type="text" placeholder="1" v-model="insertdata.stock_qty" class="form-control"
                                  @input="validateInput" />
                              </div>
                              <span class="text-danger" v-if="errors.stock_qty">{{ errors.stock_qty[0] }}</span>

                            </div>
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-4 col-form-label required-label">Minimum
                                Quantity</label>
                              <div class="col-sm-8">
                                <input type="text" v-model="insertdata.stock_mini_qty" class="form-control"
                                  @input="validateInput" />
                              </div>
                              <span class="text-danger" v-if="errors.stock_mini_qty">{{ errors.stock_mini_qty[0] }}</span>
                            </div>
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-4 col-form-label">Out Of Stock Status</label>
                              <div class="col-sm-8">
                                <select class="form-control" aria-label=".form-select-sm example"
                                  v-model="insertdata.stock_status">
                                  <option selected>Select</option>
                                  <!-- categories -->
                                  <option value="1">2-3 Days</option>
                                  <option value="2">In Stock</option>
                                  <option value="3">Out Of Stock</option>
                                  <option value="4">Pre-Order</option>
                                  <option value="5">Others</option>
                                </select>
                              </div>
                            </div>
                            <hr />
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-4 col-form-label">Free Shipping</label>
                              <div class="col-sm-8">
                                <select class="form-control" aria-label=".form-select-sm example"
                                  v-model="insertdata.free_shopping">
                                  <option selected>Select</option>
                                  <option value="0">No</option>
                                  <option value="1">Yes</option>
                                </select>
                              </div>
                            </div>
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-4 col-form-label">Flat Rate</label>
                              <div class="col-sm-4">
                                <select class="form-control" aria-label=".form-select-sm example"
                                  v-model="insertdata.flat_rate_status">
                                  <option selected>Select</option>
                                  <option value="0">No</option>
                                  <option value="1">Yes</option>
                                </select>
                              </div>
                              <div class="col-sm-4">
                                <input type="text" v-model="insertdata.flat_rate_price" class="form-control"
                                  @input="validateInput" />
                              </div>
                            </div>
                            <hr />
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-4 col-form-label">Shipping Days</label>
                              <div class="col-sm-4">
                                <input type="text" v-model="insertdata.shipping_days" class="form-control"
                                  @input="validateInput" />
                                <span class="text-danger" v-if="errors.shipping_days">{{ errors.shipping_days[0] }}</span>
                              </div>
                              <div class="col-sm-4">Days</div>
                            </div>
                            <hr />
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-4 col-form-label">Vat</label>
                              <div class="col-sm-4">
                                <input type="text" v-model="insertdata.vat" class="form-control" @input="validateInput" />
                              </div>
                              <div class="col-sm-4">
                                <select class="form-control" aria-label=".form-select-sm example"
                                  v-model="insertdata.vat_status">
                                  <option selected>Select</option>
                                  <option value="1">Flat</option>
                                  <option value="2">Percent</option>
                                </select>
                              </div>
                            </div>
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-4 col-form-label">Tax</label>
                              <div class="col-sm-4">
                                <input type="text" v-model="insertdata.tax" class="form-control" @input="validateInput" />
                              </div>
                              <div class="col-sm-4">
                                <select class="form-control" aria-label=".form-select-sm example"
                                  v-model="insertdata.tax_status">
                                  <option selected>Select</option>
                                  <option value="1">Flat</option>
                                  <option value="2">Percent</option>
                                </select>
                              </div>
                            </div>
                            <hr />
                            <div class="row mb-3 required">
                              <label for="input-meta-title-1" class="col-sm-4 col-form-label">Tax. Status</label>
                              <div class="col-sm-4">
                                <select class="form-control" aria-label=".form-select-sm example"
                                  v-model="insertdata.cash_dev_status">
                                  <option selected>Select</option>
                                  <option value="1">Yes</option>
                                  <option value="2">No</option>
                                </select>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="tab-pane fade" id="custom-tabs-three-messages" role="tabpanel"
                        aria-labelledby="custom-tabs-three-messages-tab">
                        <!-- SEO -->
                        <div class="card">
                          <div class="card-body">
                            <div class="row mb-3">
                              <label for="input-meta-description-1" class="col-sm-2 col-form-label">Manufacturer</label>
                              <div class="col-sm-10">
                                <select v-model="insertdata.manufacturer" class="form-control">
                                  <option value="" selected>Select</option>
                                  <option v-for="data in manufrresults" :value="data.id">
                                    {{ data.name }}
                                  </option>
                                </select>
                              </div>
                            </div>
                            <div class="row mb-3">
                              <label for="input-meta-description-1"
                                class="col-sm-2 col-form-label required-label">Categories</label>
                              <div class="col-sm-10">
                                <div>
                                  <!-- ======{{ searchResults }}===== -->
                                  <input v-model="categories" @input="search" class="form-control"
                                    placeholder="Search..." />

                                  <span class="text-danger" v-if="errors.category">{{ errors.category[0] }}</span>

                                  <ul>

                                    <li v-for="result in searchResults" :key="result.name">
                                      {{ result.category }}
                                      <a href="javascript:void(0);" @click="addToSelected(result)"><i
                                          class="fas fa-plus"></i></a>
                                    </li>
                                  </ul>

                                  <span class="text-danger" v-if="errors.category">{{ errors.category[0] }}</span>
                                  <span class="d-none">
                                    <textarea v-model="multi_categories" placeholder="Selected Value"
                                      class="w-100"></textarea>
                                  </span>
                                  <div v-if="selectedItems.length" class="bgColor">
                                    <hr />
                                    <div v-for="item in selectedItems" :key="item.id">
                                      {{ item.category }}
                                      <a href="javascript:void(0);" @click="removeFromSelected(item)"><i
                                          class="fas fa-trash-alt"></i></a>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="row mb-3">
                              <label for="input-meta-description-1" class="col-sm-2 col-form-label">Download Link</label>
                              <div class="col-sm-10">
                                <input type="text" name="keyword" value placeholder="Download"
                                  v-model="insertdata.download_link" class="form-control" />
                              </div>
                            </div>
                            <!-- <button type="submit" class="btn btn-success px-5 w-100"><i class="bx bx-check-circle mr-1"></i> Submit</button> -->
                          </div>
                        </div>
                      </div>
                      <div class="tab-pane fade" id="custom-tabs-three-settings" role="tabpanel"
                        aria-labelledby="custom-tabs-three-settings-tab">
                        <div class="alert alert-info" bis_skin_checked="1">
                          <i class="fas fa-info-circle"></i> Must Upload
                          Products Images 300x300px
                        </div>
                        <div class="row mb-3 required">
                          <label for="input-meta-description-1" class="col-sm-2 col-form-label required-label">Thumbnail
                            Image</label>
                          <div class="col-sm-10">
                            <input type="file" value class="form-control" id="fileInput" accept="image/png,image/jpeg"
                              ref="files" @change="onFileSelected" />
                            <span class="text-danger" v-if="errors.files">{{
                              errors.files[0]
                            }}</span>
                            <img v-if="previewUrl" :src="previewUrl" alt="Preview" class="img-fluids" />
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label for="input-meta-description-1" class="col-sm-2 col-form-label">Additional Image</label>
                          <div class="col-sm-10">
                            <input type="file" multiple class="form-control" accept="image/png,image/jpeg"
                              @change="handleImageUpload" id="fileInput" />
                            <div class="row mt-3">
                              <div class="col-md-3" v-for="(image, index) in images" :key="index">
                                <div class="card">
                                  <img :src="image.url" class="card-img-top img-fluid" alt="Preview" />
                                  <div class="card-body">
                                    <button type="button" class="btn btn-danger btn-sm" @click="removeImage(index)">
                                      Remove
                                    </button>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <button type="submit" class="btn btn-success px-5 w-100">
                          <i class="bx bx-check-circle mr-1"></i> Save & Next
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- END -->
      </section>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive, onMounted } from 'vue';
import axios from 'axios';
import swal from 'sweetalert2';
const router = useRouter()
window.Swal = swal;
const insertdata = reactive({
  id: '',
  name: '',
  description: '',
  meta_title: '',
  meta_description: '',
  meta_keyword: '',
  product_tag: '',
  ptag: '',
  brand: '',
  sku: '',
  external_link: '',
  cash_dev_status: 2,
  price: '',
  unit: '',
  stock_qty: 1,
  stock_mini_qty: 1,
  stock_status: 1,
  manufacturer: '',
  download_link: '',
  discount: 0,
  discount_status: 1,
  shipping_days: 1,
  free_shopping: 0,
  flat_rate_status: 0,
  flat_rate_price: 0,
  vat: 0,
  vat_status: 1,
  tax: 0,
  tax_status: 1,
  images: '',
  status: 1,
});
// Define a ref to store the HTML content of the editor
const editorContent = ref('');
const content = ref('');
const inputValue = ref('');
const previewUrl = ref(null);
const images = ref([]);
const selectedCategory = ref(null);
const multi_categories = ref('');
const results = ref([]);
const selectedItems = ref([]);
const categories = ref('');
const searchResults = ref([]);
const parentAttributes = ref([]);
const attrVals = ref([]);
const product_tag_msg = ref('');
const modelresults = ref([]);
const manufrresults = ref('');
//const description = ref('');
const notifmsg = ref('');
const file = ref(null);
const files = ref(null);
const errors = ref({});
// Initialize Summernote editor

definePageMeta({
    middleware: 'is-logged-out',
})
// Define your methods
const searchModels = async () => {
  try {
    const response = await axios.get(`/brands/allbrandlist`);
    modelresults.value = response.data.data;
    $(".customerSpinner").hide();
  } catch (error) {
    console.error(error);
  }
};

const searchmanuf = async () => {
  try {
    const response = await axios.get(`/manufacturers/allmanufacturers`);
    manufrresults.value = response.data.data;
  } catch (error) {
    console.error(error);
  }
};


const search = async () => {
  try {
    const response = await axios.get(`/category/search?term=${categories.value}`);
    // console.log(response.data);
    searchResults.value = response.data;

  } catch (error) {
    console.error(error);
  }
};

const validateInput = () => {
  const fieldsToValidate = ['price', 'discount', 'stock_qty', 'stock_mini_qty', 'flat_rate_price', 'shipping_days', 'vat', 'tax'];
  fieldsToValidate.forEach(field => {
    if (!/^[+-]?\d*\.?\d*$/.test(insertdata[field])) {
      insertdata[field] = insertdata[field].slice(0, -1);
    }
  });
};


const addCommas = () => {
  product_tag_msg.value = insertdata.ptag.replace(/\s+/g, ', ');
  insertdata.product_tag = product_tag_msg.value;
};

const checkImageDimensions = (file) => {
  const reader = new FileReader();
  reader.onload = (e) => {
    const img = new Image();
    img.src = e.target.result;
    img.onload = () => {
      if (img.width === 300 && img.height === 300) {
        const url = e.target.result;

        // Ensure images.value is initialized as an array
        images.value = Array.isArray(images.value) ? images.value : [];

        images.value.push({
          url,
          file
        });
      } else {
        alert('Image dimensions must be 300x300 pixels.');
        // Reset file input
        const fileInput = document.getElementById('fileInput');
        if (fileInput) {
          fileInput.value = '';
        }
      }
    };
  };
  reader.readAsDataURL(file);
};

const removeImage = (index) => {
  images.value.splice(index, 1);
};

const checkImageDimensionsThunbnail = (file) => {
  const reader = new FileReader();
  reader.onload = (e) => {
    const img = new Image();
    img.src = e.target.result;
    img.onload = () => {
      if (img.width === 300 && img.height === 300) {
        previewUrl.value = e.target.result;
      } else {
        alert('Image dimensions must be 300x300 pixels.');
      }
    };
  };
  reader.readAsDataURL(file);
  //resetInput();
};

const resetInput = () => {
  previewUrl.value = null;
  const fileInput = document.getElementById('fileInput');
  if (fileInput) {
    fileInput.value = '';
  }
};

const addToSelected = (result) => {
  //selectedItems.value.push(result);
  //multi_categories.value = selectedItems.value.map((result) => result.id).join(",");
  selectedItems.value.push(result);
  multi_categories.value = selectedItems.value.map((item) => item.id).join(",");
};

const removeFromSelected = (item) => {
  const index = selectedItems.value.indexOf(item);
  if (index !== -1) {
    selectedItems.value.splice(index, 1);
    updatemulti_categories();
  }
};

const updatemulti_categories = () => {
  multi_categories.value = selectedItems.value.map((item) => item.id).join(",");
};


const previewImage = (event) => {
  const file = event.target.files[0];
  previewUrl.value = URL.createObjectURL(file);
  checkImageDimensionsThunbnail(file);
};


const onFileSelected = (event) => {
  previewImage(event)
  file.value = event.target.files[0];
};

const handleImageUpload = (event) => {
  const files = event.target.files;
  for (let i = 0; i < files.length; i++) {
    const file = files[i];
    //readImage(file);
    checkImageDimensions(file);
  }
};

const saveData = () => {
  const formData = new FormData();

  images.value.forEach((image, index) => {
    formData.append('images[]', image.file);
  });

  console.log("Data to be saved:", editorContent.value);


  formData.append('id', insertdata.id);
  formData.append('files', file.value);
  console.log("multi category: " + multi_categories.value);
  // formData.append('images', this.images); //multiple
  formData.append('category', multi_categories.value);
  formData.append('name', insertdata.name);
  formData.append('description', editorContent.value);
  formData.append('meta_title', insertdata.meta_title);
  formData.append('meta_description', insertdata.meta_description);
  formData.append('meta_keyword', insertdata.meta_keyword);
  formData.append('product_tag', insertdata.product_tag);
  formData.append('brand', insertdata.brand);
  formData.append('sku', insertdata.sku);
  formData.append('external_link', insertdata.external_link);
  formData.append('price', insertdata.price);
  formData.append('stock_qty', insertdata.stock_qty);
  formData.append('stock_mini_qty', insertdata.stock_mini_qty);
  formData.append('stock_status', insertdata.stock_status);
  formData.append('manufacturer', insertdata.manufacturer);
  formData.append('download_link', insertdata.download_link);
  formData.append('status', insertdata.status);
  formData.append('keyword', insertdata.keyword);
  //new
  formData.append('unit', insertdata.unit);
  formData.append('discount', insertdata.discount);
  formData.append('discount_status', insertdata.discount_status);
  formData.append('free_shopping', insertdata.free_shopping);
  formData.append('flat_rate_status', insertdata.flat_rate_status);
  formData.append('flat_rate_price', insertdata.flat_rate_price);
  formData.append('vat', insertdata.vat);
  formData.append('vat_status', insertdata.vat_status);
  formData.append('tax', insertdata.tax);
  formData.append('tax_status', insertdata.tax_status);
  formData.append('cash_dev_status', insertdata.cash_dev_status);
  formData.append('shipping_days', insertdata.shipping_days);

  axios.post('/product/save', formData, {
    headers: {
      'Content-Type': 'multipart/form-data'
    }
  }).then((res) => {
    $('#formrest')[0].reset();
    success_noti();
    const product_id = res.data.product_id;
    // Redirect to product variant page
    router.push({
      path: '/products/preview',
      query: {
        parameter: product_id
      }
    });


  }).catch(error => {
    if (error.response && error.response.status === 422) {
      errors.value = error.response.data.errors;
    } else {
      // Handle other types of errors here
      console.error("An error occurred:", error);
    }
  });
};

const success_noti = () => {
  //alert("Your data has been successfully inserted.");
  const Toast = Swal.mixin({
    toast: true,
    position: "top-end",
    showConfirmButton: false,
    timer: 1000,
    timerProgressBar: true,
    didOpen: (toast) => {
      toast.onmouseenter = Swal.stopTimer;
      toast.onmouseleave = Swal.resumeTimer;
    }
  });
  Toast.fire({
    icon: "success",
    title: "Your data has been successfully inserted."
  });
};


const pageRedirect = () => {
  router.push({
    path: '/products/preview',
    query: {
      parameter: 2612
    }
  });
}

onUnmounted(() => {
  $('.summernote-editor').summernote('destroy');
});
// Lifecycle hook
onMounted(async () => {
  searchModels();
  searchmanuf();
  $('.summernote-editor').summernote({
    callbacks: {
      onChange: function (contents) {
        editorContent.value = contents;
        // emit('content-updated', editorContent.value);
      }
    }
  });

});


</script>
 

<style scoped>
.required-label::after {
  content: "\2605";
  color: red;
  margin-right: 4px;
}

/* CSS */
ol,
ul {
  padding-left: 0rem;
}

ul {
  list-style: none;
}

.bgColor {
  background-color: #c8c8c8;
  padding: 1px;
  border-radius: 2px;
}

.img-fluid {
  width: 300px;
  height: 150px;
}

.img-fluids {
  margin-top: 10px;
  width: 300px;
  height: 300px;
}

/* for checkbox */
.multiselect {
  position: relative;
  font-family: Arial, sans-serif;
  width: 100%;
}

.select-box {
  border: 1px solid #ccc;
  padding: 8px;
  cursor: pointer;
  background-color: #fff;
}

.dropdown {
  border: 1px solid #ccc;
  border-top: none;
  max-height: 400px;
  overflow-y: auto;
  position: absolute;
  top: 100%;
  width: 100%;
  background-color: #fff;
  z-index: 1;
}

label {
  display: block;
  padding: 5px;
}

input[type="checkbox"] {
  margin-right: 8px;
}

.widthtxtbox {
  width: 50px;
}
</style>
