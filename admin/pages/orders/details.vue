<template>
    <title>Order List</title>
    <div>
        <div class="content-wrapper">
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <p>Order List</p>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item">
                                    <LazyNuxtLink to="/admin/dashboard">Home</LazyNuxtLink>
                                </li>
                                <li class="breadcrumb-item active">
                                    <LazyNuxtLink to="/orders/list">Back to List</LazyNuxtLink>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </section>

            <section class="content">
                <div class="container-fluid">
                
                    <div class="card border-top border-0 border-4 border-info">
                        <div class="card-body">
                            <div class="border p-4 rounded">

                                <div class="row">

                                    <div class="col">
                                        <h4>Orders Details </h4>
                                        Customer Name: {{ customername }}, Customer Email: {{ customeremail }}
                                    </div>

                                    <div class="col">
                                        <strong style="color:green; text-align: right;">
                                            <h4>Order Status: {{ orderstatus }}</h4>
                                        </strong>
                                    </div>

                                </div>

                                <table width="100%" border="1" class="table table-bordered hover">
                                    <tr>
                                        <td width="22">#</td>
                                        <td>Images</td>
                                        <td width="916">Item Description </td>
                                        <td width="63">
                                            <div align="center">Qty</div>
                                        </td>
                                        <td width="80">
                                            <div align="center">Price</div>
                                        </td>
                                        <td width="80">
                                            <div align="center">Total</div>
                                        </td>
                                    </tr>
                                    <tr v-for="(order, index) in orders" :key="index">
                                        <td>{{ index + 1 }}</td>
                                        <td>
                                            <img :src="order.thumbnail_img" alt="Thumbnail Image" style="height:50px;width:50px;" />
                                        </td>
                                        <td>{{ order.product_name }}</td>
                                        <td>
                                            <div align="center">{{ order.quantity }}</div>
                                        </td>
                                        <td>
                                            <div align="center">{{ order.price }}</div>
                                        </td>
                                        <td>
                                            <div align="center">{{ order.total }}</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <div align="right">Total</div>
                                        </td>
                                        <td>
                                            <div align="center">{{ totalQuantity }}</div>
                                        </td>
                                        <td>
                                            <div align="center">{{ totalAmount }}</div>
                                        </td>
                                        <td>
                                            <div align="center">{{ totalAmount }}</div>
                                        </td>
                                    </tr>
                                </table>
                                <hr />
                                <form @submit.prevent="saveData()" id="formrest" class="forms-sample" enctype="multipart/form-data">
                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Order Status</label>
                                        <div class="col-sm-9">
                                            <select name="status" v-model="insertdata.orderstatus" class="form-control orderstatus">
                                                <option v-for="(option, index) in order_status" :key="index" :value="option.id">
                                                    {{ option.name }}
                                                </option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label class="col-sm-3 col-form-label"></label>
                                        <div class="col-sm-9">
                                            <button type="submit" class="btn btn-success px-5 w-100"><i class="bx bx-check-circle mr-1"></i> Submit</button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                        
                </div>
            </section>
        </div>
    </div>
</template>

<script>

import { ref, reactive, onMounted } from 'vue';

import axios from 'axios';
import swal from 'sweetalert2';
window.Swal = swal;


export default {
  setup() {

    definePageMeta({
    middleware: 'is-logged-out',
    

})

    const orderstatus = ref('');
    const orderid = ref('');
    const customername = ref('');
    const customeremail = ref('');
    const router = useRouter();
    const insertdata = reactive({
      orderId: null,
      orderstatus: ''
    });
    const orders = ref([]);
    const order_status = ref([]);
    const notifmsg = ref('');
    const errors = ref({});


    const saveData = () => {

      const formData = new FormData();
      formData.append('orderId', router.currentRoute.value.query.parameter);
      formData.append('orderstatus', insertdata.orderstatus);
      const headers = {
        'Content-Type': 'multipart/form-data'
      };
      axios.post('/order/update_order_status', formData, { headers })
        .then((res) => {
          $('#formrest')[0].reset();
          success_noti();
          router.push('/orders/list');
        })
        .catch(error => {
          if (error.response.status === 422) {
            errors.value = error.response.data.errors;
          }
        });
    };

    const success_noti = () => {
        const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 1000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
        }
    });
    Toast.fire({
        icon: "success",
        title: "Your data has been successfully inserted."
    });
    };

    const defaultLoading = async () => {
      const orderId =  router.currentRoute.value.query.parameter; //$route.query.orderId;
      console.log("orderID" + orderId);
      orderid.value = orderId;
      await axios.get(`/order/orderDetails/${orderId}`)
        .then(response => {
          orders.value = response.data.orderdata;
          orderstatus.value = response.data.orderrow;
          customername.value = response.data.customername;
          customeremail.value = response.data.customeremail;
          order_status.value = response.data.OrderStatus;
          insertdata.orderstatus = response.data.orderstatus_id;
        })
        .catch(error => {
          // Handle error
        });
    };

    onMounted(defaultLoading);

    return {
      orderstatus,
      orderid,
      customername,
      customeremail,
      insertdata,
      orders,
      order_status,
      notifmsg,
      errors,
      saveData
    };
  }
};

</script>
 