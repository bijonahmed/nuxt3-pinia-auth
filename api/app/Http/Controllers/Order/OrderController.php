<?php

namespace App\Http\Controllers\Order;

use App\Http\Controllers\Controller;
use App\Models\Categorys;
use Illuminate\Http\Request;
use App\Models\Product;
//use Darryldecode\Cart\Cart;
use Illuminate\Support\Facades\Session;
use App\Models\Order;
use Validator;
use App\Models\OrderStatus;
use App\Models\OrderHistory;
use App\Models\ProductCategory;
use App\Models\CategoryCommissionHistory;
use App\Models\WishList;
use App\Models\User;

class OrderController extends Controller
{

    protected $userid;
    public function __construct()
    {
        $this->middleware('auth:api');
        $id = auth('api')->user();
        $user = User::find($id->id);
        $this->userid = $user->id;
    }

    public function orderStatusRow($id)
    {
        try {
            $row = OrderStatus::find($id);
            $response = [
                'data' => $row,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }

    public function save_order(Request $request)
    {
        //dd($request->all());
        $validator = Validator::make($request->all(), [
            'name'           => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $data = array(
            'name'        => $request->name,
            'description' => $request->description,
        );
        if (empty($request->id)) {
            OrderStatus::insertGetId($data);
        } else {
            OrderStatus::where('id', $request->id)->update($data);
        }

        $response = [
            'data' => $data,
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }

    public function orderStatus()
    {

        try {
            $rows = OrderStatus::all();
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }

    function addtowish($slug)
    {
        $findproduct = Product::where('slug', $slug)->select('id')->first();
        $row                  = new WishList();
        $row->customer_id     = $this->userid;
        $row->product_id      = $findproduct->id;
        $row->save();
        return response()->json("Item successfully added to your wishlist!", 200);
    }

    function allWishList()
    {



        $rows = WishList::join('product', 'product.id', '=', 'wishlist.product_id')->where('wishlist.customer_id', $this->userid)->select('wishlist.id as wishid', 'product.thumnail_img', 'product.slug', 'product.name', 'price', 'product.id')->get();
        $products = [];
        foreach ($rows as $key => $v) {
            $products[] = [
                'id'           => $v->id,
                'product_name' => $v->name,
                'wishid'       => $v->wishid,
                'price'        => number_format($v->price, 2),
                'thumnail_img' => url($v->thumnail_img),
                'slug'         => $v->slug,

            ];
        }

        return response()->json($products, 200);
    }

    function removeWishList($id)
    {

        $wishlistItem = WishList::find($id);
        if (!$wishlistItem) {
            return response()->json(['error' => 'WishList item not found'], 404);
        }
        $wishlistItem->delete();
        return response()->json(['message' => 'WishList item deleted successfully']);
    }

    function generateUniqueRandomNumber($length = 5)
    {
        do {
            $randomNumber = mt_rand(pow(10, $length - 1), pow(10, $length) - 1);
        } while (Order::where('id', $randomNumber)->exists());

        return $randomNumber;
    }

    public function getOrder()
    {

        $data['orders']  = Order::where('customer_id', $this->userid)->where('order_status', 1)->limit(2)->get();
        foreach ($data['orders'] as $v) {
            $orders[] = [
                'orderId'      => $v->orderId,
                'placeOn'      => date_format(date_create($v->created_at), "Y-m-d"),
                'total'        => number_format($v->total, 2),
            ];
        }

        $order['orderdata']      = $orders;

        return response()->json($order, 200);
    }


    public function update_order_status(Request $request)
    {
        //dd($request->all());
        $data['order_status'] = $request->orderstatus;
        Order::where('orderId', $request->orderId)->update($data);
        return response()->json("update successfully", 200);
    }


    public function updateOrderStatus(Request $request)
    {
        $orderId = $request->orderId;
        $status_id = (int) $request->selectedOrderStatus;
        $data['order_status'] = $status_id;
        Order::where('orderId', $orderId)->update($data);
        return response()->json("update successfully", 200);
    }

    public function orderDetails($order_id)
    {

        $orderStatus     = orderStatus::all();
        $findorder       = Order::join('order_status', 'order_status.id', '=', 'orders.order_status')->select('orders.*', 'order_status.name as orderstatus', 'order_status.id as orderstatus_id')->where('orderId', $order_id)->first();
        $data['orders']  = OrderHistory::join('product', 'product.id', '=', 'order_history.product_id')
            ->select('product.name as product_name', 'product.thumnail_img', 'order_history.*')
            ->where('order_id', $findorder->id)->get();
        foreach ($data['orders'] as $v) {
            $orders[] = [
                'product_name'    => $v->product_name,
                'thumbnail_img'   => url($v->thumnail_img),
                'quantity'        => $v->quantity,
                'price'           => $v->price,
                'total'           => $v->quantity * $v->price,
            ];
        }

        $findCustomer = User::where('id', $findorder->customer_id)->first();
        $order['customername']  = !empty($findCustomer->name) ? $findCustomer->name : "";
        $order['customeremail'] = !empty($findCustomer->email) ? $findCustomer->email : "";
        $order['orderdata']     = $orders;
        $order['orderrow']      = !empty($findorder->orderstatus) ? $findorder->orderstatus : "";
        $order['order_status']  = !empty($findorder->order_status) ? $findorder->order_status : "";
        $order['orderstatus_id']= !empty($findorder->orderstatus_id) ? $findorder->orderstatus_id : "";
        $order['orderData']     = !empty($findorder) ? $findorder : "";
        $order['OrderStatus']   = $orderStatus;
        // dd($order['order_status']);
        return response()->json($order, 200);
    }
    public function allOrders()
    {

        $data['orders']  = Order::join('order_status', 'orders.order_status', '=', 'order_status.id')
            ->select('orders.*', 'order_status.name')
            ->where('orders.customer_id', $this->userid)
            ->orderBy('created_at', 'desc')
            ->get(); //Order::where('customer_id', $this->userid)->get();
        foreach ($data['orders'] as $v) {
            $orders[] = [
                'name'         => $v->name,
                'orderId'      => $v->orderId,
                'placeOn'      => date_format(date_create($v->created_at), "Y-m-d"),
                'total'        => number_format($v->total, 2),
            ];
        }

        $order['orderdata']      = $orders;

        return response()->json($order, 200);
    }


    public function allOrdersAdmin(Request $request)
    {


        $page = $request->input('page', 1);
        $pageSize = $request->input('pageSize', 10);

        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter = (int)$request->selectedFilter;
        // dd($selectedFilter);
        $query = Order::join('order_status', 'orders.order_status', '=', 'order_status.id')
        ->select('orders.*', 'order_status.name');

        if ($searchQuery !== null) {
            $query->where('orders.orderId', 'like', '%' . $searchQuery . '%');
        }

        if (!empty($selectedFilter)) {
            $query->where('orders.order_status', $selectedFilter);
        }

        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);

        $modifiedCollection = $paginator->getCollection()->map(function ($v) {
            return [
                'id'           => $v->id,
                'name'         => $v->name,
                'orderId'      => $v->orderId,
                'placeOn'      => date_format(date_create($v->created_at), "Y-m-d"),
                'total'        => number_format($v->total, 2),
            ];
        });

        $orderStatus  =  OrderStatus::all();

        // Return the modified collection along with pagination metadata
        return response()->json([
            'orderStatus'   => $orderStatus,
            'orderdata'     => $modifiedCollection,
            'current_page'  => $paginator->currentPage(),
            'total_pages'   => $paginator->lastPage(),
            'total_records' => $paginator->total(),
        ], 200);

 
    }

    public function submitOrder(Request $request)
    {
        
       //dd($request->all());
        $validator = Validator::make(
            $request->all(),
            [
                'billing_name'          => 'required',
                'billing_email'         => 'required',
                'billing_phone_number'  => 'required',
                'billing_address'       => 'required',
                'billing_country'       => 'required',
                'billing_city'       => 'required',
            ],
            [
                'billing_name'         => 'Billing Name is required',
                'billing_email'        => 'Billing email is required',
                'billing_phone_number' => 'Billing Phone is required',
                'billing_address'      => 'Billing address is required',
                'billing_country'      => 'Billing country is required',
                'billing_city'         => 'Billing city is required',
            ]
        );

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        //Billing Info.
        $billing_name         = $request->billing_name;
        $billing_email        = $request->billing_email;
        $billing_phone_number = $request->billing_phone_number;
        $billing_address      = $request->billing_address;
        $billing_country      = $request->billing_country;
        $billing_city         = $request->billing_city;
        //Shipping Info.
        $shipper_name         = !empty($request->shipper_name) ? $request->shipper_name : "";
        $shipper_email        = !empty($request->shipper_email) ? $request->shipper_email : "";
        $shipper_phone_number = !empty($request->shipper_phone_number) ? $request->shipper_phone_number : "";
        $shipper_address      = !empty($request->shipper_address) ? $request->shipper_address : "";
        $shipper_country      = !empty($request->shipper_country) ? $request->shipper_country : "";
        $shipper_city         = !empty($request->shipper_city) ? $request->shipper_city : "";

        $randomNum = $this->userid . $this->generateUniqueRandomNumber() . "-" . date("y");

        $cartData = json_decode($request->input('cart'));
        if (is_object($cartData)) {
            // Convert the stdClass object to an array
            $cartData = [$cartData];
        }
       //dd($cartData);
        $total = 0;
        foreach ($cartData as $cartItem) {
            $productid = $cartItem->product->id;//$cartItem['product']['id'];
            $quantity  = $cartItem->quantity;//$cartItem['quantity'];
            $price     = str_replace(',', '', $cartItem->product->price);//$cartItem['product']['price']); // Remove commas
            $price     = floatval($price); // Convert to float

            if (!is_numeric($quantity) || !is_numeric($price)) {
                //  echo "Invalid quantity or price for Product ID: {$productid}<br/>";
                continue;  // Skip the current iteration and move to the next item
            }
            // Calculate the subtotal for the current item
            $subtotal = $quantity * $price;
            // Add the subtotal to the total
            $total += $subtotal;
            //echo "Product ID: {$productid} - Quantity: {$quantity} - Price: {$price} - Subtotal: {$subtotal} - Total: {$total}<br/>";
        }

        $order                  = new Order();
        $order->orderId         = $randomNum;
        $order->total           = $total;
        $order->subtotal        = $total;
        //Billing Info
        $order->billing_name          = $billing_name;
        $order->billing_email         = $billing_email;
        $order->billing_phone_number  = $billing_phone_number;
        $order->billing_address       = $billing_address;
        $order->billing_country       = $billing_country;
        $order->billing_city          = $billing_city;
        //Shipping Info
        $order->shipper_name          = $shipper_name;
        $order->shipper_email         = $shipper_email;
        $order->shipper_phone_number  = $shipper_phone_number;
        $order->shipper_address       = $shipper_address;
        $order->shipper_country       = $shipper_country;
        $order->shipper_city          = $shipper_city;
        //END

        $order->customer_id     = $this->userid;
        $order->order_status    = 1; // Order Placed 
        $order->save();
        // Get the last inserted order ID
        $lastOrderId = $order->id;
        // Update orderId with the last inserted order ID

        $itemtotal = 0;
        foreach ($cartData as $cartItem) {
            $pid = $cartItem->product->id;//$cartItem['product']['id'];
            $chkpost = Product::where('id', $pid)->select('seller_id')->first();
            $seller_id = !empty($chkpost) ? $chkpost->seller_id : 1;
            $productid = $pid;
            $quantity  = $cartItem->quantity;//$cartItem['quantity'];
            $price     = str_replace(',', '', $cartItem->product->price);//$cartItem['product']['price']); // Remove commas
            $price     = floatval($price); // Convert to float
            $chkCat    = ProductCategory::where('product_id', $productid)->first();
            $categories = !empty($chkCat->parent_id) ? explode(',', $chkCat->parent_id) : "";
            $parentCategoryId = isset($categories[0]) ? $categories[0] : null;
            $catrow     = Categorys::where('id', $categories)->first();
            $commission = !empty($catrow->commission) ? $catrow->commission : 0;
            //Insert into CategoryCommissionHistory
            $categoryHistory = new CategoryCommissionHistory();
            $categoryHistory->customer_id         = $this->userid;
            $categoryHistory->seller_id           = $seller_id;
            $categoryHistory->product_qty         = $quantity;
            $categoryHistory->product_price       = $price;
            $categoryHistory->product_id          = $productid;
            $categoryHistory->category_id         = $parentCategoryId;
            $categoryHistory->category_percetage  = $commission;
            $categoryHistory->admin_get_amount    = ($price * $commission) / 100;
            $categoryHistory->save();
            //End 
            $subtotal = $quantity * $price;
            // Add the subtotal to the total
            $itemtotal += $subtotal;
            $order_history                  = new OrderHistory();
            $order_history->order_id        = $lastOrderId;
            $order_history->seller_id       = $seller_id;
            $order_history->product_id      = $productid;
            $order_history->quantity        = $quantity;
            $order_history->price           = $price;
            $order_history->total           = $itemtotal;
            $order_history->save();
        }


        return response()->json("Your order successfully done!", 200);
    }
}
