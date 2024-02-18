<template>
	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<LazyNuxtLink to="/admin/dashboard" class="brand-link">
			<img src="/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
				style="opacity: .8">
			<span class="brand-text font-weight-light">FutureGenIT</span>
		</LazyNuxtLink>

		<div class="sidebar" ref="sidebar">
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
					<li class="nav-item" v-for="(item, index) in menuItems" :key="index"
						:class="{ 'menu-open': item.open }">
						<router-link v-if="item.route" :to="item.route" class="nav-link" @click="toggleMenu(item)">
							<i class="nav-icon fas" :class="item.icon"></i>
							<p>
								{{ item.label }}
								<!-- <i class="fas fa-angle-left right"></i>
								<span class="badge badge-info right">{{ item.badge }}</span> -->
							</p>
						</router-link>
						<a href="#" v-else class="nav-link" @click="toggleMenu(item)">
							<i class="nav-icon fas" :class="item.icon"></i>
							<p>
								{{ item.label }}
								<i class="fas fa-angle-left right"></i>
								<span class="badge badge-info right">{{ item.badge }}</span>
							</p>
						</a>
						<ul class="nav nav-treeview" v-if="item.children">
							<li class="nav-item" v-for="(childItem, childIndex) in item.children" :key="childIndex">
								<router-link v-if="childItem.route" :to="childItem.route" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>{{ childItem.label }}</p>
								</router-link>
								<a v-else href="#" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>{{ childItem.label }}</p>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>

	</aside>
</template>

<script setup>
import { ref } from 'vue';
import { useRouter } from 'vue-router';

const router = useRouter();

const menuItems = ref([
	
	{
		label: 'Profile',
		icon: 'fa-th',
		badge: 'New',
		open: false,
		route: '/user/my-profile',
		children: null
	},
	{
		label: 'Layout Options',
		icon: 'fa-copy',
		badge: '6',
		open: false,
		route: null,
		children: [
			{ label: 'Top Navigation', icon: 'fa-circle', route: '/layout/top-navigation' },
			{ label: 'Top Navigation + Sidebar', icon: 'fa-circle', route: '/layout/top-navigation-sidebar' }
		]
	},
	{
		label: 'Charts',
		icon: 'fa-chart-pie',
		badge: '',
		open: false,
		route: null,
		children: [
			{ label: 'ChartJS', icon: 'fa-circle', route: '/charts/chartjs' },
			{ label: 'Flot', icon: 'fa-circle', route: '/charts/flot' }
		]
	}
]);

const toggleMenu = (item) => {
	item.open = !item.open;
};
</script>