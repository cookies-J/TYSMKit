#
# Be sure to run `pod lib lint TYSMKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TYSMKit'
  s.version          = '0.0.3'
  s.summary          = 'Thank you so much.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
take me down to the paradise city where the grass is green and the girls are pretty
                       DESC

  s.homepage         = 'https://github.com/cookies-J/TYSMKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cookies-J' => 'cooljele@gmail.com' }
  s.source           = { :git => 'https://github.com/cookies-J/TYSMKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TYSMKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TYSMKit' => ['TYSMKit/Assets/*.png']
  # }

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking'
  s.dependency 'SDWebImage'
  s.dependency 'YYKit'
  s.dependency 'CocoaLumberjack'
  s.dependency 'XMLDictionary'
  s.dependency 'DateTools'
  s.dependency 'FCFileManager'
  s.dependency 'BRPickerView'
  s.dependency 'CYLTabBarController'
  s.dependency 'RTRootNavigationController'
end
