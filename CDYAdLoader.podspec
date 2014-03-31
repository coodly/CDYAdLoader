Pod::Spec.new do |spec|
  spec.name         = 'CDYAdLoader'
  spec.version      = '0.1.0'
  spec.summary      = "Utility classes to coordinate ad banners from different services."
  spec.homepage     = "https://github.com/coodly/CDYAdLoader"
  spec.author       = { "Jaanus Siim" => "jaanus@coodly.com" }
  spec.source       = { :git => "https://github.com/coodly/CDYAdLoader.git", :tag => "v#{spec.version}" }
  spec.license      = { :type => 'Apache 2', :file => 'LICENSE' }
  spec.requires_arc = true

  spec.subspec 'Core' do |ss|
    ss.platform = :ios, '7.0'
    ss.source_files = 'Core/*.{h,m}'
  end
  
  spec.subspec 'Services' do |s|
    spec.subspec 'AdMob' do |ss|
      ss.platform = :ios, '7.0'
      ss.source_files = 'Services/AdMob/*.{h,m}'
      ss.dependency 'Google-AdMob-Ads-SDK'
    end
  
    spec.subspec 'iAd' do |ss|
      ss.platform = :ios, '7.0'
      ss.source_files = 'Services/iAd/*.{h,m}'
      ss.framework = 'iAd'
    end
  end
end
