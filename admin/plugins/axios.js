import axios from "axios";
export default defineNuxtPlugin((NuxtApp) => {
  const baseURL = process.env.NODE_ENV === 'production' ? 'https://api.astute360corp.com/api/' : 'http://127.0.0.1:8000/api/';
  axios.defaults.baseURL = baseURL;
  axios.defaults.withCredentials = false;
  axios.defaults.proxyHeaders = false;
  if (process.client) {
    const token = window.localStorage.getItem("token");
    if (token) {
      axios.defaults.headers.common["Authorization"] = "Bearer " + token;
    }
  }
  return {
    provide: {
      axios: axios,
    },
  };
});
