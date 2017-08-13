Pod::Spec.new do |s|
s.name             = 'KalturaClient'
s.version          = '0.1.0'
s.summary          = 'KalturaClient.'
s.homepage         = 'https://github.com/tan-tan-kanarek/KalturaClient'
s.license          = { :type => 'AGPLv3', :text => 'AGPLv3' }
s.author           = { 'Kaltura' => 'community@kaltura.com' }
s.source           = { :git => 'https://github.com/tan-tan-kanarek/KalturaClient.git', :tag => s.version.to_s }
s.ios.deployment_target = '8.0'

 
s.subspec 'Core' do |sp|
    sp.source_files = 'KalturaClient/Classes/**/*'
    sp.dependency 'SwiftyJSON', '3.1.4'
    sp.dependency 'Log', '1.0'
end
s.default_subspec = 'Core'
end
