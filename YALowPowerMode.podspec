Pod::Spec.new do |s|
  s.name             = "YALowPowerMode"
  s.version          = "1.0"
  s.summary          = "A Swift class that allows you to easily work with the iOS 9 Low Power Mode in your iOS apps"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                        YALowPowerMode is a Swift class that allows you to easily work with the iOS 9 Low Power Mode in your iOS apps and save additional battery life for your users by disabling certain features when Low Power Mode is enabled. The idea is based on [this post on Little Bites of Cocoa](https://littlebitesofcocoa.com/192-being-a-good-low-power-mode-citizen).
                       DESC

  s.homepage         = "https://github.com/Cacauu/YALowPowerMode"
  s.license          = 'MIT'
  s.author           = { "Yannik" => "achternbosch@me.com" }
  s.source           = { :git => "https://github.com/YALowPowerMode/YALowPowerMode.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/cacauu_de'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'src/*.Swift'
end