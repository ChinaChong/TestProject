#
#  Be sure to run `pod spec lint BiuTestSubspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "BiuTestSubspec"
  spec.version      = "1.0.3"
  spec.summary      = "A CocoaPods Subspec Test Pod Project."
  spec.homepage     = "https://github.com/ChinaChong/TestProject"
  spec.license      = "MIT"
  spec.author       = { "nox_chong" => "gaochong@bignox.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/ChinaChong/TestProject.git", :tag => "#{spec.version}" }

  # 这个里面的写法应该和外面的主Pod几乎一样
  spec.subspec 'Mission1' do |ss|
    ss.source_files = 'File1.txt'
    ss.dependency 'NoxmobiSDK', '~> 1.12.1'
  end

  spec.subspec 'Mission2' do |ss|
    ss.source_files = 'File2.txt'
    ss.dependency 'AppLovinSDK', '~> 6.14.8'
  end

  spec.subspec 'Mission3' do |ss|
    ss.source_files = 'File3.txt'
    ss.dependency 'InMobiSDK', '~> 9.1.1'
  end

  spec.dependency 'AFNetworking', '~> 4.0.1'

end
