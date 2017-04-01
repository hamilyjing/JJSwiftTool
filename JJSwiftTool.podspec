Pod::Spec.new do |s|

  s.name         = "JJSwiftTool"
  s.version      = "1.0.6"
  s.summary      = "iOS swift development tool"
  s.homepage     = "https://github.com/hamilyjing/JJSwiftTool"
  s.license      = "MIT"
  s.author             = { "JJ" => "gongjian_001@126.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/hamilyjing/JJSwiftTool.git", :tag => s.version }
  s.source_files  = "JJSwiftTool", "JJSwiftTool/**/*.{swift,h,m}"

end
