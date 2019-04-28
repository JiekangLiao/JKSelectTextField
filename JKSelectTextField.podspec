 Pod::Spec.new do |s|
 s.name             = "JKSelectTextField"    #名称
 s.version          = "0.0.1"             #版本号
 s.summary          = "A text field that can be pulled down."     #简短介绍，下面是详细介绍
 s.homepage         = "https://github.com/JiekangLiao/JKSelectTextField"                           #主页,这里要填写可以访问到的地址，不然验证不通过
# s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"           #截图
 s.license          = "MIT"
 s.author           = { "Jack" => "937902524@qq.com" }                   #作者信息
 s.source           = { :git => "https://github.com/JiekangLiao/JKSelectTextField.git", :tag => "0.0.1" }      #项目地址，这里不支持ssh的地址，验证不通过，只支持HTTP和HTTPS，最好使用HTTPS
 s.platform     = :ios
 s.platform     = :ios, "9.0"           #支持的平台及版本

 s.source_files = "Sources/**/*.{h,m}""     #代码源文件地址，**/*表示Classes目录及其子目录下所有文件，如果有多个目录下则用逗号分开，如果需要在项目中分组显示，这里也要做相应的设置

# s.public_header_files = "Pod/Classes/**/*.h"   #公开头文件地址
 s.requires_arc = true
# s.dependency 'AFNetworking', '~> 2.3'   #依赖关系，该项目所依赖的其他库，如果有多个需要填写多个s.dependency

 end