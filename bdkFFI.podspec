Pod::Spec.new do |s|
  s.name             = 'bdkFFI'
  s.version          = '1.0'
  s.summary          = 'Swift bdk-ffi'
  s.homepage         = 'https://github.com/bitcoindevkit/bdk-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'BDK Developers' => 'https://discord.gg/dstn4dQ' }
  s.source = {
    :http => 'https://github.com/bitcoindevkit/bdk-swift/releases/download/0.3.0/bdkFFI.xcframework.zip'
  }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.vendored_frameworks = 'bdkFFI.xcframework'
end
