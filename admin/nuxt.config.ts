// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  router: {
    options: {
      hashMode: false,
    },
  },
  //ssr: true,
  runtimeConfig: {
    public: {
      baseURL: process.env.NODE_ENV === "production" ? "https://api.astute360corp.com/api/" : "http://127.0.0.1:8000/api/",
    },
  },
  pages: true,
  devtools: { enabled: true },
  experimental: {
    payloadExtraction: true,
  },
  //css: ["~/assets/css/main.css"],

  postcss: {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    },
  },
  plugins: [
    // Specify the path to your plugin file
    "~/plugins/axios.js",
    "~/plugins/lazyNuxtLinkAdmin.js",
    // Add other plugins as needed
  ],
  modules: [
    "nuxt-icon",
    "nuxt-lodash",
    "@pinia/nuxt",
    "@pinia-plugin-persistedstate/nuxt",
    "@vite-pwa/nuxt",
  ],
  pwa: {
    manifest: {
      name: "Test App",
      short_name: "Test App",
      description: "Test App",
      theme_color: "#32CD32",
      icons: [
        {
          src: "pwa-192x192.png",
          sizes: "192x192",
          type: "image/png",
        },
        {
          src: "pwa-512x512.png",
          sizes: "512x512",
          type: "image/png",
        },
      ],
    },
    devOptions: {
      enabled: true,
      type: "module",
    },
  },

  app: {
    head: {
      charset: "utf-8",
      viewport: "width=device-width, initial-scale=1, maximum-scale=1",
      // Add CSS file
      link: [

        { rel: "stylesheet", href: "https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback" },
        { rel: "stylesheet", href: "/plugins/fontawesome-free/css/all.min.css" },
        { rel: "stylesheet", href: "https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" },
        { rel: "stylesheet", href: "/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css" },
        { rel: "stylesheet", href: "/plugins/icheck-bootstrap/icheck-bootstrap.min.css" },
        { rel: "stylesheet", href: "/plugins/jqvmap/jqvmap.min.css" },
        { rel: "stylesheet", href: "/dist/css/adminlte.min2167.css?v=3.2.0" },
        { rel: "stylesheet", href: "/plugins/overlayScrollbars/css/OverlayScrollbars.min.css" },
        { rel: "stylesheet", href: "/plugins/daterangepicker/daterangepicker.css" },
        { rel: "stylesheet", href: "/plugins/summernote/summernote-bs4.min.css" },
        { rel: "stylesheet", href: "/plugins/toastr/toastr.min.css" },
        { rel: "stylesheet", href: "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" },
 
        
      ],
      // Add JavaScript file
      script: [

        { src: "/plugins/jquery/jquery.min.js", type: "text/javascript"},
        { src: "/plugins/jquery-ui/jquery-ui.min.js", type: "text/javascript"},
        { src: "/plugins/bootstrap/js/bootstrap.bundle.min.js",type: "text/javascript" },
        { src: "/plugins/chart.js/Chart.min.js",type: "text/javascript" },
        { src: "/plugins/sparklines/sparkline.js",type: "text/javascript" },
        { src: "/plugins/jqvmap/jquery.vmap.min.js",type: "text/javascript" },
        { src: "/plugins/jqvmap/maps/jquery.vmap.usa.js",type: "text/javascript" },
        { src: "/plugins/jquery-knob/jquery.knob.min.js",type: "text/javascript"},
        { src: "/plugins/moment/moment.min.js",type: "text/javascript" },
        { src: "/plugins/daterangepicker/daterangepicker.js",type: "text/javascript" },
        { src: "/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js",type: "text/javascript" },
        { src: "/plugins/summernote/summernote-bs4.min.js",type: "text/javascript" },
        { src: "/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js",type: "text/javascript" },
        { src: "/dist/js/adminlte2167.js?v=3.2.0",type: "text/javascript" },
        { src: "/dist/js/pages/dashboard.js",type: "text/javascript" },
        { src: "/plugins/toastr/toastr.min.js",type: "text/javascript" },
        { src: "https://unpkg.com/sweetalert/dist/sweetalert.min.js",type: "text/javascript" },
        { src: "https://cdn.tiny.cloud/1/qagffr3pkuv17a8on1afax661irst1hbr4e6tbv888sz91jc/tinymce/6/tinymce.min.js",type: "text/javascript" },
      ],
    },
  },
});
