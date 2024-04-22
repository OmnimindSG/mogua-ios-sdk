Pod::Spec.new do |spec|

  spec.name                 = "MoguaSDK"
  spec.version              = "0.4.2"
  spec.summary              = "Web to App Parameter Passing Solution."
  spec.description          = "When a download link for an app is sent via text messages, emails, affiliate pages, QR codes, etc., our SDK tracks the link's parameters when new users download and open the app."
  spec.homepage             = "http://www.mogua.io"
  spec.license              = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  spec.author               = { "Omnimind" => "omnimind.sg@gmail.com" }
  spec.platform             = :ios, "12.0"
  spec.source               = { :git => "https://github.com/OmnimindSG/mogua-ios-sdk.git", :tag => "#{spec.version}" }
  spec.source_files         = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files        = "Classes/Exclude"
  spec.public_header_files  = "Classes/**/*.h"
  spec.vendored_libraries   = "Classes/**/libMoguaSDK.a"
  spec.static_framework     = true
  # spec.pod_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "x86_64" }
  # spec.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "x86_64" }

end
