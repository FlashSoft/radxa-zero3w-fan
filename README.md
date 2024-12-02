## 简单的控制radxa zero3w的风扇

#### 使用效果

![使用效果](./assets/p1.png)

### 安装

#### 1、系统配置

使用radxa系统中自带的rsetup进行配置overlays，参考资料:`https://docs.radxa.com/zero/zero3/os-config/rsetup`
![配置](./assets/p2.png)

#### 2、焊接风扇(引脚定义和成品外观)

![引脚定义](./assets/p0.png)

#### 3、一键安装本脚本

```bash
待补充
```

### 使用

#### 启动本脚本

`systemctl start radxa-fan`

#### 实时查看当前温度和风扇速度

`radxa-fan`

#### 调整参数

`vi /usr/local/bin/radxa-fan`

```bash
# 最低温度
min_temp=35000
# 最高温度
max_temp=55000
# 最大pwm关断值
max_pwm=30000
# PWM引脚
pwm_chip="pwmchip14"
```