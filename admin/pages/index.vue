<template>
	<title>Welcome to Admin </title>
	<div class="Login">
		<div class="section">
			<div class="login bg-white m-4">
				<h1 class="text-center">
					<svg class="img" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
						viewBox="0 0 16 16">
						<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
						<path fill-rule="evenodd"
							d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
					</svg>
				</h1>
				<!-- <h1 class="text-center">Login Here!</h1> -->

				<div id="error-alert" class="alert alert-danger" role="alert" style="display: none;"></div>

				<form class="" @submit.prevent="login()">
					<div class="form-group">
						<small>Email Address</small>
						<input class="form-control" type="email" id="email" placeholder="Enter Email" v-model="email" />
					</div>

					<div class="form-group">
						<small>Password</small>
						<input class="form-control" type="password" id="password" placeholder="Enter Password"
							v-model="password" />

					</div>
					<input class="btn btn-primary w-100" type="submit" value="Sign In" />
				</form>
			</div>
		</div>
	</div>
</template>

<script setup>
import axios from 'axios';
import {
	useUserStore
} from '~~/stores/user';

const userStore = useUserStore();
const isLoggedIn = computed(() => userStore.isLoggedIn);

const router = useRouter()

definePageMeta({
	middleware: 'is-logged-in'
})

let email = ref(null)
let password = ref(null)
let errors = ref(null)


const checkLogin = () => {
	if (isLoggedIn) {
		router.push('/admin/dashboard');
	} else {
		router.push('/index');
	}
};


const login = async () => {
	errors.value = null
	try {
		await userStore.login(email.value, password.value);
		const token = window.localStorage.getItem('token');
		// console.log("My token: " + token);
		if (token) {
			axios.defaults.headers.common['Authorization'] = 'Bearer ' + userStore.api_token;
		}
		// console.log("get token from login: " + token);
		//isLoggedIn.value = true; 
		router.push('/admin/dashboard')
	} catch (error) {
		console.log("errors: " + error);
		if (error.response && error.response.data && error.response.data.errors) {
			const errorMessages = error.response.data.errors;
			const errorAlert = document.getElementById('error-alert');
			let errorMessageHTML = '';
			for (const key in errorMessages) {
				errorMessages[key].forEach(message => {
					errorMessageHTML += `${message}<br>`;
				});
			}
			errorAlert.innerHTML = errorMessageHTML;
			errorAlert.style.display = 'block'; // Show the errorAlert
		} else {
			// Handle unexpected error
			errors.value = "An unexpected error occurred.";
		}
	}
}



onMounted(async () => {
	checkLogin();
})

</script>

<style>
/* @import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css");
@import url('https://fonts.googleapis.com/css2?family=Jost:wght@200;400&display=swap'); */

.section {
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	background: #282c34;
}

.login {
	width: 360px;
	height: min-content;
	padding: 20px;
	border-radius: 8px;
	/* background: green; */
}

.img {
	width: 50px;
	height: 50px;
	cursor: pointer;
}

.img:hover {
	color: rgb(0, 0, 255);
}

.login h1 {
	font-size: 36px;
	margin-bottom: 25px;
}

.login form {
	font-size: 20px;

}

.login form .form-group {
	margin-bottom: 12px;
}

.login form input[type="submit"] {
	font-size: 20px;
	margin-top: 15px;
}
</style>
