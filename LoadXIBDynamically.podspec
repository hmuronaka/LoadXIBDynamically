snippet podspec
abbr podspec
  Pod::Spec.new do |spec|
    spec.name         = 'LoadXIBDynamically'
    spec.version      = '0.1.8'
    spec.license      = { :type => 'MIT' }
    spec.homepage     = 'https://github.com/hmuronaka/loadxibdynamically'
    spec.authors      = { 'Hiroaki Muronaka' => 'capriccio27@gmail.com' }
    spec.summary      = 'Load XIB Dynamically for iOS.'
    spec.source       = { :git => 'https://github.com/hmuronaka/LoadXIBDynamically.git', :tag => '0.1.8' }
    spec.source_files = 'Class/**/*.{h,m}'
    spec.requires_arc = true
    spec.dependency "GCDWebServer", "~> 3.0"
    spec.dependency "GCDWebServer/WebDAV", "~> 3.0" 
  end
