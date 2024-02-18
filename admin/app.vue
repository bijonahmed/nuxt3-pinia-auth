
<template>
	<!-- <div v-if="isLoggedIn"> -->
	<div  v-if="isLoggedIn"> 
		<body class="hold-transition sidebar-mini layout-fixed">
			<div class="wrapper">
				<AdminHeader />
				<AdminSidebar />
			</div>
		</body>
	</div>
	<VitePwaManifest />
		<NuxtPage />
</template>
  
<script setup>
import AdminHeader from '~~/layouts/AdminHeader.vue';
import AdminSidebar from '~~/layouts/AdminSidebar.vue';
import AdminFooter from '~~/layouts/AdminFooter.vue';
import { computed } from 'vue';
import { useUserStore } from '~~/stores/user';
const userStore = useUserStore();
const isLoggedIn = computed(() => userStore.isLoggedIn);
</script>
  