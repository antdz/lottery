<?php

namespace app\index\controller;

use think\Controller;
use think\Request;
use mikkle\tp_wechat\Wechat;

class Lottery extends Controller
{
    /**
     * 输入姓名界面
     *
     * @return \think\Response
     */
    public function index()
    {
        $opend = input('get.openid');
        session('openid',$opend);
        $disable = false;

        $in_lottery=model('Lottery')->where('open_id',session('openid'))->find();
        if($in_lottery){
           $disable=true;
        }

        $model_user = model('Wxuser');
        $user = $model_user->where('open_id', session('openid'))->find();
        if (!$user) {
			$u = Wechat::user()->getUserInfo(session('openid'));
            $sa = $model_user->validate(
                [
                    'open_id'  => 'require|unique:wxuser',
                ],
                [
                    'open_id.require' => 'open_id必须',
                    'open_id.unique' => '重复项',
                  
                ])->allowField(true)->save(['open_id' => session('openid'), 'nickname' => $u['nickname'], 'headimgurl' => $u['headimgurl']]);

        }
        $user = $model_user->where('open_id', session('openid'))->find();
        $this->assign('user',$user);
        $this->assign('open_id',session('openid'));
        $this->assign('disable',$disable);
        
        return $this->fetch();
    }

    /**
     * 显示结果.
     *
     * @return \think\Response
     */
    public function show_result()
    {
        return $this->fetch();
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        //
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
    }

    /**
     * 抽奖人数
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function count()
    {
        model('Lottery')->count();
    }

    /**
     * 参加抽奖
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function join(Request $request)
    {
        $user = model('Wxuser');
        $result = ['status'=>true,'message'=>'已加入抽奖队列！'];
        $u = $user->where('open_id',session('openid'))->find();
        if($u){
            $user_update = $user->allowField(true)->save($request->post(),['open_id'=>session('openid')]);
            if(!$user_update){
                $result = ['status'=>false,'message'=>'信息保存出错'];
                return json($result);
            }
        }
        $in_lottery=model('Lottery')->where('open_id',session('openid'))->find();
        if(!$in_lottery){
            $lottery = model('Lottery')->save(['open_id'=>session('openid')]);
            if($lottery){
                $result = ['status'=>true,'message'=>'已加入抽奖队列！'];
            }else{
                $result =  ['status'=>false,'message'=>'信息保存出错'];
            }
        }else{
            $result =  ['status'=>false,'message'=>'请不要重复加入'];
        }
        
        
               
        

        
        return json($result);
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function wx()
    {
        return $this->fetch();
    }
}
