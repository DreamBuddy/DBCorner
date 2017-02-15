
Pod::Spec.new do |s|

  s.name         = "DBCorner"
  s.version      = "0.1.1"
  s.summary      = "一行代码给任意视图添加高性能圆角，四个角可选 可添加描边属性"

  s.homepage     = "https://github.com/DreamBuddy/DBCorner.git"
 
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "DreamBuddy" => "304511495@qq.com" }

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/DreamBuddy/DBCorner.git", :tag => s.version.to_s }

  s.source_files = "Class/*.{h,m}"

  s.requires_arc = true


end
