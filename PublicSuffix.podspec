Pod::Spec.new do |s|
  s.platform              = :osx
  s.osx.deployment_target = "10.10"
  s.name                  = "PublicSuffix"
  s.version               = "0.1"
  s.summary               = "Get registered domain from an URL using Public Suffix List"
  s.homepage              = "https://github.com/choco/PSLSwift"
  s.license               = { :type => 'Apache', :file => 'LICENSE' }
  s.author                = { "Enrico Ghirardi" => "dev@choco.me" }
  s.source                = { :git => 'https://github.com/choco/PSLSwift.git', :tag => 'v0.1' }
  s.source_files          = 'PublicSuffix/*.{h,swift}'
  s.resources             = 'PublicSuffix/etld.plist'
  s.exclude_files         = 'README.md', 'LICENSE', 'PublicSuffix.podspec'
  s.requires_arc          = true
end
