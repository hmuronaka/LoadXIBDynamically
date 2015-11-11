Pod::Spec.new do |spec|
  spec.name         = 'LoadXIBDynamically'
  spec.version      = '0.1.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/hmuronaka/loadxibdynamically'
  spec.authors      = { 'Hiroaki Muronaka' => 'capriccio27@gmail.com' }
  spec.summary      = 'Load XIB Dynamically for iOS and OS X.'
  spec.source       = { :git => 'https://github.com/hmuronaka/LoadXIBDynamically.git', :tag => '0.1.1' }
  spec.source_files = 'Class/**/*.{h,m}'
  spec.requires_arc = true
  spec.dependency "GCDWebServer", "~> 3.0"
  spec.dependency "GCDWebServer/WebDAV", "~> 3.0" 
end
