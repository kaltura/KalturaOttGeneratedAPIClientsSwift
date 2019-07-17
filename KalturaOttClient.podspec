Pod::Spec.new do |s|
s.name             = 'KalturaOttClient'
s.version          = '5.2.3.19642'
s.summary          = 'KalturaOttClient.'
s.homepage         = 'https://github.com/kaltura/clients-generator/tree/master/sources/swift'
s.license          = { :type => 'AGPLv3', :text => 'AGPLv3' }
s.author           = { 'Kaltura' => 'community@kaltura.com' }
s.source           = { :git => 'https://github.com/kaltura/KalturaOttGeneratedAPIClientsSwift.git', :tag => s.version.to_s }
s.ios.deployment_target = '8.0'
s.source_files = 'KalturaClient/Classes/**/*'

 
s.subspec 'Core' do |sp|
    sp.source_files = 'KalturaClient/Classes/**/*'
    sp.dependency 'Log', '1.0'
end
s.default_subspec = 'Core'
end
