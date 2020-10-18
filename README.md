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



























                                    





A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
