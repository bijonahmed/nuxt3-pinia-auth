<template>
    <div>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <LazyNuxtLink class="navbar-brand" to="/">Navbar</LazyNuxtLink>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <LazyNuxtLink class="nav-link active" aria-current="page" to="/">Home</LazyNuxtLink>
                        </li>
                        <li class="nav-item" v-if="!isLoggedIn">
                            <LazyNuxtLink class="nav-link" to="/cart">My Cart</LazyNuxtLink>
                        </li>
                        <li class="nav-item" v-if="!isLoggedIn">
                            <LazyNuxtLink class="nav-link" to="/auth/register">Register</LazyNuxtLink>
                        </li>


                        <li class="nav-item" v-if="!isLoggedIn">
                            <LazyNuxtLink class="nav-link" to="/auth/login">Login</LazyNuxtLink>
                        </li>

                        <li class="nav-item" v-if="isLoggedIn">
                            <lazyNuxtLinkAdmin class="nav-link" to="/dashboard">Admin Dashboard</lazyNuxtLinkAdmin>
                        </li>

                        <li class="nav-item" v-if="isLoggedIn">
                            <lazyNuxtLinkAdmin class="nav-link" to="/brand/brand-list">Brands</lazyNuxtLinkAdmin>
                        </li>

                        <li class="nav-item" v-if="isLoggedIn">
                            <a href="#" class="nav-link" @click="logout()">Logout</a>
                        </li>
                    </ul>

                </div>
            </div>
            <slot />
        </nav>

    </div>
</template>

<script setup>
import {
    useUserStore
} from '~~/stores/user'
import {
    storeToRefs
} from 'pinia';
import {
    useCartStore
} from '~~/stores/cart';
const userStore = useUserStore();
const {
    isLoggedIn
} = storeToRefs(userStore)
const cartStore = useCartStore()
computed(async () => {
    try {
        await userStore.getUser()
    } catch (error) { }
})


//const login = async () => 

const logout = async () => {
    let res = confirm('Are you sure you want to sign out?')
    try {
        if (res) {
            await userStore.logout()
            localStorage.removeItem('token');
            //router.push('/login')
            window.location.href = '/login';
          //  this.$router.push({ name: 'login' })
            return
        }
    } catch (error) {
        console.log(error)
    }
}
</script>
