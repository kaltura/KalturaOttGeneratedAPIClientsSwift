Pod::Spec.new do |s|
s.name             = 'KalturaOttClient'
s.version          = '5.2.8.26204'
s.summary          = 'Kaltura OTT Client Library for Swift/iOS'
s.homepage         = 'https://github.com/kaltura/KalturaOttGeneratedAPIClientsSwift'
s.license          = { :type => 'AGPLv3', :text => 'AGPLv3' }
s.author           = { 'Kaltura' => 'community@kaltura.com' }
s.source           = { :git => 'https://github.com/kaltura/KalturaOttGeneratedAPIClientsSwift.git', :tag => s.version.to_s }
s.ios.deployment_target = '8.0'
s.tvos.deployment_target = '10.0'
s.source_files = 'KalturaClient/Classes/**/*'
s.swift_version = '5.0'

 
s.subspec 'Core' do |sp|
    sp.source_files = 'KalturaClient/Classes/**/*'
    sp.dependency 'Log', '2.0'
end
s.default_subspec = 'Core'
end
