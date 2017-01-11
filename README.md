# DBCorner
为基于UIView的视图添加高性能圆角
## 实现方案
  通过为视图添加一个CALayer层进行遮罩实现圆角，本方案可以说是一个hack方案吧~
  通用性极强，对所有继承于UIView的控件都适用！
## 对比测试
  demo中实现了一个UITableView加载了一行4个UIImageView的Cell 一屏幕渲染了100+个 “头像”，系统的圆角帧率基本上是10FPS上下，用了DBCorner可以稳定在57FPS!


## 使用方法:
1.直接拖入项目中使用
2.support cocoapods: pod 'DBCorner'

  欢迎体验，使用 联系:304511495@qq.com~
  
