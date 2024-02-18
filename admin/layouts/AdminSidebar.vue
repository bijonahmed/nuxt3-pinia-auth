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
                <li class="nav-item">
                    <LazyNuxtLink to="/user/my-profile" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>Profile</p>
                    </LazyNuxtLink>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-copy"></i>
                        <p>
                            Layout Options
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="pages/layout/top-nav.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Top Navigation</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/layout/top-nav-sidebar.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Top Navigation + Sidebar</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-chart-pie"></i>
                        <p>
                            Charts
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="pages/charts/chartjs.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>ChartJS</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/charts/flot.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Flot</p>
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
import { ref, onMounted } from 'vue';

const sidebar = ref(null);

onMounted(() => {
	//$(document).ready(function () {
        // Add click event listener to the nav-link with the right angle icon
		$('.nav-item.has-treeview > .nav-link > .right').click(function (e) {
            // Prevent the default link behavior
            e.preventDefault();
            
            // Toggle the 'menu-open' class on the parent list item
            $(this).closest('.nav-item.has-treeview').toggleClass('menu-open');
        });
  //  });
});
</script>