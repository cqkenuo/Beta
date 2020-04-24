[toc]

### 前言：

​		这个想法其实很早就有了，想做个跟Metasploit类似的基于web渗透测试平台，平台可以允许加入自定义脚本，只需要提交自定义的脚本并编写脚本对应的web界面模板就可以直接在平台上进行使用，友好的web界面，没有复杂的界面与环境设置，只需要在web界面填入参数点点鼠标剩下的就交给平台来处理。

​		刚好借着这次毕业设计的机会把这个想法付出了实践。这个版本其实也算是个demo版本吧，基本的功能已经完成了，但是还是存在许多不足和需要改进的地方。当然我也会把这个平台一直做下去，把功能变得更强大更完善，最后还想要与MSF进行联动。

​		由于要准备2021年考研，所以这个平台可能要1年后我才会继续更新。我也想把这个平台分享出来，能给各位白帽子师傅有点帮助，有喜欢的师傅可以自己拿去进行修改。

------

### 环境要求：

Docker + Docker-compose

#### 环境配置

Docker安装

```
 curl -sSL https://get.daocloud.io/docker | sh
```

Docker-compose安装

```
curl -L https://get.daocloud.io/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose
```

------

### 使用的技术

- Django

- Celery

- Docker

- Docker-compose

- bootstrap

- layui

------

#### 平台文件结构介绍

├─mysql：【MySQL数据库文件】
│  ├─data：【mysql数据库容器挂载的数据目录】
│  └─init：【里面放着mysql容器初始化的sql文件】
└─www：【网站文件】
    ├─Beta：【项目目录】
    │  └─__pycache__
    ├─index
    │  ├─migrations
    │  │  └─__pycache__
    │  ├─static
    │  ├─templates
    │  └─__pycache__
    ├─result：【存放后台异步任务的执行结果】
    ├─script：【脚本存放目录】
    ├─static：【静态资源】
    │  ├─css
    │  ├─fonts
    │  ├─images
    │  ├─js
    │  └─layui
    │      ├─css
    │      │  └─modules
    │      │      ├─laydate
    │      │      │  └─default
    │      │      └─layer
    │      │          └─default
    │      ├─font
    │      ├─images
    │      │  └─face
    │      └─lay
    │          └─modules
    ├─templates
    └─user
        ├─migrations
        │  └─__pycache__
        ├─static
        ├─templates
        └─__pycache__



------

### 使用说明

注意事项：

```
1. 默认管理员密码   admin:ms08067   请及时修改默认密码
2. msql和redis数据库的密码在docker-compose.yml中配置   请及时修改默认密码
3. 网站数据库配置在www/Beta/settings.py中进行配置
4. 后台管理地址http://xxxx/admin
5. 最好重新生成项目的SECRET_KEY
6. 忘记密码需要配置发送验证码的邮箱，请自行再settings.py中设置
```

#### 1. 平台的安装

1. 把文件放入服务器

   ![image-20200326232322444.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200326232322444.png?raw=true)

  

2. 进入文件夹，并执行`docker-compose up -d`，然后等待网站构建完成【我的服务器已经构建过了，所以没有构建流程】

![image-20200326232520668.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200326232520668.png?raw=true)

3. 构建完成后，容器需要进行数据库的初始化以及网站的初始化。等待数秒钟后访问http://ip:8090，就会出现登录界面

   ![image-20200326232643862.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200326232643862.png?raw=true)

#### 2. 添加脚本分类

这里假设我要添加一个【信息收集】分类，并在【信息收集】类型下添加一个【端口扫描】脚本

  1. 先到/www/script中创建一个名为【collection】的文件夹，【信息收集】分类的脚本都需要放到这个目录下

     ![image-20200326234601312.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200326234601312.png?raw=true)

  2. 登录网站后台http://ip:8090/admin,在【脚本分类】中添加分类:

![image-20200326234655223.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200326234655223.png?raw=true)

![image-20200326234742648.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200326234742648.png?raw=true)

3. 然后就可以看到平台就会增加一个【信息收集】的分类

   ![image-20200326234839630.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200326234839630.png?raw=true)

#### 3. 添加脚本

​		我们需要先给我们的脚本写一个web模板，web模板的名称跟脚本的名称同名一起放入collection文件夹。因为平台会根据【脚本名称.html】这个格式自动读取渲染脚本的web界面。

​		平台加入了bootstrap和layui，有能力的师傅可以自己写个web脚本同时脚本里面的Django语言也是可以被平台识别的。

​		演示所使用的【端口扫描】脚本是自己参与编写的《PYTHON渗透测试详解》里面的代码暂时不放出，请大家期待ms08067的新书！

https://www.ms08067.com/book.html（这里卖个关子😊）



这里我提供另一个测试脚本，大家可以拿去尝试：

【在线加法】

脚本代码：

```
import optparse

def add(a, b):
    print(int(a)+int(b))


parser = optparse.OptionParser()
parser.add_option('-a', '--a', dest="num1", help="The frist number")
parser.add_option('-b', '--b', dest="num2", help="The second number")
(options, args) = parser.parse_args()
add(options.num1, options.num2)

```

web模板代码：

```
<div class="layui-body" id="pocTest" style="padding: 15px;">
    <div class="layui-row">
        <div class="layui-col-md4">
            <div class="grid-demo grid-demo-bg1">&nbsp;</div>
        </div>
        <div class="layui-col-md4">
            <div class="grid-demo grid-demo-bg1">
                <br />
                <br />
                <br />
                <br />
                <div class="h1 col-md-offset-4"><b>在线加法</b></div>
                <br />
                <hr>
                <form method="post" role="form" action="" name="scriptform" target="_blank">
                    {% csrf_token %}
                    <!-- scriptID这个元素一定要，用来让后台识别是调用哪个脚本 -->
                    <div class="form-group" hidden>
                        <label for="scriptID">脚本名称</label>
                        <input type="text" class="form-control" id="scriptID" name='scriptID' placeholder="脚本ID"
                            value="{{ script_id }}">
                    </div>
                    <!-- 下面按需增加元素 -->
                    <div class="form-group">
                        <label for="num1">第一个数字</label>
                        <input type="text" class="form-control" id="num1" name='-a' placeholder="第一个数字">
                    </div>
                    <div class="form-group">
                        <label for="num2">第二个数字</label>
                        <input type="text" class="form-control" id="num2" name="-b" placeholder="第二个数字">
                    </div>
                    <button class="btn btn-success col-md-offset-2 btn-lg" onclick="submissions()"><b>提 交</b></button>
                    <button class="btn btn-danger col-md-offset-2 btn-lg" onclick="asytasks()"><b>加入任务队列</b></button>
                </form>
            </div>
        </div>
        <div class="layui-col-md4">
            <div class="grid-demo grid-demo-bg1">&nbsp;</div>
        </div>
    </div>
</div>
<script>
    // 点【提交】时响应，后台直接处理返回结果。适合时间需要立即响应结果且花费时间少的任务
    function submissions() {
        document.scriptform.action = "{% url 'scriptCall'  %}";
        document.scriptform.submit();
    }
    // 点【加入任务队列】时响应，加入到后台异步任务队列。适合花费时间长的任务。
    function asytasks() {
        document.scriptform.action = "{% url 'tasksQueue'  %}";
        document.scriptform.submit();
    }
</script>

```





2. 加入到collection目录下

![image-20200327000231694.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327000231694.png?raw=true)

3. 到后台添加脚本

   这里需要注意的是，脚本的后缀也要写上去，平台根据后缀来识别运行

   ![image-20200327000252174.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327000252174.png?raw=true)

![image-20200327000316872.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327000316872.png?raw=true)

4. 脚本添加成功

   ![image-20200327000430510.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327000430510.png?raw=true)



#### 3.1 网页工具的引用

​		除了脚本添加，对于很不错的网页工具也可以通过模板直接引入。

​		这里引用的是https://phpinfo.me/domain/在线子域名收集，因为不是调用脚本所以可以直接使用.html做结尾

![image-20200327004058513.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327004058513.png?raw=true)

![image-20200327004047401.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327004047401.png?raw=true)

在线工具引用web模板代码：

```
<span style="white-space:pre">	</span><iframe src="https://phpinfo.me/domain/" width="100%" height="770px" frameborder="0" >
			
</iframe>
```

![image-20200327004203573.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327004203573.png?raw=true)

#### 4. 脚本使用【前台执行】：适合短时间任务

![image-20200327001632434.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327001632434.png?raw=true)



点击【提交】即可立即获得命令执行结果

![image-20200327001606554.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327001606554.png?raw=true)

#### 5.脚本使用【后台异步执行】：适合长时间任务

![image-20200327001729610.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327001729610.png?raw=true)

点击加入【任务队列】，就会加入任务队列，在后台进行异步执行

![image-20200327001838558.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327001838558.png?raw=true)

任务结果需要到【用户任务】查看

![image-20200327001919452.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327001919452.png?raw=true)

在【用户任务】中可以看到自己的异步任务历史
![image-20200327001929566.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327001929566.png?raw=true)

点击即可查看结果，若任务还没有完成则会显示空白。


![image-20200327001936174.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327001936174.png?raw=true)

#### 4. 忘记密码，平台发件邮箱配置



1. 在QQ邮箱的设置【帐户】一栏开启服务，并生成授权码

![image-20200327002304565.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327002304565.png?raw=true)

​	![image-20200327002422540.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327002422540.png?raw=true)



2. 然后到/www/Beta/settings.py中进行设置

   ![image-20200327002631222.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327002631222.png?raw=true)

3. 然后输入命令` docker restart Beta`重启平台

![image-20200327002757853.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327002757853.png?raw=true)

4. 测试更改密码

   ​	填入用户名与对应的邮箱

   ![image-20200327002934589.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327002934589.png?raw=true)

   ![image-20200327002922546.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327002922546.png?raw=true)

### Q&A

Q：如果运行其他类型的脚本怎么办？

A：例如需要运行Ruby脚本。网页中的【提交】是把命令直接交给平台执行的，所以需要对【Beta】容器添加ruby的环境。网页中的【加入任务队列】是把命令交给【Beta_worker1】来执行的，所以同时需要给【Beta_worker1】容器配置ruby环境。

配置完环境后，需要修改/www/Beta/index/views.py文件里的【scriptcallView】和【tasksqueueView】函数，增加对ruby的支持

![image-20200327004859922.png](https://github.com/sdfzy/Beta/blob/master/images/image-20200327004859922.png?raw=true)



Q：增加了其他语言环境，如何更改容器构建流程使下次免去再次配置语言环境？

A：【Beta】容器与【Beta_worker1】的都是根据文件中的Dockerfile进行构建，修改里面的构建代码即可。其他容器是直接使用官方提供的镜像。





还有什么疑问可以issues，或者直接联系我



博客地址：https://blog.csdn.net/nzjdsds

QQ：492445574



##### 注意：禁止使用本项目所有软件及其文章等资源进行非法测试！