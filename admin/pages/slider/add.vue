<template>
    <title>Add Slider</title>
    <div>
        <div class="content-wrapper">
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <p>Add Slider</p>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item">
                                    <LazyNuxtLink to="/admin/dashboard">Home</LazyNuxtLink>
                                </li>
                                <li class="breadcrumb-item active">
                                    <LazyNuxtLink to="/slider/list">Back to List</LazyNuxtLink>
                                </li>

                            </ol>
                        </div>
                    </div>
                </div>
            </section>
            <section class="content">
                <div class="container-fluid">
                    <!-- Start -->
                    <div class="card border-top border-0 border-4 border-info">
                        <div class="card-body">
                            <div class="border p-4 rounded">
                                <form @submit.prevent="saveData()" id="formrest" class="forms-sample"
                                    enctype="multipart/form-data">
                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Slug</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control name" v-model="insertdata.redirect_url"
                                                id="redirect_url" placeholder="Slug">
                                            <span class="text-danger" v-if="errors.redirect_url">{{ errors.redirect_url[0]
                                            }}</span>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Thumbnail
                                            Image</label>
                                        <div class="col-sm-9">
                                            <input type="file" value class="form-control" id="fileInput"
                                                accept="image/png,image/jpeg" ref="files" @change="onFileSelected" />
                                            <span class="text-danger" v-if="errors.files">{{ errors.files[0] }}</span>
                                            <img v-if="previewUrl" :src="previewUrl" alt="Preview" class="img-fluids" />
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputConfirmPassword2" class="col-sm-3 col-form-label">Status</label>
                                        <div class="col-sm-9">
                                            <select name="status" v-model="insertdata.status" class="form-control">
                                                <option value="1" selected>Active</option>
                                                <option value="0">Inactive</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label class="col-sm-3 col-form-label"></label>
                                        <div class="col-sm-9">
                                            <button type="submit" class="btn btn-success px-5 w-100"><i
                                                    class="bx bx-check-circle mr-1"></i> Submit</button>
                                        </div>
                                    </div>
                                </form>

                            </div>
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
import { useRouter } from 'vue-router';
import swal from 'sweetalert2';
window.Swal = swal;


definePageMeta({
    middleware: 'is-logged-out',
})

const previewUrl = ref(null);
//const files = ref(null);
const file = ref(null);
const insertdata = reactive({
    id: '',
    redirect_url: '',
    status: 1,
});

const errors = ref({});
const notifmsg = ref('');
const router = useRouter();

const checkImageDimensionsThunbnail = (file) => {
    const reader = new FileReader();
    reader.onload = (e) => {
        const img = new Image();
        img.src = e.target.result;
        img.onload = () => {
            previewUrl.value = e.target.result;
        };
    };
    reader.readAsDataURL(file);
    //resetInput();
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

const saveData = () => {
    const formData = new FormData();
    formData.append('files', file.value);
    formData.append('id', insertdata.id);
    formData.append('redirect_url', insertdata.redirect_url);
    formData.append('status', insertdata.status);

    const headers = {
        'Content-Type': 'multipart/form-data'
    };
    axios.post('/setting/insertSlider', formData, { headers })
        .then((res) => {
            document.getElementById('formrest').reset();
            success_noti();
            router.push('/slider/list');
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

</script>
   
