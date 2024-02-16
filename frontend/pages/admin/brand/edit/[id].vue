<template>
    <title>Edit Data</title>
    <div>
        EDIT
    </div>
</template>


<script setup>
const router = useRoute()
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


const getParmaId = () => {
    const id = router.params.id
    alert("ID:" + id);

}

onMounted(() => {
    getParmaId();

});
</script>



