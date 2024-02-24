<template>
    <title>Pre-Setting</title>
    <div>
        <div class="content-wrapper">
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <p>Pre-Setting</p>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item">
                                    <LazyNuxtLink to="/admin/dashboard">Home</LazyNuxtLink>
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
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Company name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control name" v-model="insertdata.name" id="name"
                                                placeholder="Company name">
                                            <span class="text-danger" v-if="errors.name">{{ errors.name[0] }}</span>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Email</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control email" v-model="insertdata.email"
                                                placeholder="Email">
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Address</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control address" v-model="insertdata.address"
                                                placeholder="Address">
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">WhatsApp</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control whatsApp" v-model="insertdata.whatsApp"
                                                placeholder="WhatsApp">
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Business
                                            Description</label>
                                        <div class="col-sm-9">
                                            <textarea class="form-control description" v-model="insertdata.description"
                                                placeholder="Business Description"></textarea>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Currency</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control currency" v-model="insertdata.currency"
                                                placeholder="Currency">
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">FB Link</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control fblink" v-model="insertdata.fblink"
                                                placeholder="FBlink">
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Website</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control website" v-model="insertdata.website"
                                                placeholder="Website">
                                        </div>
                                    </div>

                                    <hr />

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Bkash Number</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control bkash_number"
                                                v-model="insertdata.bkash_number" placeholder="Bkash Number">
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Bkash Fee</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control bkash_fee" v-model="insertdata.bkash_fee"
                                                placeholder="Bkash Fee">
                                        </div>
                                    </div>

                                    <hr />

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Nagad Number</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control nagad_number"
                                                v-model="insertdata.nagad_number" placeholder="Nagad Number">
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Nagad Fee</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control nagad_fee" v-model="insertdata.nagad_fee"
                                                placeholder="Nagad Fee">
                                        </div>
                                    </div>

                                    <hr />
                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Rocket
                                            Number</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control rocket_number"
                                                v-model="insertdata.rocket_number" placeholder="Rocket Number">
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Rocket Fee</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control rocket_fee"
                                                v-model="insertdata.rocket_fee" placeholder="Rocket Fee">
                                        </div>
                                    </div>

                                    <hr />

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Upay Number</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control upay_number"
                                                v-model="insertdata.upay_number" placeholder="Upay Number">
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Upay Fee</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control upay_fee" v-model="insertdata.upay_fee"
                                                placeholder="Upay Fee">
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Wallet
                                            Blance</label>
                                        <div class="col-sm-9">
                                            <input type="number" class="form-control wallet_balance" @keypress="hanyaAngka"
                                                v-model="insertdata.wallet_balance" placeholder="Wallet Blance">
                                            <span class="text-danger" v-if="errors.wallet_balance">{{
                                                errors.wallet_balance[0] }}</span>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Shipping Fee</label>
                                        <div class="col-sm-9">
                                            <input type="number" class="form-control hanyaAngka" @keypress="hanyaAngka"
                                                v-model="insertdata.shipping_fee" placeholder="Shipping Fee">
                                            <span class="text-danger" v-if="errors.shipping_fee">{{ errors.shipping_fee[0]
                                            }}</span>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Vat Percentage
                                            (%)</label>
                                        <div class="col-sm-9">
                                            <input type="number" class="form-control hanyaAngka" @keypress="hanyaAngka"
                                                v-model="insertdata.vat_percentage" placeholder="Vat Percentage">
                                            <span class="text-danger" v-if="errors.vat_percentage">{{
                                                errors.vat_percentage[0] }}</span>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Copyright</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control copyright" v-model="insertdata.copyright"
                                                placeholder="Copyright">
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
    name: '',
    email: '',
    address: '',
    whatsApp: '',
    description: '',
    website: '',
    copyright: '',
    currency: '',
    fblink: '',
    bkash_number: '',
    bkash_fee: '',
    nagad_number: '',
    nagad_fee: '',
    rocket_number: '',
    rocket_fee: '',
    upay_number: '',
    upay_fee: '',
    wallet_balance: '',
    shipping_fee: '',
    vat_percentage: '',
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
            formData.append('name', insertdata.name);
            formData.append('email', insertdata.email);
            formData.append('address', insertdata.address);
            formData.append('whatsApp', insertdata.whatsApp);
            formData.append('description', insertdata.description);
            formData.append('copyright', insertdata.copyright);
            formData.append('currency', insertdata.currency);
            formData.append('fblink', insertdata.fblink);
            formData.append('bkash_number', insertdata.bkash_number);
            formData.append('bkash_fee', insertdata.bkash_fee);
            formData.append('nagad_number', insertdata.nagad_number);
            formData.append('nagad_fee', insertdata.nagad_fee);
            formData.append('rocket_number', insertdata.rocket_number);
            formData.append('rocket_fee', insertdata.rocket_fee);
            formData.append('upay_number', insertdata.upay_number);
            formData.append('upay_fee', insertdata.upay_fee);
            formData.append('wallet_balance', insertdata.wallet_balance);
            formData.append('shipping_fee', insertdata.shipping_fee);
            formData.append('vat_percentage', insertdata.vat_percentage);
            formData.append('website', insertdata.website);

    const headers = {
        'Content-Type': 'multipart/form-data'
    };
    axios.post('/setting/upateSetting', formData, { headers })
        .then((res) => {
            
            success_noti();
            router.push('/setting/presetting');
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


const loadingRow = () => {
    const id = router.currentRoute.value.query.parameter;
    //console.log("----" + category_id);
    axios.get(`/setting/settingrow`).then(response => {
        console.log("====" + response.data.data.name);
        //return false; 
        insertdata.name = response.data.data.name;
        insertdata.email = response.data.data.email;
        insertdata.address = response.data.data.address;
        insertdata.whatsApp = response.data.data.whatsApp;
        insertdata.description = response.data.data.description;
        insertdata.copyright = response.data.data.copyright;
        insertdata.currency = response.data.data.currency;
        insertdata.fblink = response.data.data.fblink;
        insertdata.bkash_number = response.data.data.bkash_number;
        insertdata.bkash_fee = response.data.data.bkash_fee;
        insertdata.nagad_number = response.data.data.nagad_number;
        insertdata.nagad_fee = response.data.data.nagad_fee;
        insertdata.rocket_number = response.data.data.rocket_number;
        insertdata.rocket_fee = response.data.data.rocket_fee;
        insertdata.upay_number = response.data.data.upay_number;
        insertdata.upay_fee = response.data.data.upay_fee;
        insertdata.wallet_balance = response.data.data.wallet_balance;
        insertdata.shipping_fee = response.data.data.shipping_fee;
        insertdata.vat_percentage = response.data.data.vat_percentage;
        insertdata.website = response.data.data.website;
        //previewUrl.value = response.data.images;

    });
};

// Call the loadeditor function when the component is mounted
onMounted(async () => {
    loadingRow();

});



</script>
   
