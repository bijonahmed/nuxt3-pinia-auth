<template>
    <div>
        <h1>Admin Dashboard</h1>
        {{ email }}
    </div>
</template>

<script setup>

import { useUserStore } from '~~/stores/user'
import { storeToRefs } from 'pinia';
const router = useRouter()
const userStore = useUserStore()

const { email } = storeToRefs(userStore)

definePageMeta({
    middleware: 'is-logged-out',
    title: 'Profile' // Set your desired page title here

})

onMounted(async () => {
    try {
        await userStore.getUser()
    } catch (error) {
        console.log(error)
    }
})

</script>
