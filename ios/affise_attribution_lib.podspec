#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint affise_attribution_lib.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'affise_attribution_lib'
  s.version          = '1.0.0'
  s.summary          = 'Affise Attribution Flutter plugin.'
  s.description      = <<-DESC
Affise Attribution Flutter plugin.
                       DESC
  s.homepage         = 'https://affise.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'affise' => 'support@affise.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  s.dependency 'Flutter'
  s.dependency 'AffiseInternal', '1.6.54'

end
