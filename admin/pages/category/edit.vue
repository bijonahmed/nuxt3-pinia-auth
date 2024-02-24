<template>
    <title>Edit Category</title>
    <div>
      <div class="content-wrapper">
        <section class="content-header">
          <div class="container-fluid">
            <div class="row mb-2">
              <div class="col-sm-6">
                <p>Edit Category</p>
              </div>
              <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item">
                    <LazyNuxtLink to="/admin/dashboard">Home</LazyNuxtLink>
                  </li>
                  <li class="breadcrumb-item active">
                    <LazyNuxtLink to="/category/list">Back to List</LazyNuxtLink>
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
                            aria-selected="false">SEO</a>
                        </li>
  
                      </ul>
                    </div>
                    <div class="card-body">
                      <div class="tab-content" id="custom-tabs-three-tabContent">
                        <div class="tab-pane fade active show" id="custom-tabs-three-home" role="tabpanel"
                          aria-labelledby="custom-tabs-three-home-tab">
                          <!-- General  -->
                          <!-- General  -->
                          <div class="row mb-3 required">
                            <label for="input-name-1" class="col-sm-2 col-form-label required-label">Category Name</label>
                            <div class="col-sm-10">
                              <input type="text" name="name" placeholder="Category Name" v-model="insertdata.name"
                                class="form-control" />
                              <input type="hidden" name="id" id="id"  v-model="insertdata.id" class="form-control" />
                              <span class="text-danger" v-if="errors.name">{{ errors.name[0] }}</span>
  
                            </div>
                          </div>
  
                          <div class="row mb-3 required">
                            <label for="input-meta-title-1" class="col-sm-2 col-form-label">Meta Tag Title</label>
                            <div class="col-sm-10">
                              <input type="text" name="meta_title" value placeholder="Meta Tag Title" id="meta_title"
                                v-model="insertdata.meta_title" class="form-control" />
                              <div id="error-meta-title-1" class="invalid-feedback"></div>
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
                              <textarea name="meta_keyword" rows="5" id="meta_keyword" class="form-control"
                                v-model="insertdata.meta_keyword"
                                placeholder="fashion, women's clothing, men's clothing, accessories"></textarea>
                            </div>
                          </div>
  
                        </div>
                        <div class="tab-pane fade" id="custom-tabs-three-profile" role="tabpanel"
                          aria-labelledby="custom-tabs-three-profile-tab">
                          <!-- Data -->
                          <div class="row mb-3">
                            <label for="input-meta-description-1" class="col-sm-2 col-form-label">Parent</label>
                            <div class="col-sm-10">
                              <select class="form-control form-select-sm" aria-label=".form-select-sm example"
                                name="parent_id" id="parent_id" v-model="insertdata.parent_id">
                                <option selected value="">Select</option>
                                <!-- categories -->
                                <option v-for='data in categories' :value='data.id'>{{ data.name }}
                                </option>
                              </select>
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="input-meta-description-1" class="col-sm-2 col-form-label">Icon (393x491px)</label>
                            <div class="col-sm-10">
                              <input class="form-control form-control-sm" id="file" ref="file" @change="onFileSelected"
                                type="file">
                              <!-- <a href="https://icons8.com/" target="_blank">https://icons8.com/</a> -->
                            </div>
                          </div>
  
                          <div class="row mb-3 d-none">
                            <label for="input-meta-description-1" class="col-sm-2 col-form-label">For Mobile View</label>
                            <div class="col-sm-10">
                              <input class="form-control form-control-sm" type="text" placeholder="Add fontawsone class"
                                v-model="insertdata.mobile_view_class">
                              <a href="https://fontawesome.com/icons" target="_blank">https://fontawesome.com/icons</a>
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="input-meta-description-1" class="col-sm-2 col-form-label">Status</label>
                            <div class="col-sm-10">
                              <select class="form-control form-select-sm" aria-label=".form-select-sm example" name="status"
                                id="status">
                                <option selected value="1">Active</option>
                                <option value="0">Inactive</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane fade" id="custom-tabs-three-messages" role="tabpanel"
                          aria-labelledby="custom-tabs-three-messages-tab">
                          <!-- SEO -->
                          <div class="card">
                            <div class="card-body">
                              <div class="row mb-3">
                                <label for="input-meta-description-1" class="col-sm-2 col-form-label">Keyword</label>
                                <div class="col-sm-10">
                                  <input type="text" name="keyword"
                                    placeholder="Example: fashion, women's clothing, men's clothing, accessories"
                                    id="keyword" class="form-control" v-model="insertdata.keyword" />
                                  <div id="error-name-1" class="invalid-feedback"></div>
                                </div>
                              </div>
  
                              <button type="submit" class="btn btn-success px-5 w-100"><i
                                  class="bx bx-check-circle mr-1"></i> Submit</button>
  
                              <!-- <button type="submit" class="btn btn-success px-5 w-100"><i class="bx bx-check-circle mr-1"></i> Submit</button> -->
                            </div>
                          </div>
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
import { useRouter } from 'vue-router';
const router = useRouter();
import 'summernote/dist/summernote-bs4.css'; // Import Summernote CSS
import 'summernote'; // Import Summernote JS
import $ from 'jquery';
if (process.client) {
    window.Swal = swal;

}

definePageMeta({
    middleware: 'is-logged-out',
    title: 'Profile' // Set your desired page title here

})


const summernoteEditor = ref(null);
const insertdata = reactive({
    id: '',
    name: '',
    description: '',
    meta_title: '',
    meta_description: '',
    meta_keyword: '',
    parent_id: 0,
    mobile_view_class: '',
    keyword: '',
    status: '',
});
 

const categories = ref([]);
const errors = ref({});
const notifmsg = ref('');
 

const fetchDataParent = async () => {
  try {
    const response = await axios.get(`/category/getCategoryListParent`);
    categories.value = response.data;
  } catch (error) {
    console.error(error);
  }
};

const onFileSelected = () => {
  file.value = document.querySelector('input[type="file"]').files[0];
};


const saveData = () => {
  const formData = new FormData();
  formData.append('file', file.value);
  formData.append('id', insertdata.id);
  formData.append('name', insertdata.name);
  formData.append('mobile_view_class', insertdata.mobile_view_class);
  formData.append('description', insertdata.description);
  formData.append('meta_title', insertdata.meta_title);
  formData.append('meta_description', insertdata.meta_description);
  formData.append('meta_keyword', insertdata.meta_keyword);
  formData.append('parent_id', insertdata.parent_id);
  formData.append('status', insertdata.status);
  formData.append('keyword', insertdata.keyword);
  const headers = {
    'Content-Type': 'multipart/form-data'
  };
  axios.post('/category/save', formData, { headers })
    .then((res) => {
      document.getElementById('formrest').reset();
      success_noti();
      router.push('/category/list');
    }).catch(error => {
      if (error.response && error.response.status === 422) {
        errors.value = error.response.data.errors;
      } else {
        // Handle other types of errors here
        console.error('An error occurred:', error);
      }
    });
};

const success_noti = () => {
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


 
//Find Product Row
const categoryrow = () => {
    const category_id = router.currentRoute.value.query.id;
    //console.log("----" + category_id);
    axios.get(`/category/categoryRow/${category_id}`).then(response => {
        //console.log("====" + response.data.product_imgs);
        //return false; 
        insertdata.id = response.data.data.id;
        insertdata.name = response.data.data.name;
        insertdata.mobile_view_class = response.data.data.mobile_view_class;
        insertdata.description = response.data.data.description ? response.data.data.description : "";
        insertdata.meta_title = response.data.data.meta_title;
        insertdata.meta_description = response.data.data.meta_description;
        insertdata.meta_keyword = response.data.data.meta_keyword;
        insertdata.parent_id = response.data.data.parent_id;
        insertdata.status = response.data.data.status;
        insertdata.keyword = response.data.data.keyword;

    });
};
 
// Call the loadeditor function when the component is mounted
onMounted(async () => {
    categoryrow();
    await fetchDataParent();


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

.autocomplete-list {
    list-style: none;
    padding: 0;
    margin: 0;
    position: absolute;
    background-color: #fff;
    border: 1px solid #ccc;
    border-top: none;
    max-height: 200px;
    overflow-y: auto;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    z-index: 1000;
    width: 100%;
}

.autocomplete-item {
    padding: 8px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.autocomplete-item:hover {
    background-color: #f2f2f2;
}

.checkbox-wrapper {
    display: flex;

}
</style>
