#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_web_gl.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_web_gl'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*.{h,m,swift,inc,plist}'
  s.public_header_files = 'Classes/**/*.{h,inc}'

  s.dependency 'Flutter'

  s.platform = :ios, '11.0'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }  
  s.swift_version = '5.0'

  s.preserve_paths = 'MetalANGLE.framework'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework MetalANGLE', 'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/MetalANGLE.framework/Headers"'}
  s.vendored_frameworks = 'MetalANGLE.framework'
  s.library = 'c++'


end
