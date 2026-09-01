#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint affise_attribution_module_advertising.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'affise_attribution_module_advertising'
  s.version          = '1.7.14'
  s.summary          = 'Affise Attribution Advertising Module Flutter wrapper.'
  s.description      = <<-DESC
Affise Attribution Advertising Module Flutter wrapper.
                       DESC
  s.homepage         = 'https://affise.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'affise' => 'support@affise.com' }
  s.source           = { :path => '.' }
  s.source_files = 'affise_attribution_module_advertising/Sources/affise_attribution_module_advertising/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'affise_attribution_module_advertising_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
  s.dependency 'AffiseModule/Advertising', '1.7.14'
end
