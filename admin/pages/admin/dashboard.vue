<template>
    <title>Admin Dashboard</title>
    <!--start page wrapper -->

    <div class="content-wrapper mt-3">
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <center>
                    <div class="loading-indicator" v-if="loading" style="text-align: center;">
                        <Loader />
                    </div>
                  </center>
                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-info"><i class="far fa-envelope"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">Messages</span>
                                <span class="info-box-number">1,410</span>
                            </div>

                        </div>

                    </div>

                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-success"><i class="far fa-flag"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">Bookmarks</span>
                                <span class="info-box-number">410</span>
                            </div>

                        </div>

                    </div>

                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-warning"><i class="far fa-copy"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">Uploads</span>
                                <span class="info-box-number">13,648</span>
                            </div>

                        </div>

                    </div>

                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-danger"><i class="far fa-star"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">Likes</span>
                                <span class="info-box-number">93,139</span>
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

import { useUserStore } from '~~/stores/user'
import { storeToRefs } from 'pinia';
const router = useRouter()
const userStore = useUserStore()

const { email } = storeToRefs(userStore)
const loading =ref(true)
definePageMeta({
    middleware: 'is-logged-out',

})

onMounted(async () => {
    // After 5 seconds, hide the loading indicator
    setTimeout(() => {
        loading.value = false; // Hide the loading indicator after 5 seconds
    }, 500);


    try {
        await userStore.getUser()
    } catch (error) {
        //  console.log(error)
    }
})


</script>
