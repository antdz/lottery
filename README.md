# 大体介绍
## 基于框架
后台基于tp5.0，微信sdk基于mikkle的微信sdk，抽奖端用于fouber/lottery。
## 安装与使用
真有点懒得写了。但基中真有坑，在与微信通信时，要用明文模式，因为时间太急也没有研究为什么密文模式不行。其次，微信公众号平台有白名单，一定要把抽次服务器的Ip地址填上。

`/application/extra/wechat.php`里，填写与微信公众号的相关配置信息。

`/application/database.php`填写服务器数据库相关信息