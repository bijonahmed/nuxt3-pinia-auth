<template>
    <title>Add Brand</title>
    <div>
        <div class="row">
            <div class="col-10">Add Brand</div>
            <div class="col-2">
                <lazyNuxtLinkAdmin to="/brand/brand-list" class="btn btn-primary text-right">Backt to Brand</lazyNuxtLinkAdmin>
            </div>
        </div>

        <hr />

        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">Add Brand</div>
                    <div class="card-body">
                        <form @submit.prevent="saveData()">
                            <div class="mb-3">
                                <label for="username" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" v-model="insertdata.name"
                                    placeholder="Enter name">
                                <span class="text-danger" v-if="errors.name">{{ errors.name[0] }}</span>
                            </div>

                            <div class="mb-3">
                                <label for="username" class="form-label">Status</label>


                                <select id="cars" v-model="insertdata.status">
                                    <option value="1" selected>Active</option>
                                    <option value="2">Inactive</option>
                                </select>
                                <span class="text-danger" v-if="errors.status">{{ errors.status[0] }}</span>
                            </div>

                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
</template>
<script setup>
const router = useRouter()
definePageMeta({
    middleware: 'is-logged-out',
})
import axios from "axios";
const insertdata = ref({

    name: '',
    status: '',
})

const notifmsg = ref('')
const errors = ref({})

const saveData = async () => {
    const formData = new FormData();
    formData.append('name', insertdata.value.name);
    formData.append('status', insertdata.value.status);
    const headers = {
        'Content-Type': 'multipart/form-data'
    };
    try {
        const res = await axios.post('/brands/save', formData, { headers });
        console.log("Success : " + res.data.message);

        const Toast = Swal.mixin({
            toast: true,
            position: "top-end",
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.onmouseenter = Swal.stopTimer;
                toast.onmouseleave = Swal.resumeTimer;
            }
        });

        Toast.fire({
            icon: "success",
            title: "Has been successfully added"
        });
        router.push('/admin/brand/brand-list')

    } catch (error) {
        if (error.response && error.response.status === 422) {
            errors.value = error.response.data.errors;
        } else {
            console.error("An error occurred:", error);
        }
    }
}

onMounted(() => {
    // test();
    // brandlist(); // Call the brandlist function when the component is mounted
});
</script>
