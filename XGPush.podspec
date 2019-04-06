Pod::Spec.new do |s|
  s.name              = "XGPush"
  s.version           = "3.3.5"
  s.summary           = "信鸽推送 for Cocoapods"
  s.description      = <<-DESC
    腾讯信鸽推送。
                       DESC
  s.homepage          = "https://github.com/HyanCat"
  s.authors           = {
    "HyanCat" => "hyancat.cn@gmail.com"
  }
  s.license           = { :type => 'Copyright', :text => 'Copyright HyanCat All Right Reserved.' }
  s.source            = {
    :http => "https://xg.qq.com/pigeon_v2/resource/sdk/Xg-Push-SDK-iOS-3.3.5.zip"
  }
  s.platform          = :ios, "8.0"
  s.frameworks        = "SystemConfiguration", "CoreTelephony"
  s.weak_framework    = "UserNotifications"
  s.libraries         = "z", "sqlite3"

  s.source_files      = "XGPush/*.{h,m}"
  s.public_header_files = "XGPush/*.h"
  s.vendored_libraries = "XGPush/libXG-SDK.a"

  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }

end
