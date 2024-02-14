<template>
<div>
    <title>Login</title>
    <div class="container">
        <h1>This Login pages</h1>
        <hr />

        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">Login</div>
                    <div class="card-body">
                        <form @submit.prevent="login()">
                            <div class="mb-3">
                                <label for="username" class="form-label">Email</label>
                                <input type="text" class="form-control" id="email" v-model="email" placeholder="Enter email">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" v-model="password" placeholder="Enter password">
                            </div>
                            <button type="submit" class="btn btn-primary">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</template>

<script setup>
import axios from 'axios';
import {
    useUserStore
} from '~~/stores/user';
import AdminLayout from '~/layouts/AdminLayout.vue';
const userStore = useUserStore()
const router = useRouter()

definePageMeta({
    middleware: 'is-logged-in'
})

let email = ref(null)
let password = ref(null)
let errors = ref(null)

const login = async () => {
    
    errors.value = null
    try {
        await userStore.login(email.value, password.value);
        const token = window.localStorage.getItem('token');
        console.log("My token: " + token);
        if (token) {
            axios.defaults.headers.common['Authorization'] = 'Bearer ' + userStore.api_token;
        }
        console.log("get token from login: " + token);
        router.push('/admin/dashboard')
    } catch (error) {
        console.log("erros-------: " + error);
        errors.value = error.response.errors
    }
}
</script>
