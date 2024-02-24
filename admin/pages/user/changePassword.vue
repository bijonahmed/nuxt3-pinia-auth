<template>
    <title>Change Password</title>
    <div>
        <div class="content-wrapper">
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <p>Change Password</p>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item">
                                    <LazyNuxtLink to="/admin/dashboard">Home</LazyNuxtLink>
                                </li>
                                <li class="breadcrumb-item active">
                                    <LazyNuxtLink to="/user/user-list">Back to List</LazyNuxtLink>
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
                        <div class="card-body">
                            <div class="border p-4 rounded">
                                <center>
                                    <div v-for="(errorArray, idx) in notifmsg" :key="idx">
                                        <div v-for="(allErrors, idx) in errorArray" :key="idx">
                                            <span class="text-danger">{{ allErrors }} </span>
                                        </div>
                                    </div>
                                </center>
                                <form @submit.prevent="saveData()" id="formrest" class="forms-sample"
                                    enctype="multipart/form-data">
                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Password</label>
                                        <div class="col-sm-9">
                                            <input type="hidden" class="form-control id" v-model="insertdata.id" id="id">
                                            <input type="password" class="form-control password" v-model="insertdata.password"
                                                id="password" placeholder="Password">
                                            <span class="text-danger" v-if="errors.password">{{ errors.password[0] }}</span>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputConfirmPassword2" class="col-sm-3 col-form-label">Confirm
                                            Password</label>
                                        <div class="col-sm-9">
                                            <input type="password" class="form-control password_confirmation"
                                                v-model="insertdata.password_confirmation" id="password_confirmation"
                                                placeholder="Confirm Password">
                                            <span class="text-danger" v-if="errors.password_confirmation">{{
                                                errors.password_confirmation[0] }}</span>
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
import swal from 'sweetalert2';
import { useRouter } from 'vue-router';
const router = useRouter();

if (process.client) {
    window.Swal = swal;

}

definePageMeta({
    middleware: 'is-logged-out',

})
const file = ref(null);
const insertdata = reactive({
    id: '',
    password: '',
    password_confirmation: '',
});

const previewUrl = ref(null);
const errors = ref({});
const allrole = ref({});
const notifmsg = ref('');

//Find Product Row
const checkRow = () => {
    const id = router.currentRoute.value.query.parameter;
    axios.get(`/user/getUserRow/${id}`).then(response => {
        insertdata.id = response.data.data.id;

    });
};

const saveData = () => {
    const formData = new FormData();
    formData.append('id', insertdata.id);
    formData.append('password', insertdata.password);
    formData.append('password_confirmation', insertdata.password_confirmation)


    const headers = {
        'Content-Type': 'multipart/form-data'
    };
    axios.post('/user/changePassword', formData, { headers })
        .then((res) => {
            document.getElementById('formrest').reset();
            success_noti();
            router.push('/user/user-list');
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

const getRuleList = () => {

    axios.get(`/user/getRoleList`).then(response => {
        //console.log("product row:" + response.data.data.id);
        allrole.value = response.data.data;;
    });
};

// Call the loadeditor function when the component is mounted
onMounted(async () => {
    checkRow();
    getRuleList();
});

</script>
 
<style scoped>
.img_slide {
    max-height: 500px;
    width: 60%;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 0 20px #3f51b514;
    margin: 20px 0px;
    /* min-width: 350px; */
    /* margin: 10px 8px; */
    height: 100%;
}

.img_slide a {
    /* height: 100% !important; */
    width: 100%;
    display: block;
    height: 400px;
}

.img_slide a img {
    max-height: 400px;
    width: 100%;
    object-fit: cover;
    height: 100%;
}
</style>