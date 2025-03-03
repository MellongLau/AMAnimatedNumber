Pod::Spec.new do |s|
  s.name         = "AMAnimatedNumber"
  s.version      = "0.0.4"
  s.summary      = "AMAnimatedNumber is simple number animation component."
  s.homepage     = "https://github.com/MellongLau/AMAnimatedNumber"
  s.screenshots  = "https://raw.github.com/MellongLau/AMAnimatedNumber/master/Screenshots/screenshot.gif"
  s.license      = {:type => 'MIT', :file => 'LICENSE.md'}
  s.author       = {'Mellong Lau' => 'tendencystudio@gmail.com'} 
  s.source       = {:git => 'https://github.com/MellongLau/AMAnimatedNumber.git', :tag => '0.0.4'}
  s.platform     = :ios, '12.0'
  s.source_files = 'AMAnimatedNumber/*.{h,m}'
  s.public_header_files = 'AMAnimatedNumber/AMAnimatedNumber.h'
  s.requires_arc = true
end
