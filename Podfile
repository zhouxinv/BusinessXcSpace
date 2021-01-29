
use_frameworks!
source'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'

workspace 'BusinessXcSpace. xcworkspace'

project 'NSLogKit/NSLogKit.xcodeproj'
project 'shareKit/shareKit.xcodeproj'
project 'business1.xcodeproj'

abstract_target 'AllFrameWorks' do
 
    target 'business1' do
        project 'business1.xcodeproj'
        pod ‘Masonry’
	pod ‘AFNetworking’
    end
 
    target 'NSLogKit' do
	project 'NSLogKit/NSLogKit.xcodeproj'
	pod ‘Masonry’
    end

   target 'shareKit' do
	project 'shareKit/shareKit.xcodeproj'
	pod ‘Masonry’
    end
 
    post_install do |installer|
      installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
          config.build_settings['ENABLE_BITCODE'] = 'NO'
        end
      end
    end
end