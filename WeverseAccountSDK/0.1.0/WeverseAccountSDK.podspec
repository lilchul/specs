Pod::Spec.new do |s|
  s.name             = 'WeverseAccountSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of WeverseAccountSDK.'

  s.description      = <<-DESC
                       WeverseAccount SDK provides a modern way of implementing WeverseAccount
                       DESC

  s.homepage                    = 'https://github.com/benxcorp/iOS_weverse_account'
  s.license                     = "Apache License, Version 2.0"
  s.author                      = { 'iron' => 'iron@weversecompany.com' }
  s.source                      = { :git => 'https://github.com/benxcorp/iOS_weverse_account.git', :tag => "#{s.version}" }
  s.default_subspecs            = "Core"
  s.ios.deployment_target       = '13.0'
  s.swift_version               = "5.0"
  s.pod_target_xcconfig         = { 'OTHER_LDFLAGS' => '-lObjC' }

  s.dependency 'GoogleSignIn'
  s.dependency 'FirebaseAuth'
  s.dependency 'FirebaseCore'

  s.subspec "Core" do |sp|
    sp.source_files = ["WeverseAccountSDK/**/*.swift", "WeverseAccountSDK/WeverseAccountSDK.h"]
    sp.resource     = 'WeverseAccountSDK/**/*.{storyboard,xib,xcassets,lproj}'
  end

  s.subspec "ObjC" do |sp|
    sp.source_files  = ["WeverseAccountSDKObjc/**/*.swift", "WeverseAccountSDKObjc/WeverseAccountSDKObjc.h"]
    sp.dependency "WeverseAccountSDK/Core"
  end

end
