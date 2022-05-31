Pod::Spec.new do |s|
  s.name             = 'BitcoinDevKit'
  s.version          = '0.3.0'
  s.summary          = 'Swift bindings for bdk-ffi'
  s.homepage         = 'https://github.com/bitcoindevkit/bdk-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'BDK Developers' => 'https://discord.gg/dstn4dQ' }
  s.source           = { :git => 'https://github.com/bitcoindevkit/bdk-swift.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/BitcoinDevKit/**/*'

  s.subspec 'bdkFFI' do |subspec|
    subspec.source_files = "bdkFFI.xcframework/**/*.{h,m,swift}"
    subspec.vendored_frameworks = 'bdkFFI.xcframework'
  end

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = true
    test_spec.framework = 'XCTest'
    test_spec.source_files = 'Tests/BitcoinDevKitTests/**/*.swift'
  end

end
