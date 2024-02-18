<template>
    <title>My Profile</title>
    <!--start page wrapper -->
    
    <div class="content-wrapper mt-3">
        <section class="content">
            <div class="container-fluid">
                 <h1>My Profile</h1>

            </div>
        </section>

    </div>
    <!--end page wrapper -->
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
        //  console.log(error)
    }
})

</script>
