Pod::Spec.new do |spec|

  spec.name                 = "MoguaSDK"
  spec.version              = "0.10.0"
  spec.summary              = "Web to App Parameter Passing Solution."
  spec.description          = "When a download link for an app is sent via text messages, emails, affiliate pages, QR codes, etc., our SDK tracks the link's parameters when new users download and open the app."
  spec.homepage             = "https://www.mogua.io"
  spec.license              = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  spec.author               = { "Omnimind" => "omnimind.sg@gmail.com" }
  spec.platform             = :ios, "9.0"
  spec.source               = { :git => "https://github.com/OmnimindSG/mogua-ios-sdk.git", :tag => "#{spec.version}" }
  spec.source_files         = "lib/MoguaSDK.framework/**/*.h"
  spec.public_header_files  = "lib/MoguaSDK.framework/Headers/*"
  spec.vendored_frameworks  = "lib/MoguaSDK.framework"
  spec.preserve_paths       = "lib/MoguaSDK.framework"
  spec.static_framework     = true
  spec.frameworks           = "Foundation", "UIKit"
  spec.pod_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
  spec.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }

end
