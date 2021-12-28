#
# Be sure to run `pod lib lint WeverseAccountSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WeverseAccountSDK'
  s.version          = '0.1.4'
  s.summary          = 'A short description of WeverseAccountSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage                    = 'https://github.com/benxcorp/iOS_weverse_account'
  s.license                     = "Apache License, Version 2.0"
  s.author                      = { 'iron' => 'iron@weversecompany.com' }
  s.source                      = { :git => 'https://github.com/benxcorp/iOS_weverse_account.git', :tag => "#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.default_subspecs            = "Core"
  s.ios.deployment_target       = '13.0'
  s.swift_version               = "5.0"
  # s.source_files                = 'WeverseAccountSDK/**/**'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

  s.dependency 'GoogleSignIn'
  s.dependency 'FirebaseAuth', '~> 8.0'
  s.dependency 'FirebaseCore'

  s.subspec "Core" do |sp|
    sp.source_files     = ["WeverseAccountSDK/**/*.swift", "WeverseAccountSDK/WeverseAccountSDK.h"]
    # sp.resource_bundles = { 'WeverseAccountSDK' => ["WeverseAccountSDK/**/*.{lproj,storyboard,xib,xcassets}"] }
        # sp.resource_bundles = { 'WeverseAccountSDK' => ["WeverseAccountSDK/**/*.{storyboard,xib,xcassets}"] }
    # sp.resource = { 'WeverseAccountSDK' => ["WeverseAccountSDK/**/*.{storyboard,xib,xcassets,lproj}"] }
        sp.resource = 'WeverseAccountSDK/**/*.{storyboard,xib,xcassets}'

  end

  s.subspec "ObjC" do |sp|
    sp.source_files  = ["WeverseAccountSDKObjc/**/*.swift", "WeverseAccountSDKObjc/WeverseAccountSDKObjc.h"]
    sp.dependency "WeverseAccountSDK/Core"
  end

end
