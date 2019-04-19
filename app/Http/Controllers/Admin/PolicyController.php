<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Post;

class PolicyController extends Controller
{
    public function getList()
    {
        $policies = Post::where('type', 'policy')
            ->orderBy('id', 'desc')
            ->get();
        return view('backend.policy.list', compact('policies'));
    }
    public function getAdd()
    {
        return view('backend.policy.add');
    }
    public function postAdd(Request $request)
    {
        $this->validate($request,
            [
                'name' => 'required',
                'content_main' => 'required'
            ],
            [
                'name.required' => 'Bạn chưa nhập tiêu đề !',
                'content_main.required' => 'Bạn chưa nhập nội dung !',
            ]
        );
        //policy
        $request->type = 'policy';
        $policy = Post::post_save($request, null, 'policy');
        if ($policy !== false) {
            return redirect()->route('backend.config.policy')->with([
                'flash_level' => 'success',
                'flash_message' => 'Thêm thành công !'
            ]);
        }

        return redirect()->route('backend.config.policy')->with([
            'flash_level' => 'success',
            'flash_message' => 'Thêm không thành công !'
        ]);

    }
    public function getEdit($id)
    {
        $data = Post::where([
            ['type', 'policy'],
            ['id', $id],
        ])->first();

        if (isset($data)) {
            return view('backend.policy.edit', compact('data'));

        }
        return redirect()->route('backend.config.policy')->with([
            'flash_level' => 'danger',
            'flash_message' => 'Không tìm thấy dịch vụ !'
        ]);
    }
    public function postEdit(Request $request, $id)
    {
        $this->validate($request,
            [
                'name' => 'required',
                'content_main' => 'required',
            ],
            [
                'name.required' => 'Bạn chưa nhập tiêu đề !',
                'content_main.required' => 'Bạn chưa nhập Nội dung !',
            ]
        );
        $policy = Post::post_save($request, $id, 'policy');
        if ($policy !== false) {
            return redirect()->back()->with([
                'flash_level' => 'success',
                'flash_message' => 'Sửa thành công !'
            ]);
        }
        return redirect()->route('backend.config.policy')->with([
            'flash_level' => 'danger',
            'flash_message' => 'Không tìm thấy dịch vụ !'
        ]);
    }
    public function getDelete($id)
    {
        $policy = Post::where([
            ['type', 'policy'],
            ['id', $id],
        ])->first();
        if (isset($policy)) {
            $policy->delete();
            return redirect()->route('backend.config.policy')->with([
                'flash_level' => 'success',
                'flash_message' => 'Đã xóa dịch vụ !'
            ]);
        }
        return redirect()->route('backend.config.policy')->with([
            'flash_level' => 'danger',
            'flash_message' => 'Không tìm thấy dịch vụ !'
        ]);
    }
    public function postMultiDel(Request $request)
    {
        if ($request->has('chkItem')) {
            foreach ($request->chkItem as $id) {
                $policy = Post::where([
                    ['type', 'policy'],
                    ['id', $id],
                ])->first();
                if (isset($policy)) {
                    $policy->delete();
                }

            }
            return redirect()->back()->with([
                'flash_level' => 'success',
                'flash_message' => 'Xóa thành công !'
            ]);
        }
        return redirect()->back()->with([
            'flash_level' => 'danger',
            'flash_message' => 'Bạn chưa chọn dữ liệu cần xóa !'
        ]);
    }
}
