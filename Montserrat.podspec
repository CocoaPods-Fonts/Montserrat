Pod::Spec.new do |spec|
  spec.name = 'Montserrat'
  spec.version = '1.0.0'
  spec.summary = 'A podspec encapsulating Montserrat font for iOS'
  spec.description = "The old posters and signs in the traditional neighborhood of Buenos Aires called Montserrat inspired me to design a typeface that rescues the beauty of urban typography from the first half of the twentieth century. The goal is to rescue what is in Montserrat and set it free, under a free, libre and open source license, the SIL Open Font License."
  spec.license = { :type => 'OFL', :file => 'OFL.txt' }
  spec.authors = { 'Kyle Fuller' => 'inbox@kylefuller.co.uk' }
  spec.homepage = 'https://github.com/CocoaPods-Fonts/Montserrat'
  spec.screenshot = "https://raw.githubusercontent.com/CocoaPods-Fonts/Montserrat/#{spec.version}/Montserrat-Screenshot.png"
  spec.social_media_url = 'https://twitter.com/kylefuller'
  spec.platform = :ios
  spec.source = { :git => 'https://github.com/CocoaPods-Fonts/Montserrat.git', :tag => spec.version.to_s }
  spec.source_files = 'UIFont+Montserrat.{h,m}'
  spec.resource_bundle = { 'Montserrat' => 'Fonts/*.ttf' }
  spec.frameworks = 'UIKit', 'CoreText'
  spec.requires_arc = true
end

