Pod::Spec.new do |spec|
  spec.name                  = 'AWConfirmActionSheet'
  spec.version               = '1.0.0'
  spec.license               = { :type => 'MIT' }
  spec.homepage              = 'https://github.com/awojnowski/AWConfirmActionSheet'
  spec.authors               = { 'Aaron Wojnowski' => 'aaronwojnowski@gmail.com' }
  spec.summary               = 'Block based action sheet for confirming destructive actions.'
  spec.source                = { :git => 'https://github.com/awojnowski/AWConfirmActionSheet.git', :tag => '1.0.0'}
  spec.source_files          = 'AWConfirmActionSheet/*'
  spec.ios.deployment_target = '7.0'
  spec.ios.frameworks        = 'Foundation', 'UIKit'
  spec.requires_arc          = true
end