Pod::Spec.new do |s|
  s.name             = 'spm_study'
  s.version          = '1.8.0'
  s.summary          = 'A little study case for understand how SPM and CocoaPods work together.'

  s.homepage         = 'https://github.com/didisouzacosta/spm-study'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'SPM Study' => 'adrianosouzacostaios@gmail.com' }
  s.source           = { :git => 'https://github.com/didisouzacosta/spm-study.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = 'Sources/spm-study/**/*'
  s.resources = 'Sources/spm-study/Resources/**/*'
  
  s.subspec 'spm_core' do |spm_core|
    spm_core.source_files = 'Sources/core/**/*'
    spm_core.dependency 'PromiseKit'
  end
  
  s.subspec 'spm_network' do |spm_network|
    spm_network.source_files = 'Sources/network/**/*'
    spm_network.dependency 'Alamofire'
  end
  
  s.subspec 'spm_utils' do |spm_utils|
    spm_utils.source_files = 'Sources/utils/**/*'
    spm_utils.dependency 'DGCharts'
    spm_utils.dependency 'TPKeyboardAvoiding'
    spm_utils.dependency 'PhoneNumberKit'
    spm_utils.dependency 'InputMask'
  end
end
