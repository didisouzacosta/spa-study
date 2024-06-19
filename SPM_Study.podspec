Pod::Spec.new do |s|
  s.name             = 'SPM Study'
  s.version          = '1.0.0'
  s.summary          = 'A little study case for understand how SPM and CocoaPods work together.'

  s.homepage         = 'https://github.com/didisouzacosta/spm-study'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'SPM Study' => 'adrianosouzacostaios@gmail.com' }
  s.source           = { :git => 'https://github.com/didisouzacosta/spm-study.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = 'Sources/SPM Study/**/*'
end