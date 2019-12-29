<?php

namespace app\index\controller;

use mikkle\tp_wechat\support\Curl;
use mikkle\tp_wechat\Wechat;
use mikkle\tp_wechat\WechatApi;
use think\Controller;

class Api extends WechatApi {
	protected $valid = true; //网站第一次匹配 true 1为匹配
	protected $isHook = false; //是否开启钩子
	
	
	
	protected function returnMessageText()
    {
		$openid = $this->openid;
        return 'openid' . $openid;
	}
	
	/**
     * 默认扫码事件处理方法
     * Power: Mikkle
     * Email：776329498@qq.com
     * @return array
     */
    protected function returnEventClick()
    {
		$openid = $this->openid;
        $message = $this->weObj->getRevEvent();
        if (isset($message["key"])) {
			$newsarray = [
				[
					'Title' => '年会抽奖系统',
					'Description' => '点击进入完善个人信息，该链接为专享链接，请不要分享他人~',
					'PicUrl' => '',
					'Url' => $this->request->domain().'/index.php/index/Lottery/index?openid='.$openid.'&key='.$message['key'],
				],
			];
			$reply = ['type' => 'news', 'message' => $newsarray];
			return $reply;
        }
        return ['type' => 'text', 'message' => '点击成功'];
    }

}
