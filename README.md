# DBCorner
为基于UIView的视图添加高性能圆角
## 实现方案
  * 通过为视图添加一个CALayer层进行遮罩实现圆角，本方案可以说是一个hack方案吧~
  * 通用性极强，对所有继承于UIView的控件都适用!
  * 仅适用于背景颜色单一的情况下,背景多变建议针对性处理，例如使用UIImageView对image进行裁剪处理!
  
## 对比测试
  demo中实现了一个UITableView加载了一行4个UIImageView的Cell 一屏幕渲染了100+个 “头像”，系统的圆角帧率基本上是10FPS上下，用了DBCorner可以稳定在57FPS!
  
## 使用方法:
* 直接拖入项目中使用
* cocoapods: 在podfile中添加 pod 'DBCorner'

## 最后
* 如果我的项目对你有帮助欢迎 Star~
* 如果在使用过程中遇到BUG，希望你能Issues我!
* 如果在使用过程中发现功能不够用或者想交流的，希望你能Issues我，或者联系我QQ：304511495
* 如果你想为DBCorner输出代码，请Pull Requests!
  
