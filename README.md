<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">TNT课评宝</h1>
<h4 align="center">基于SpringBoot+Vue前后端分离的Java课程评价平台</h4>
## 平台简介

TNT课评宝是一个课程评价平台，旨在为学生和教师提供一个公平、公正、有效的评价系统。

# TNT 项目环境搭建指南

## 准备工作
- **JDK**: 版本 >= 1.8（推荐1.8版本）
- **MySQL**: 版本 >= 5.7.0（推荐5.7版本）
- **Maven**: 版本 >= 3.0

## 运行系统
### 1. 下载项目
前往 [Gitee下载页面](https://github.com/bighuangxx/TNTCourseMentor) 下载并解压到工作目录。

### 2. 导入项目到Eclipse
1. 打开Eclipse。
2. 菜单栏选择 `File -> Import`。
3. 选择 `Maven -> Existing Maven Projects`，点击 `Next>` 按钮。
4. 选择工作目录，然后点击 `Finish` 按钮，即可成功导入项目。

> **注意**：Eclipse会自动加载Maven依赖包，初次加载会比较慢（根据自身网络情况而定）。

### 3. 创建数据库并导入数据
1. 创建数据库 `tnt`。
2. 导入数据脚本 `tnt.sql`。

### 4. 启动项目
1. 打开项目运行文件 `com.ruoyi.RuoYiApplication.java`。
2. 如果控制台出现如下图所示信息，则表示启动成功。

```plaintext
(♥◠‿◠)ﾉﾞ  TNT启动成功   ლ(´ڡ`ლ)ﾞ  
 .-------.       ____     __        
 |  _ _   \      \   \   /  /    
 | ( ' )  |       \  _. /  '       
 |(_ o _) /        _( )_ .'         
 | (_,_).' __  ___(_ o _)'          
 |  |\ \  |  ||   |(_,_)'         
 |  | \ `'   /|   `-'  /           
 |  |  \    /  \      /           
 ''-'   `'-'    `-..-'

### 5. 访问系统
1. 打开浏览器，输入 `http://localhost:80`。
2. 使用默认账户/密码 `admin/admin123` 进行登录。

