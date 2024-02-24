<template>
    <title>My Profile</title>
    <!--start page wrapper -->

    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Profile</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">

                            <li class="breadcrumb-item">
                                <LazyNuxtLink to="/admin/dashboard">Home</LazyNuxtLink>
                            </li>
                            <li class="breadcrumb-item active">User Profile</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">

                        <div class="card card-primary card-outline">
                            <div class="card-body box-profile">
                                <div class="text-center">
                                    <img class="profile-user-img img-fluid img-circle" src="/dist/img/avatar5.png"
                                        alt="User profile picture">
                                </div>
                                <h3 class="profile-username text-center">{{ insertdata.name }}</h3>
                                <p class="text-muted text-center">{{ insertdata.rname }}</p>

                            </div>

                        </div>

                    </div>

                    <div class="col-md-9">
                        <div class="card">
                            <div class="card-header p-2">
                                <ul class="nav nav-pills">
                                    <li class="nav-item"><a class="nav-link active" href="#settings"
                                            data-toggle="tab">Settings</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#activity" data-toggle="tab">Change
                                            Password</a></li>

                                </ul>
                            </div>
                            <div class="card-body">
                                <div class="tab-content">

                                    <div class="active tab-pane" id="settings">

                                        <form @submit.prevent="updateprofile()" id="userSubmitFrm" class="form-horizontal"
                                            enctype="multipart/form-data">
                                            <div class="card">
                                                <div class="card-body">
                                                    <div class="row mb-3">
                                                        <div class="col-sm-3">
                                                            <span class="mb-0">Full Name</span>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <input type="text" class="form-control"
                                                                v-model="insertdata.name" />
                                                            <span class="text-danger" v-if="errors.name">{{ errors.name[0]
                                                            }}</span>

                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-sm-3">
                                                            <span class="mb-0">Email</span>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <input type="text" class="form-control"
                                                                v-model="insertdata.email" />
                                                            <span class="text-danger" v-if="errors.email">{{ errors.email[0]
                                                            }}</span>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-sm-3">
                                                            <span class="mb-0">Phone</span>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <input type="text" class="form-control"
                                                                v-model="insertdata.phone_number" />
                                                            <span class="text-danger" v-if="errors.phone_number">{{
                                                                errors.phone_number[0] }}</span>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-sm-3">
                                                            <span class="mb-0">Address</span>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <input type="text" class="form-control"
                                                                v-model="insertdata.address" />
                                                            <span class="text-danger" v-if="errors.address">{{
                                                                errors.address[0] }}</span>
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <div class="col-sm-3">
                                                            <span class="mb-0">Website</span>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <input type="text" class="form-control"
                                                                v-model="insertdata.website" />

                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-sm-3">
                                                            <span class="mb-0">Github</span>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <input type="text" class="form-control"
                                                                v-model="insertdata.github" />

                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-sm-3">
                                                            <span class="mb-0">Twitter</span>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <input type="text" class="form-control"
                                                                v-model="insertdata.twitter" />

                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-sm-3">
                                                            <span class="mb-0">Instagram</span>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <input type="text" class="form-control"
                                                                v-model="insertdata.instagram" />

                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-sm-3">
                                                            <span class="mb-0">Facebook</span>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <input type="text" class="form-control"
                                                                v-model="insertdata.facebook" />

                                                        </div>
                                                    </div>

                                                    <div class="row mb-3 d-none">
                                                        <div class="col-sm-3">
                                                            <span class="mb-0">Profile Picture</span>
                                                        </div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <input type="file" ref="file" @change="onFileSelected"
                                                                class="form-control" id="file" name="file" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-sm-3"></div>
                                                        <div class="col-sm-9 text-secondary">
                                                            <button type="submit" class="btn btn-success px-5 w-100"><i
                                                                    class="bx bx-check-circle mr-1"></i> Submit</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>

                                    </div>

                                    <div class="tab-pane" id="activity">

                                        <form @submit.prevent="updatePass()" id="formrest" class="forms-sample"
                                            enctype="multipart/form-data">
                                            <div class="row mb-3">
                                                <label for="inputEnterYourName"
                                                    class="col-sm-3 col-form-label">Password</label>
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control password"
                                                        v-model="passdata.password" id="password" placeholder="Password">
                                                    <span class="text-danger" v-if="errors.password">{{ errors.password[0]
                                                    }}</span>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="inputConfirmPassword2" class="col-sm-3 col-form-label">Confirm
                                                    Password</label>
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control password_confirmation"
                                                        v-model="passdata.password_confirmation" id="password_confirmation"
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

                    </div>

                </div>

            </div>
        </section>

    </div>
    <!--end page wrapper -->
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
    title: 'Profile' // Set your desired page title here

})
const file = ref(null);
const insertdata = reactive({
    name: '',
    email: '',
    phone_number: '',
    rname: '',
    address: '',
    website: '',
    github: '',
    twitter: '',
    instagram: '',
    facebook: '',
    image: ''
});

const passdata = reactive({
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
    axios.get(`/auth/showProfileData`).then(response => {
        insertdata.name = response.data.data.name;
        insertdata.email = response.data.data.email;
        insertdata.phone_number = response.data.data.phone_number;
        insertdata.address = response.data.data.address;
        insertdata.website = response.data.data.website;
        insertdata.github = response.data.data.github;
        insertdata.twitter = response.data.data.twitter;
        insertdata.instagram = response.data.data.instagram;
        insertdata.facebook = response.data.data.facebook;
        previewUrl.value = response.data.dataImg;
        insertdata.rname = response.data.rname;
    });
};

const updateprofile = () => {
    const formData = new FormData();
    formData.append('file', file);
    formData.append('name', insertdata.name);
    formData.append('email', insertdata.email);
    formData.append('phone_number', insertdata.phone_number);
    formData.append('website', insertdata.website);
    formData.append('github', insertdata.github);
    formData.append('twitter', insertdata.twitter);
    formData.append('instagram', insertdata.instagram);
    formData.append('facebook', insertdata.facebook);
    formData.append('address', insertdata.address);
    const headers = {
        'Content-Type': 'multipart/form-data'
    };
    axios.post('/auth/updateprofile', formData, { headers })
        .then((res) => {
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


const updatePass = () => {
    const formData = new FormData();
    formData.append('password', passdata.password);
    formData.append('password_confirmation', passdata.password_confirmation);
    const headers = {
        'Content-Type': 'multipart/form-data'
    };
    axios.post('/auth/updatePassword', formData, { headers })
        .then((res) => {
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

// Call the loadeditor function when the component is mounted
onMounted(async () => {
    checkRow();

});

</script>
  