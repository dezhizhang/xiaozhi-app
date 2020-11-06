# xiaozhi



### Center组件 
2020-10-17
|  名称   | 或能  |
|  ----  | ----  |
| alignment | topCenter：顶部居中对齐 |
|           | topLeft：顶部左对齐 |
|           | topRight：顶部右对齐 | 
|           | center：水平垂直居中对齐 | 
|           | centerLeft：垂直居中水平居左对齐 |
|           | centerRight：垂直居中水平居右对齐 |
|           | bottomCenter 底部居中对齐 | 
|           | bottomLeft：底部居左对齐 | 
|           | bottomRight：底部居右对齐 | 
|decoration | decoration: BoxDecoration( color: Colors.blue,border: Border.all( color: Colors.red, width: 2.0, ),borderRadius: BorderRadius.all( Radius.circular(8.0) )) | 
| margin    | margin 属性是表示 Container 与外部其他 组件的距离。| 
|           | EdgeInsets.all(20.0) |
| padding   | padding 就 是 Container 的 内 边 距 ， 指 Container 边缘与 Child 之间的距离 | 
|           | Container 边缘与 Child 之间的距离 padding: EdgeInsets.all(10.0) |
| transform | 让 Container 容易进行一些旋转之类的 |

### Text 组件
|  名称   | 或能  |
|  ----  | ----  |
| textAlign | 文本对齐方式（center 居中，left 左 对齐，right 右对齐，justfy 两端对齐） |
| textDirection | 文本方向（ltr 从左至右，rtl 从右至 左）| 
| overflow | 文字超出屏幕之后的处理方式（clip 裁剪，fade 渐隐，ellipsis 省略号）| 
| textScaleFactor | 字体显示倍率 | 
| maxLines | 文字显示最大行数 | 
| style | 字体的样式设置 |
| decoration | 文字装饰线（none 没有线，lineThrough 删 除线，overline 上划线，underline 下划线）| 
| decorationColor | 文字装饰线颜色 | 
| decorationStyle | 文字装饰线风格（[dashed,dotted]虚线， double 两根线，solid 一根实线，wavy 波浪 线） | 
| wordSpacing | 单词间隙（如果是负值，会让单词变得更紧凑 | 
 
### 图片组件
Image.asset， 本地图片   
Image.network 远程图片  
### Image 组件的常用属性:
|  名称   | 类型  | 说明 | 
|  ----  | ----  | ----  | 
| alignment | Alignment | 图片的对齐方式 | 
| color 和 colorBlendMode | | 设置图片的背景颜色，通常和 colorBlendMode 配合一起 使用，这样可以是图片颜色和背景色混合。上面的图片就 是进行了颜色的混合，绿色背景和图片红色的混合 | 
| fit | BoxFit | fit 属性用来控制图片的拉伸和挤压，这都是根据父容器来 的。BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。 BoxFit.contain:全图显示，显示原比例，可能会有空隙。 BoxFit.cover：显示可能拉伸，可能裁切，充满（图片要 充满整个容器，还不变形）。BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸， 可能裁切。 BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉 伸，可能裁切。 BoxFit.scaleDown：效果和 contain 差不多，但是此属 性不允许显示超过源图片大小，可小不可大。
| repeat | 平铺 |  ImageRepeat.repeat : 横向和纵向都进行重复，直到铺满整 个画布。 ImageRepeat.repeatX: 横向重复，纵向不重复。 | 
| width | | 宽度一般结合 ClipOval 才能看到效果 | 
| height | | 高度一般结合 ClipOval 才能看到效果 |
```

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Center(
     child: Container(
       width: 300,
       height: 300,
       decoration: BoxDecoration(
         color: Colors.pink,
         border: Border.all(
           color:Colors.yellow,
           width:2
         )
       ),
       child: Image.network(
         'http://tugua.oss-cn-hangzhou.aliyuncs.com/16006151939994201.jpeg',
         fit: BoxFit.cover,
         alignment: Alignment.center,
         color: Colors.yellow,
         colorBlendMode: BlendMode.multiply,

       ),
     ),
     
   );
  }
}
```
### 实现圆角图片
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.pink,
        ++image: DecorationImage( //重点是这二行代码
            image:  NetworkImage(
                'http://tugua.oss-cn-hangzhou.aliyuncs.com/16006151939994201.jpeg'
            ),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(150)
        ),
      ),
    );
  }
}
```
### 实现圆解图片的第二种方式
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300,
        height: 300,
        child: ClipOval(
          child: Image.network(
            'http://tugua.oss-cn-hangzhou.aliyuncs.com/16006151939994201.jpeg',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
            ),
        ),
      ),
    );
  }
}
```
####  引入本地图片
![引入本地图片](http://chuantu.xyz/t6/741/1603031544x1700392639.png)   

然后，打开 pubspec.yaml 声明一下添加的图片文件，注意要配置对  
![上传图片](http://chuantu.xyz/t6/741/1603031736x992239403.png)   
#### 示例代码
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Center(
     child: Container(
       child: Image.asset('images/avator.png'),
     ),
   );
  }
}
```
### Flutter 列表组件概述
列表布局是我们项目开发中最常用的一种布局方式。Flutter 中我们可以通过 ListView 来定义 列表项，支持垂直和水平方向展示。通过一个属性就可以控制列表的显示方向。列表有一下 分类： 

1、垂直列表   
2、垂直图文列表   
3、水平列表   
4、动态列表   
5、矩阵式列表 
### Flutter 列表参数
|  名称   | 类型  | 说明 | 
|  ----  | ----  | ----  | 
| scrollDirection | Axis | Axis.horizontal 水平列表 Axis.vertical 垂直列表 | 
| padding | EdgeInsetsGeometry | 内边距 | 
| resolve | bool | 组件反向排序 | 
| children | List<Widget> | 列表元素 | 
### Flutter 基本列表
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.search,color: Colors.pink,size: 60),
          title: Text(
            '新闻标题1',
            style: TextStyle(
              fontSize: 18,
              color:Colors.pink
            ),
          ),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
        ),
        ListTile(
          leading: Icon(Icons.home,color: Colors.yellow,size: 60),
          title: Text('新闻标题1'),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
        ),
        ListTile(
          leading: Icon(Icons.settings,color: Colors.green,size: 60),
          title: Text('新闻标题1'),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
        )
      ],
    );
  }
}
```
### ListView实现动态列表
```
class HomeContent extends StatelessWidget{
  List<Widget> _getData() {
    List<Widget> list = new List();
    for(var i=0;i < 100;i++) {
      list.add(
          ListTile(
          leading: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg'),
          title: Text('新闻标题${i}'),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
        ),
      );
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData()
    );
  }
}

```
### GridView组件
|  名称   | 类型  | 说明 | 
|  ----  | ----  | ----  | 
| scrollDirection | Axis | 滚动方法 | 
| padding | EdgeInsetsGeometry | 内边距 |
| resolve | bool | 组件反向排序 | 
| crossAxisSpacing | double | 水平子 Widget 之间间距 |
| mainAxisSpacing | double | 垂直子 Widget 之间间距 | 
| crossAxisCount | int | 一行的 Widget 数量 |
| childAspectRatio | double | 子 Widget 宽高比例 | 
| children | | <Widget>[ ] | 
| gridDelegate | SliverGridDelegateWithFix | 控制布局主要用在 GridView.builder 里面|

### Padding组件
|  属性   | 说明  | 
|  ----  | ----  |
| padding| padding 值, EdgeInsetss 设置填充的值 |
| child | 子组件 |
### 示例代码
```
lass HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return GridView.count(
     crossAxisCount: 2,
     childAspectRatio: 1.5,
     children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child:  Image.network(
            'http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg'
            ,fit: BoxFit.cover
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Image.network(
            'http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',
            fit: BoxFit.cover
          ),
        ),
     ],
   );
  }
}
```
### Row 水平布局组件
|  属性   | 说明  | 
|  ----  | ----  |
| mainAxisAlignment| 主轴的排序方式 |
| crossAxisAlignment | 次轴的排序方式 |
| children | 组件子元素 |
### 示例代码
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 750,
      height: 800,
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconContent(Icons.home,color:Colors.pink),
          IconContent(Icons.search,color: Colors.yellow),
          IconContent(Icons.settings,color: Colors.blue),
        ],
      ),
    );
  }
  ```
  ### Stack 组件
|  属性   | 说明  | 
|  ----  | ----  |
| alignment | 配置所有子元素的显示位置 | 
| children | 子组件 | 
### 示例代码
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300,
        height: 400,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Align(
              alignment:Alignment.topLeft,
              child: Icon(Icons.home,size: 40,color: Colors.white),
            ),
            Align(
              alignment:Alignment.center,
              child: Icon(Icons.search,size: 40,color: Colors.white),
            ),
            Align(
              alignment:Alignment.bottomRight,
              child: Icon(Icons.settings,size: 40,color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
```
### Card 组件  
Card 是卡片组件块，内容可以由大多数类型的 Widget 构成，Card 具有圆角和阴影，这让它 看起来有立体感。 
|  属性   | 说明  | 
|  ----  | ----  |
| margin | 外边距 | 
| child  | 子组件 | 
| Shape  | Card 的阴影效果，默认的阴影效果为圆角的 长方形边 | 
### 示例代码
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return ListView(
     children: <Widget>[
       Card(
         margin: EdgeInsets.all(10),
         child: Column(
           children: <Widget>[
             AspectRatio(
               aspectRatio: 16/9,
               child:  Image.network(
                 'http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg',
                 fit: BoxFit.cover,
                ),
             ),
             ListTile(
              //  leading: ClipOval(
              //    child: Image.network(
              //      'http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg',
              //      fit: BoxFit.cover,
              //     ),
              //  ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg'),
              ),
               title: Text('晓智商城'),
               subtitle: Text('hello'),
             )
           ],
         ),
       )
     ],
   );
  }
}
```
### Wrap组件
|  属性   | 说明  | 
|  ----  | ----  |
| direction | 主轴的方向，默认水平 | 
| alignment | 主轴的对其方式 | 
| spacing | 主轴方向上的间距 | 
| textDirection | 文本方向 | 
| verticalDirection | 定义了 children 摆放顺序，默认是 down，见 Flex 相关属性介绍。| 
| runAlignment | run 的对齐方式。run 可以理解为新的行或者 列，如果是水平方向布局的话，run 可以理解 为新的一行 | 
| runSpacing | run 的间距 | 
### 示例代码
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: <Widget>[
        RaisedButton(
          child: Text('第一集'),
          onPressed: () {
            print('第一集');
          },
        ),
        RaisedButton(
          child: Text('第二集'),
          onPressed: () {
            print('第二集');
          },
        ),
        RaisedButton(
          child: Text('第三集'),
          onPressed: () {
            print('第三集');
          },
        )
      ],
    );
  }
}
```
### 有状态组件
```
class HomeContent extends StatefulWidget{
  @override
  HomeContent({Key key}):super(key:key);
  _HomeContent createState() => _HomeContent();
  
}

class _HomeContent extends State<HomeContent>{
  int count = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        SizedBox(height: 200),
        Chip(
          label: Text('${this.count}'),
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text('按钮'),
          onPressed: () {
            setState(() {
              this.count++;
            });
          },
        )
      ],
    );
  }
}
```
### 底部导航
```
class Tabs extends StatefulWidget{
  Tabs({Key key}):super(key:key);
  _Tabs createState() =>_Tabs();
}

class _Tabs extends State<Tabs>{
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('晓智商城'),
      ),
      body: Text('晓智商城'),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('搜索')
          )
        ],
      ),
    );
  }
}
```
### 进度条
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: LinearProgressIndicator(
          backgroundColor: Colors.pink,
          valueColor: AlwaysStoppedAnimation(Colors.green),
        ),
      ),
    );
  }
}
```
### 命名路由
```
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
      routes: {
        '/form':(context) => FormPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        color: Colors.pink,
        child: Text('跳转到form表单页'),
        onPressed: () {
          Navigator.pushNamed(context, '/form');
        },
      ),
    );
  }
}
```
### 路由传参
```
import 'dart:ui';

import 'package:flutter/material.dart';

import './pages/form.dart';
import './pages/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final routes = {
    '/form':(context) => FormPage(),
    '/search':(context,{arguments}) => SearchPage(arguments:arguments),
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text('晓知商城')
        ),
        body: HomeContent(),
      ),
      onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        if(pageContentBuilder != null) {
          if(settings.arguments != null) {
            final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context,
              arguments:settings.arguments
            )
            );
            return route;
          } else {
            final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context)
            );
            return route;
          }
        } 
      },
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('跳到表单'),
            color: Colors.pink,
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
          ),
          RaisedButton(
            child: Text('跳到搜索'),
            color: Colors.yellow,
            onPressed: () {
              Navigator.pushNamed(context, '/search',arguments: {
                "id":456
              });
            },
          )
        ],
      ),
    );
  }
}
```
### AppBar 自定义顶部按钮图 标、颜色
|  属性   | 描述  | 
|  ----  | ----  |
| leading | 在标题前面显示的一个控件，在首页通常显示应用 的 logo；在其他界面通常显示为返回按钮 | 
| title | 标题，通常显示为当前界面的标题文字，可以放组 件 | 
| actions | 通常使用 IconButton 来表示，可以放按钮组 | 
| bottom | 通常放 tabBar，标题下面显示一个 Tab 导航栏 | 
| backgroundColor |  导航背景颜色 | 
| iconTheme | 图标样式 | 
| textTheme | 文字样式 | 
| centerTitle | 标题是否居中显示 | 
### 示例代码
```
import 'package:flutter/material.dart';
class AppBarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('表单页面'),
          centerTitle: true,
          backgroundColor: Colors.pink,
          leading: IconButton(
            icon: Icon(Icons.backup_sharp),
            onPressed: () {

            },
          ),
        ),
      ),
    );
  }
}

```
### 自定义TabBar实现顶部Tab切换
|  属性   | 描述  | 
|  ----  | ----  |
| tabs | 显示的标签内容，一般使用Tab对象,也可以是其他的Widget | 
| controller | TabController对象 | 
| isScrollable | 是否可滚动 | 
| indicatorColor | 指示器颜色 | 
| indicatorWeight | 指示器高度 |
| indicatorPadding | 底部指示器的 Padding | 
| indicator | 指示器 decoration，例如边框等 | 
| indicatorSize | 指示器大小计算方式，TabBarIndicatorSize.label 跟文 字等宽,TabBarIndicatorSize.tab 跟每个 tab 等宽 |
| labelColor | 选中 label 颜色 | 
| labelStyle | 选中 label 的 Style | 
| labelPadding | 每个 label 的 padding 值 | 
| unselectedLabelColor | 未选中 label 颜色 | 
| unselectedLabelStyle | 未选中 label 的 Style | 

### 示例代码
```
import 'package:flutter/material.dart';


class TopBarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('晓智商城'),
            bottom: TabBar(
              // isScrollable: true,
              tabs: <Widget>[
                Tab(text: '热门'),
                Tab(text: '推荐'),
                Tab(text: '好卖'),
                Tab(text: '好评'),
              
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(title: Text('这是热门')),
                
                ],
              ),
               ListView(
                children: <Widget>[
                  ListTile(title: Text('这是推荐')),
                 
                ],
              ),
               ListView(
                children: <Widget>[
                  ListTile(title: Text('这是好卖')),
                 
                ],
              ), 
              ListView(
                children: <Widget>[
                  ListTile(title: Text('这是好评')),
                
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}

```
### 动态tabs切换
```
import 'package:flutter/material.dart';

class AppBarController extends StatefulWidget{
  @override
 AppBarController({Key key}):super(key:key);
 _AppBarController createState() => _AppBarController();

}

class _AppBarController extends State<AppBarController> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() { 
    super.initState();
    this._tabController = TabController(vsync: this,length: 2);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child:  Scaffold(
        appBar: AppBar(
          title: Text('顶部tab切换'),
          bottom: TabBar(
            controller: this._tabController,
              tabs: <Widget>[
              Tab(
                child: Text('热门'),
              ),
              Tab(
                child: Text('推荐'),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: <Widget>[
            Center(
              child: Text('热门'),
            ),
            Center(
              child: Text('推荐'),
            )
          ],
        ),
      )
      ),
    );
  }
  
}

```
### draw组件
```
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('组件'),
          centerTitle: true,
          backgroundColor: Colors.pink,

        ),
        drawer: Drawer(
          child: Text('Drawer'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

 class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('body')
    );
  }
}
```
### TextField 文本框组件
|  属性   | 描述  | 
|  ----  | ----  |
| maxLines | 设置此参数可以把文本框改为多行文本框 | 
| onChanged | 文本框改变的时候触发的事件 | 
| decoration | hintText 类似 html 中的 placeholder border 配置文本框边框 OutlineInputBorder 配合使用 labelText lable 的名称 labelStyle 配置 lable 的样式 |
| obscureText | 把文本框框改为密码框 | 
| controller | controller 结合 TextEditingController()可以配置表单默认显示的内容 | 
### 示例代码
```
class TextFieldPage extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('表单页'),
        ),
        body: HomeContent(),
      )
    );
  }
}


class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding:  EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(),
          SizedBox(height: 10),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: '请输入姓名',
              border: OutlineInputBorder()
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: '请输入',
              labelText: '用户名',
              icon: Icon(Icons.people)
            ),
          )
        ],
      ),
    );
  }
}
```
### 获取表单的值
```
class _HomeContent extends State<HomeContent>{
  String _description = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: '请输入',
              border: OutlineInputBorder()
            ),
           onChanged: (value) {
             setState(() {
               this._description = value;
             });
           },
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            child:RaisedButton(
            color: Colors.pink,
            textColor: Colors.white,
            child: Text('登录'),
            onPressed: () {
              print(this._description);
            },
          ),
          )
         
        ],
      ),
    );
  }
}
```
### Checkbox组件
|  属性   | 描述  | 
|  ----  | ----  |
| value | true 或者 false | 
| onChanged | 改变的时候触发的事件 | 
| activeColor | 选中的颜色、背景颜色 | 
| checkColor | 选中的颜色、Checkbox 里面对号的颜色 | 
### 示例代码
```
import 'package:flutter/material.dart';

class CheckBoxPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('多选按钮'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  bool _flag = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child:  Column(
        children: <Widget>[
          Checkbox(
            value: this._flag,
            onChanged: (value) {
              setState(() {
                this._flag = value;
              });
            } ,
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            child: RaisedButton(
            child: Text('登录'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: () {
              print(this._flag);
            },
          ),
          )
         
        ],
      )
    );
  }
}
```
### CheckboxListTile组件
|  属性   | 描述  | 
|  ----  | ----  |
| value | true 或者 false | 
| onChanged | 改变的时候触发的事件 | 
| title | 标题 | 
| subtitle | 二级标题 | 
| secondary | 配置图标或者图片 | 
| selected |  选中的时候文字颜色是否跟着改变 | 
### 示例代码
```
import 'package:flutter/material.dart';

class CheckBoxListTilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('多选接钮组'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() =>_HomeContent();
}

class _HomeContent extends State<HomeContent>{
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          CheckboxListTile(
            value: this._isSelected,
            title: Text('flutter'),
            subtitle: Text('flutter学习'),
            activeColor: Colors.red,
            onChanged: (value) {
              setState(() {
                this._isSelected = value;
              });
            },
          )
        ],
      ),
    );
  }
}
```
### Flutter 日期和时间戳

日期转化成时间戳：
```
var now = new DateTime.now(); 
print(now.millisecondsSinceEpoch);//单位毫秒，13 位时间戳
```
时间戳转化成日期
```
var now = new DateTime.now(); 
var a=now.millisecondsSinceEpoch; 
print(DateTime.fromMillisecondsSinceEpoch(a))
```
### Flutter 轮播图组件
[轮播图地址](https://pub.dev/packages/flutter_swiper)
```
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwierPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('轮播图组件'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  @override
 _HomeContent createState() => _HomeContent();
}


class _HomeContent extends State<HomeContent>{
  List<Map> list = [
      {
        "url":"http://tugua.oss-cn-hangzhou.aliyuncs.com/16006152692596188.jpeg"
      },
      {
        "url":"http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg"
      }
    ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Swiper(
          itemBuilder: (BuildContext context,int index){
            return Image.network(list[index]['url'],fit:BoxFit.fill);
          },
          itemCount: list.length,
          pagination: SwiperPagination(),
          autoplay: true,
          control: SwiperControl(),
        ),
      ),
    );
  }
}
```
### AlertDialog
```
import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('轮播图组件'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  alertDialog() async {
    showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('温馨提示'),
        content: Text('您确定要删除吗？'),
        actions: <Widget>[
          FlatButton(
            child: Text('取消'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          FlatButton(
            child: Text('确定'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      );
    }
  );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      child:Column(
        children: <Widget>[
          RaisedButton(
            child: Text('alertDialog'),
            textColor: Colors.white,
            color: Colors.pink,
            onPressed: () {
              this.alertDialog();
            },
          )
        ],
      )
    ),
    );
  }
}
```
### SimpleDialog
```
simpleDialog () async {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('单选按钮'),
          children: <Widget>[
            SimpleDialogOption(
              child:Text('option A'),
              onPressed:() {
                Navigator.pop(context);
              }
            ),
            SimpleDialogOption(
              child:Text('option B'),
              onPressed:() {
                Navigator.pop(context);
              }
            )
          ],
        );
      }
    );
  }
```
### showModalBottomSheet
```
  bottomSheet () async {
    showModalBottomSheet(
      context: context, 
      builder: (context){
        return Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('分享A'),
              ),
              ListTile(
                title: Text('分享B'),
              )
            ],
          ),
        );
      });
  }

```
### Flutter JSON 字符串和 Map 类型的 转换
```
var mapData={"name":"张三","age":"20"}; 
var strData='{"name":"张三","age":"20"}';
print(json.encode(mapData)); //Map 转换成 Json 字符串 
print(json.decode(strData)); //Json 字符串转化成 Map 类型
```
### 示例代码
```
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:flutter_swiper/flutter_swiper.dart';

class DiaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('diao组件'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  List  list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }
  getData() async{
    var apiURL = 'https://www.guicaioa.com/api/focus/info';
    Response response = await Dio().get(apiURL);
    setState(() {
      this.list = response.data['data'];
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Swiper(
          itemBuilder: (BuildContext context,int index) {
            return Image.network(list[index]['url'],fit: BoxFit.cover);
          },
          itemCount: list.length,
          pagination: SwiperPagination(),
          autoplay: true,
        ),
       
      ),
    );
  }
}
```
### 上拉刷新
```
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class NewsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('news组件'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState()=>_HomeContent();
}

class _HomeContent extends State<HomeContent>{
  List list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getData();
  }
  _getData() async {
    var apiURL = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1';
    Response response = await Dio().get(apiURL);
    setState(() {
      this.list = json.decode(response.data)['result'];
    });
  }
  Future<void> _onRefresh() async{
    await Future.delayed(Duration(milliseconds:200),(){
      this._getData();
    });
  }
  @override
  Widget build(BuildContext context) {
    return this.list.length > 0 ?
      RefreshIndicator(
        onRefresh: _onRefresh,
        child:ListView.builder(
          itemCount: this.list.length,
          itemBuilder: (context,index) {
            return ListTile(
              title: Text('${this.list[index]['title']}'),
            );
          }
        ) 
      ):Text('加载中');
  }
}
```
### 下拉刷新
```
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class NewsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('news组件'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState()=>_HomeContent();
}

class _HomeContent extends State<HomeContent>{
  int page = 1;
  List list = [];
  ScrollController _scrollController = new ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getData();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 50) {
        print('hello');
        this._getData();
      }
     
    });
  }
  _getData() async {
    var apiURL = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=${this.page}';
    Response response = await Dio().get(apiURL);
    setState(() {
      this.list.addAll(json.decode(response.data)['result']); 
      this.page++;
    });
  }
  Future<void> _onRefresh() async{
    await Future.delayed(Duration(milliseconds:200),(){
      this._getData();
    });
  }
  @override
  Widget build(BuildContext context) {
    return this.list.length > 0 ?
      RefreshIndicator(
        onRefresh: _onRefresh,
        child:ListView.builder(
          controller: this._scrollController,
          itemCount: this.list.length,
          itemBuilder: (context,index) {
            return ListTile(
              title: Text('${this.list[index]['title']}'),
            );
          }
        ) 
      ):Text('加载中');
  }
}
```
### 设置信息
### 本地数据的保存与获取
```
import 'package:shared_preferences/shared_preferences.dart';

class Storage{
  static Future<void> setString(key,value) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString(key, value);
  }
  static Future<String> getString(key) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString(key);
  }
}
```
```
import 'package:flutter/material.dart';
import './utils/storage.dart';

class StoragePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('本地存储'),
        ),
        body: HomeContent(),
      ),
    );
  }
}


class HomeContent extends StatefulWidget{
  _HomeContent createState() =>_HomeContent();
}

class _HomeContent extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('保存数据'),
            color: Colors.pink,
            onPressed: () async{
              await Storage.setString('username', 'hello');
            },
          ),
          RaisedButton(
            child: Text('获取数据'),
            color: Colors.yellow,
            onPressed: () async{
              var username = await Storage.getString('username');
              print(username);
            },
          )
        ],
      ),
    );
  }
}
```
### form表单提交数据
```
import 'dart:ui';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}


class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Form(
        key: _formKey,
        autovalidate: true,
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              controller: _unameController,
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '请输入用户名',
                icon: Icon(Icons.person)
              ),
              validator: (value){
                return value.trim().length > 0 ? null:"用户名不能为空";
              },
            ),
            TextFormField(
              controller: _pwdController,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              validator: (value) {
                return value.trim().length > 5 ? null:"密码不能小于6位";
              },
            ),
            Padding(
              padding: EdgeInsets.only(top:10),
              child: Row(
                children: [
                  Expanded(
                    child:Builder(builder: (context){
                      return RaisedButton(
                        child: Text('登录'),
                        color: Colors.pink,
                        textColor: Colors.white,
                        onPressed: () {
                          if(Form.of(context).validate()) {
                            print('提交数据');
                          }
                        },
                      );
                    }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
```
### 进度条
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
      children: <Widget>[
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
        ),
        SizedBox(height: 100),
        LinearProgressIndicator(
          backgroundColor:Colors.pink[100],
          valueColor: AlwaysStoppedAnimation(Colors.pink),
        )
      ],
    )
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.pink),
          )
        ],
      ),
    );
  }
}
```
### 渐变按钮
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red,Colors.orange[700]]),
        borderRadius: BorderRadius.circular(3.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(2,2),
            blurRadius: 4.0
          )
        ]
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:80,vertical:18),
        child: Text("Login",style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
```
### listView
```
class HomeContent extends StatelessWidget{
  Widget divider1 = Divider(color: Colors.blue);
  Widget divider2 = Divider(color: Colors.red);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      itemBuilder: (BuildContext context,int index) {
        return ListTile(title: Text('${index}'));
      }, 
      separatorBuilder: (BuildContext context,int index) {
        return index % 2 == 0 ? divider1:divider2;
      }, 
      itemCount: 100
    );
  }
}
```
### 固定头布局
```
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ListTile(title: Text('商品列表')),
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context,int index) {
              return ListTile(title: Text("${index}"));
            }
          ),
        )
      ],
    );
  }
}
```
### 底部弹框
```
class HomeContent extends StatelessWidget{
  Future<int> _showModalBottomSheet(context) {
    return showModalBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context,int index) {
            return ListTile(
              title: Text('${index}'),
              onTap: () => Navigator.of(context).pop(),
            );
          },
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('hello'),
            onPressed: () async{
              int type = await _showModalBottomSheet(context);
            },
          )
        ],
      ),
    );
  }
}
```
### loading组件
```
class HomeContent extends StatelessWidget{
  Future<int> _showLoadingDialog(context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircularProgressIndicator(),
              Padding(
                padding: EdgeInsets.only(top:26),
                child: Text('正在加载中'),
              )
            ],
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('hello'),
            onPressed: () async{
              int type = await _showLoadingDialog(context);
            },
          )
        ],
      ),
    );
  }
}
```
### 日期组件
```
class HomeContent extends StatelessWidget{
  Future<DateTime> _showDatePicker(context) {
    var date = DateTime.now();
    return showDatePicker(
      context: context, 
      initialDate: date, 
      firstDate: date,
      lastDate: date.add(
        Duration(days: 30)
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('date'),
            onPressed: () async{
              await _showDatePicker(context);
            },
          )
        ],
      ),
    );
  }
}
```
### 自定义组件
```
lass GradientButton extends StatelessWidget{
  GradientButton({
    this.colors,
    this.width,
    this.height,
    this.onPressed,
    this.borderRadius,
    @required this.child
  });
  final List<Color> colors;
  final double width;
  final double height;
  final Widget child;
  final BorderRadius borderRadius;
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<Color> _colors = colors ?? [theme.primaryColor,theme.primaryColorDark ?? theme.primaryColor]; 
    // TODO: implement build
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: _colors),
        borderRadius: borderRadius,
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: _colors.last,
          highlightColor: Colors.transparent,
          borderRadius: borderRadius,
          onTap: onPressed,
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height:height,width: width),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```
### 底部组件
```
import 'package:flutter/material.dart';

class BottomBarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('搜索')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的')
            )
          ]
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    );
  }
}

```
### 保持页面状态1
```
import 'dart:ui';

import 'package:flutter/material.dart';

class NavigatorPage  extends StatefulWidget{
  _NavigatorPage createState() =>_NavigatorPage();
}

class _NavigatorPage extends State<NavigatorPage> with SingleTickerProviderStateMixin{
  TabController _controller;
  @override
  void initState() { 
    super.initState();
    _controller = TabController(length: 3,vsync: this);
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Text('1'),
          Text('2'),
          Text('3'),
        ],
      ),
    );
  }
}

```
### 保持页面状态2
```
import 'package:flutter/material.dart';

class IncreatePage extends StatefulWidget{
  _IncreatePage createState() => _IncreatePage();
}

class _IncreatePage extends State<IncreatePage> with AutomaticKeepAliveClientMixin {
  int _counter = 0;
  @override
  bool get wantKeepAlive => true;

  void _incrementCounter() {
    setState((){
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一资增中一个数字'),
            Text(
              '${_counter}',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
```
### search 
```
import 'package:flutter/material.dart';
import './asset.dart';


class SearchPage extends StatefulWidget{
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('search'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search');
            },
          ),
        ],
      ),
    );
  }
}
```
### tooltip
```
class _ToolTipPage extends State<ToolTipPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('toolTip'),
      ),
      body: Center(
        child: Tooltip(
          message: '请别点击我',
          child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/1600737225621499.jpeg'),
        ),
      ),
    );
  }
}
```
### weap布局
```

import 'package:flutter/material.dart';




class WrapPage extends StatefulWidget{
  _WrapPage createState() => _WrapPage();
}

class _WrapPage extends State<WrapPage> {
  @override
  List<Widget> list;
  @override
  void initState() { 
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }
  Widget buildAddButton() {
     return GestureDetector(
       onTap: () {
         if(list.length <9) {
            setState(() {
                list.insert(list.length, buildPhoto());
            });
         }
       },
       child: Padding(
         padding: EdgeInsets.all(8),
         child: Container(
           width: 80,
           height: 80,
           color: Colors.grey,
           child: Icon(Icons.add),
         ),
       ),
     );
  }

  Widget buildPhoto() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 80,
        height: 80,
        color: Colors.pink,
        child: Center(
          child: Text('hello'),
        )
      ),
    );
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wrap'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.green,
            child: Wrap(
              children: list,
              spacing: 26.0,
            ),
          )
        ),
      ),
    );
  }
}

```







































































