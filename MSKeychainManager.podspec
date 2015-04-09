Pod::Spec.new do |spec|
  spec.name = 'MSKeychainManager'
  spec.version = '0.1.2'
  spec.authors = { 'Marcin Stepnowski' => 'le0n.uo@gmail.com' }
  spec.homepage = 'https://github.com/WezSieTato/MSKeychainManager'
  spec.summary = 'MSKeychainManager is simply class for saving one username/password pair per server.'
  spec.source = { :git => 'https://github.com/WezSieTato/MSKeychainManager.git', :tag => "v#{spec.version}" }
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.requires_arc = true

  spec.ios.frameworks = 'Foundation', 'Security'
  spec.ios.source_files = 'MSKeychainManager/*.{h,m}'
  spec.osx.source_files = 'MSKeychainManager/*.{h,m}'
  
end