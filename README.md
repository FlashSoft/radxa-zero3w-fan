## 简单的控制radxa zero3w的风扇

#### 效果展示

<img title="" src="./assets/p1.png" alt="使用效果" width="400">

#### 一、安装与配置

###### 1、系统配置

使用radxa系统中自带的rsetup进行配置overlays

参考资料:`https://docs.radxa.com/zero/zero3/os-config/rsetup`

<img title="" src="./assets/p2.png" alt="配置" width="400">

也可以考虑直接使用shell开启
`mv /boot/dtbo/rk3568-pwm14-m0.dtbo.disabled /boot/dtbo/rk3568-pwm14-m0.dtbo`

###### 2、焊接风扇(引脚定义和成品外观)

<img title="" src="./assets/p0.png" alt="引脚定义" width="400">

###### 3、安装本脚本

```bash
curl https://raw.githubusercontent.com/FlashSoft/radxa-zero3w-fan/refs/heads/main/radxa-fan > /usr/local/bin/radxa-fan
chmod a+x /usr/local/bin/radxa-fan
curl https://raw.githubusercontent.com/FlashSoft/radxa-zero3w-fan/refs/heads/main/radxa-fan.service > /etc/systemd/system/radxa-fan.service
systemctl enable radxa-fan
systemctl start radxa-fan
```

###### 4、查看运行情况

```bash
radxa-fan
```

#### 使用

###### 1、启动本脚本

`systemctl start radxa-fan`

###### 2、实时查看当前温度和风扇速度

`radxa-fan`

###### 3、调整温度上下限参数

`vi /usr/local/bin/radxa-fan`

```bash
# 最低温度
min_temp=35000
# 最高温度
max_temp=55000
```

#### 其他资料

###### 1、联想拯救者2Pro散热风扇

<img title="" src="./assets/p3.jpg" alt="风扇" width="400">

###### 2、3D打印外壳

已上传至makeworld [radxa zero 3w带风扇 二次创作 - 来自 flashsoft - MakerWorld](https://makerworld.com.cn/zh/models/695174)

###### 3、散热片

https://radxa.com/products/accessories/heatsink-5519a/
