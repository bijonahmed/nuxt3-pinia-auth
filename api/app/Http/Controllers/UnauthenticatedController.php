<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Auth;
use Validator;
use Helper;
use App\Models\Product;
use App\Models\Sliders;
use App\Models\ProductCategory;
use App\Models\Categorys;
use Illuminate\Support\Str;
use App\Rules\MatchOldPassword;
use Illuminate\Support\Facades\Hash;
use DB;
use File;
use PhpParser\Node\Stmt\TryCatch;
use function Ramsey\Uuid\v1;

class UnauthenticatedController extends Controller
{
    protected $frontend_url;
    protected $userid;

    public function allCategory(Request $request)
    {
        $categories = Categorys::with('children.children.children.children.children')->where('parent_id', 0)->get();
        return response()->json($categories);
    }

    public function limitedProducts()
    {

        $data = Product::orderBy('id', 'desc')->select('id', 'name', 'thumnail_img', 'slug')->limit(12)->get();
        //dd($data);
        $collection = collect($data);
        $modifiedCollection = $collection->map(function ($item) {
            return [
                'id'        => $item['id'],
                'name'      => substr($item['name'], 0, 20),
                'thumnail'  => !empty($item->thumnail_img) ? url($item->thumnail_img) : "",
                'slug'        => $item['slug'],
            ];
        });
        //dd($modifiedCollection);
        return response()->json($modifiedCollection, 200);
    }

    public function topSellProducts()
    {
        $data = Product::orderBy('id', 'desc')->select('id', 'name', 'thumnail_img', 'slug')->limit(12)->get();
        foreach ($data as $v) {
            $result[] = [
                'id'   => $v->id,
                'name' => substr($v->name, 0, 12) . '...',
                'thumnail'  => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
                'slug'     => $v->slug,
            ];
        }

        // dd($result);
        return response()->json($result, 200);
    }

    public function slidersImages()
    {
        $data = Sliders::where('status', 1)->get();

        foreach ($data as $v) {
            $result[] = [
                'id'           => $v->id,
                'images'       => !empty($v->images) ? $v->images : "",
            ];
        }

        return response()->json($result, 200);
    }

    public function productCategory(Request $request)
    {

        $category_id = $request->category_id;
        $category    = Categorys::find($category_id);
        $categorys   = ProductCategory::join('product', 'product.id', '=', 'produc_categories.product_id')
            ->select('produc_categories.product_id', 'product.name', 'product.slug', 'product.thumnail_img')
            ->where('produc_categories.category_id', $category_id)
            ->orderByDesc('product.id')
            ->limit(10)
            ->get();

        foreach ($categorys as $v) {
            $result[] = [
                'product_id'   => $v->product_id,
                'name'         => substr($v->name, 0, 12) . '...',
                'thumnail'     => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
                'slug'         => $v->slug,
            ];
        }

        $data['result']  = !empty($result) ? $result : "";
        $data['name']    = $category->name;
        $data['catslug'] = $category->slug;
        return response()->json($data, 200);
    }

    public function filterCategory(Request $request)
    {
        $categories = Categorys::where('status', 1)->orderBy("name", "asc")->get();;
        return response()->json($categories);
    }

    public function sliders(Request $request)
    {
        $data = Sliders::where('status', 1)->orderBy("name", "asc")->get();;
        return response()->json($data);
    }

    //filter category
    public function findCategorys(Request $request)
    {

        $slug = $request->slug;
        $chkCategory   = Categorys::where('slug', $slug)->select('id', 'slug', 'parent_id', 'name')->first();

        $proCategorys  = ProductCategory::where('category_id', $chkCategory->id)
            ->select('product.id', 'product.download_link', 'produc_categories.product_id', 'product.name as pro_name', 'produc_categories.category_id', 'description', 'thumnail_img', 'product.slug as pro_slug')
            ->join('product', 'product.id', '=', 'produc_categories.product_id')->limit(32)->get();

        $result = [];
        foreach ($proCategorys as $key => $v) {
            $result[] = [
                'id'           => $v->id,
                'product_id'   => $v->product_id,
                'product_name' => substr($v->pro_name, 0, 12) . '...',
                'p_name'       => $v->pro_name,
                'category_id'  => $v->category_id,
                'download_link' => $v->download_link,
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->pro_slug,

            ];
        }

        $data['result']        = $result;
        $data['pro_count']     = count($result);
        $data['categoryname']  = $chkCategory->name;
        $data['category_slug'] = $chkCategory->slug;
        $data['category_id']   = $chkCategory->parent_id;
        // dd($data);
        return response()->json($data, 200);
    }

    public function filderProduct(Request $request)
    {
        $slug = $request->slug;
        $chkProNameRow   = Product::where('slug', $slug)->select('id', 'slug', 'name')->first();

        $prodata  = ProductCategory::where('product_id', $chkProNameRow->id)
            ->select('product.id', 'categorys.name as category_name', 'produc_categories.product_id', 'product.description', 'product.name as pro_name', 'produc_categories.category_id', 'thumnail_img', 'product.slug as pro_slug', 'product.download_link')
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->first();
        //dd($prodata);
        $data['categoryname']  = $prodata->category_name;
        $data['description']   = $prodata->description;
        $data['download_link'] = $prodata->download_link;
        $data['product_name']  = substr($prodata->pro_name, 0, 12) . '...';
        $data['thumnail_img']  =  url($prodata->thumnail_img);
        return response()->json($data, 200);
    }

    public function getPaginatedData(Request $request)
    {

        $chkCategory = Categorys::where('slug', $request->slug)->select('id', 'parent_id', 'name', 'slug')->first();
        $proCategorys = ProductCategory::where('category_id', $chkCategory->id)
            ->select('product.id', 'product.discount', 'produc_categories.product_id', 'product.name as pro_name', 'produc_categories.category_id', 'description', 'price', 'thumnail_img', 'product.slug as pro_slug')
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->paginate($request->input('perPage', 20));

        $result = [];
        foreach ($proCategorys as $key => $v) {
            $result[] = [
                'id'           => $v->id,
                'product_name' => substr($v->pro_name, 0, 12) . '...', //$v->pro_name, // Use the alias 'pro_name' here
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->pro_slug,
            ];
        }
        $data['result']        = $result;
        $data['pro_count']     = count($result);
        $data['categoryname']  = $chkCategory->name;
        $data['category_id']   = $chkCategory->parent_id;
        $data['category_slug'] = $chkCategory->slug;
        return response()->json($data, 200);
    }

    public function getProductrow(Request $request)
    {

        $products     = Product::where('slug', $request->slug)->select('product.counter','product.id', 'product.name', 'description', 'thumnail_img', 'product.download_link')->first();
        $proCategorys = ProductCategory::where('product_id', $products->id)
            ->select('categorys.id', 'categorys.name', 'categorys.slug')
            ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->first();

        $data['product_name']  = !empty($products->name) ? $products->name : "";
        $data['description']   = !empty($products->description) ? $products->description : "";
        $data['thumnail_img']  = url($products->thumnail_img);
        $data['download_link'] = !empty($products->download_link) ? $products->download_link : "";
        $data['category_id']   = $proCategorys->id;
        $data['category_slug'] = $proCategorys->slug;
        $data['category_name'] = $proCategorys->name;
        $data['counter']       = $products->counter;

    
        $product = Product::find($products->id);
        $product->counter += 1250;
        //Product::where('id', $products->id)->update(['counter' => $updateCounter]);
        $product->save();
       


        //dd($data);
        return response()->json($data, 200);
    }

    public function defaultShowingProduct()
    {
        $products     = Product::where('status', 1)->select('product.id', 'product.name', 'description', 'thumnail_img', 'slug')->limit(8)->get();
        $result = [];
        foreach ($products as $key => $v) {
            $categoryName = ProductCategory::where('product_id', $v->id)->select('categorys.name as category_name')->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')->first();
            $result[] = [
                'id'           => $v->id,
                'product_name' => substr($v->name, 0, 12) . '...',
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->slug,
                'category_name' => !empty($categoryName->category_name) ? $categoryName->category_name : "",
            ];
        }
        //dd($data);
        return response()->json($result, 200);
    }

    public function defaultShowingMovies()
    {
        $categoryId = 18; //4k Movies
        $products = ProductCategory::where('category_id', $categoryId)
            ->select('product.id', 'categorys.name', 'product.slug', 'product.name as product_name', 'product.thumnail_img')
            ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->paginate(12);
        //dd($products);

        $result = [];
        foreach ($products as $key => $v) {
            $result[] = [
                'id'           => $v->id,
                'product_name' => substr($v->product_name, 0, 12) . '...',
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->slug,

            ];
        }
        //dd($data);
        return response()->json($result, 200);
    }

    public function showingMoviesCatWise(Request $request)
    {

        $categoryId = 18; //4k Movies
        $products = ProductCategory::where('category_id', $categoryId)
            ->select('product.id', 'categorys.name', 'product.slug', 'product.name as product_name', 'product.thumnail_img')
            ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->paginate(12);
        //dd($products);

        $result = [];
        foreach ($products as $key => $v) {
            $result[] = [
                'id'           => $v->id,
                'product_name' => substr($v->product_name, 0, 12) . '...',
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->slug,

            ];
        }
        //dd($data);
        return response()->json($result, 200);
    }

    public function videoPagination(Request $request)
    {
        $perPage = 12; // Change this to the number of items per page
        $categoryId = 18; //4k Movies
        $page = $request->input('page', 1);

        $products = ProductCategory::where('category_id', $categoryId)
            ->select('product.id', 'categorys.name', 'product.slug', 'product.name as product_name', 'product.thumnail_img')
            ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->paginate($perPage, ['*'], 'page', $page);

        $result = [];
        foreach ($products as $key => $v) {
            $result[] = [
                'id'           => $v->id,
                'product_name' => substr($v->product_name, 0, 12) . '...',
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->slug,
            ];
        }
        return response()->json(['data' => $result, 'meta' => $products]);
    }

    public function loadMorePagination(Request $request)
    {
        //dd($request->all());
        $chkCategory = Categorys::where('slug', $request->slug)->select('id', 'parent_id', 'name', 'slug')->first();
        //dd($chkCategory->id);
        $perPage = 5; // Change this to the number of items per page
        $page = $request->input('page', 1);
        $products = ProductCategory::where('category_id', $chkCategory->id)
            ->select('product.id', 'categorys.name', 'product.slug', 'product.name as product_name', 'product.thumnail_img', 'product.download_link')
            ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->paginate($perPage, ['*'], 'page', $page);

        $result = [];
        foreach ($products as $key => $v) {
            $result[] = [
                'id'           => $v->id,
                'product_name' => substr($v->product_name, 0, 12) . '...',
                'p_name'       => $v->product_name,
                'download_link'       => $v->download_link,
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->slug,
            ];
        }
        
       // dd($result);
        return response()->json(['data' => $result, 'meta' => $products]);
    }

    public function autocomplete(Request $request)
    {
        $query = $request->input('q');
        $results = Product::where('name', 'like', "%$query%")->select('name', 'id', 'slug')->limit(10)->get();
        $data = [];
        foreach ($results as $key => $v) {
            $productid = (int)$v->id;
            $chkcat = ProductCategory::where('product_id', $productid)->select('category_id')->first();
            //echo $chkcat->category_id."===<br>"; 
            $parent = Categorys::where('id', $chkcat->category_id)->select('parent_id')->first();

            $data[] = [
                'value' => $productid,
                'label' => $v->name,
                'slug'  => $v->slug,
                'parent_id' => !empty($parent->parent_id) ? $parent->parent_id : '',

            ];
        }
        //dd($results);
        return response()->json($data);
    }
}
