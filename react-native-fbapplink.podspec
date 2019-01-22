require 'json'
version = JSON.parse(File.read('package.json'))["version"]

Pod::Spec.new do |s|

  s.name           = "react-native-fbapplink"
  s.version        = version
  s.summary        = "Capture a React Native view to an image"
  s.homepage       = "https://github.com/gre/react-native-fbapplink"
  s.license        = "MIT"
  s.author         = { "Trent Ewald" => "business@ubermc.net" }
  s.platform       = :ios, "7.0"
  s.source         = { :git => "https://github.com/gre/react-native-fbapplink.git", :tag => "v#{s.version}" }
  s.source_files   = 'ios/*.{h,m}'
  s.preserve_paths = "**/*.js"
  s.dependency 'React'

  s.subspec 'Core' do |ss|
    ss.dependency     'FBSDKCoreKit'
    ss.source_files = 'ios/RCTFBSDK/core/*.{h,m}'
  end

  s.subspec 'Login' do |ss|
    ss.dependency     'FBSDKLoginKit'
    ss.source_files = 'ios/RCTFBSDK/login/*.{h,m}'
  end

  s.subspec 'Share' do |ss|
    ss.dependency     'FBSDKShareKit'
    ss.source_files = 'ios/RCTFBSDK/share/*.{h,m}'
  end
end
