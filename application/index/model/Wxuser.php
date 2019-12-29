<?php

namespace app\index\model;

use think\Model;

class Wxuser extends Model
{
    protected $autoWriteTimestamp = true;
    public function setNicknameAttr($value){
        return base64_encode($value);
    }
    public function getNicknameAttr($value){
        return base64_decode($value);
    }
}
