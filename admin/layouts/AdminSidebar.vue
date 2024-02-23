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
								<!-- <span class="badge badge-info right">{{ item.badge }}</span> -->
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
		label: 'My Products',
		icon: 'fa-folder',
		badge: '6',
		open: false,
		route: null,
		children: [
			{ label: 'Products', icon: 'fa-circle', route: '/products/list' },
			{ label: 'Orders', icon: 'fa-circle', route: '/orders/list' }
		]
	},
	{
		label: 'Customer',
		icon: 'fa-folder',
		badge: '',
		open: false,
		route: null,
		children: [
			{ label: 'Customer Add', icon: 'fa-circle', route: '/charts/chartjs' },
			{ label: 'Customer List', icon: 'fa-circle', route: '/charts/flot' }
		]
	},
	{
		label: 'User Management',
		icon: 'fa-folder',
		badge: '',
		open: false,
		route: null,
		children: [
			{ label: 'User Role', icon: 'fa-circle', route: '/charts/chartjs' },
			{ label: 'User List', icon: 'fa-circle', route: '/charts/flot' }
		]
	},
	{
		label: 'Setting Management',
		icon: 'fa-folder',
		badge: '',
		open: false,
		route: null,
		children: [
			{ label: 'Category', icon: 'fa-circle', route: '/category/list' },
			{ label: 'Attributes', icon: 'fa-circle', route: '#' },
			{ label: 'Brands', icon: 'fa-circle', route: '#' },
			{ label: 'Sliders', icon: 'fa-circle', route: '#' },
			{ label: 'Pre-Setting', icon: 'fa-circle', route: '#' }
		]
	}
]);

const toggleMenu = (item) => {
	item.open = !item.open;
};
</script>

