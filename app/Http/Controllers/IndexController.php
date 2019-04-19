<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\Category;
use App\Models\Product;
use App\Models\Custommer;
use App\Models\product_category;

class IndexController extends Controller
{
    public function getHome()
    {
        $slider = Slider::where('status', 1)->get();

        $custommer = Custommer::where('status', 1)->get();
       
        $custommer = Custommer::where('type', 1)->get();

        // điều kiện lấy danh mục
        $where = [
            ['type', '=', 'product_category'],
            ['parent_id', '=', 0],
        ];

        $category = Category::where($where)->orderBy('id', 'DESC')->take(5)->get();

        $product = Product::take(8)->get();

    	return view('frontend.pages.home', compact('slider', 'custommer', 'category', 'product'));
    }
    public function getAbout()
    {

        $product = Product::find(19);

        $ngayhomnay = date("Y-m-d");

        $ngaybatdaukhuyenmai = date("Y-m-d", strtotime($product->begin_datetime_sale));

        $ngayketthuckhuyenmai = date("Y-m-d", strtotime($product->end_datetime_sale));

        if(strtotime($ngaybatdaukhuyenmai) <= strtotime($ngayhomnay) && strtotime($ngayhomnay) <= strtotime($ngayketthuckhuyenmai)){

            echo 'Đang trong thời gian khuyến mại';

        }else {

            echo 'Hết thời gian khuyến mại rồi !!!!';
            
        }
    	//return "Trang Giới Thiệu";
    }
    public function getContact()
    {
    	return "Trang liên hệ";
    }
    public function getDetalProduct($slug, $id)
    {
        //tách để lấy id
        $ids = $id;
        $exp_ids = @explode("-", $ids);
        $cat = end($exp_ids);
        $ids=array();
        $minlink=substr($cat,0,1);
        $cat_id=substr($cat,1);
        $menu_aty=$minlink;
        if($minlink == 'p'){ 
            $product = Product::find($cat_id);
            $product_relation = Product::where('id', '<>', $product->id)->inRandomOrder()->take(4)->get();
            return view('frontend.pages.detalProduct', compact('product', 'product_relation'));
        }
    }
}
