<?php

namespace app\index\controller;

use mikkle\tp_wechat\Wechat;
use think\Controller;
use think\Request;

class Index extends Controller
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        return $this->fetch();
    }
    
    public function menu()
    {
        $data = ["button" => [
				['type' => 'click', 'name' => '年会抽奖', 'key' => 'lottery_001']
			    ],
            ];
        $re = \mikkle\tp_wechat\Wechat::Menu()->createMenu($data);
        //$a =json($data);
        return $re;
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function getmenu()
    {
        $menu = \mikkle\tp_wechat\Wechat::Menu()->getMenu();
        var_dump($menu);
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function delete()
    {
        //deleteMenu
        $menu = \mikkle\tp_wechat\Wechat::Menu()->deleteMenu(); //
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function getmedia()
    {
        $news = \mikkle\tp_wechat\Wechat::media()->getForeverList('image', 1, 20);
        // $count = \mikkle\tp_wechat\Wechat::media()->getForeverCount();
        dump($news);
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    public function getlottery()
    {
        $users = db('lottery')->alias('l')->join('__WXUSER__ u','l.open_id = u.open_id')->where(['status'=>0])->select();
        return json($users);
    }

    public function postlottery(Request $request){
        // trace($request->post('d/a'),'post');
        $lotterys = $request->post('d/a');
        $model_lottery = model('Lottery');
        foreach($lotterys as $l){
            $model_lottery->where('open_id',$l['open_id'])->update(['status'=>1]);
        }
        return ;
    }
}
