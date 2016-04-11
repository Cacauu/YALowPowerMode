#YALowPowerMode
YALowPowerMode is a Swift class that allows you to easily work with the iOS 9 Low Power Mode in your iOS apps and save additional battery life for your users by disabling certain features when Low Power Mode is enabled. The idea is based on [this post on Little Bites of Cocoa](https://littlebitesofcocoa.com/192-being-a-good-low-power-mode-citizen).

*Note: YALowPowerMode requires Swift 2.2 or higher.* 

##Usage
Just create an instance of YALowPowerMode and you’re ready to go (in other words: You’re ready to access the *isActivated* property)!

	var lowPowerMode: YALowPowerMode = YALowPowerMode()
	print(„Low Power Mode is activated: \(lowPowerMode.isActivated)“)

You can go a step further (which is recommended) and use `YALowPowerModeDelegate`by making your class comply to the protocol and implementing `func lowPowerModeChanged()`:

	class MyIncredibleViewController: UIViewController, YALowPowerModeDelegate {
		//Other stuff
		func lowPowerModeChanged() {
			//Do something with lowPowerMode.isActivated and your app
		}
	}

##Why use it at all?
I hate NSNotificationCenter code and I find it much clearer to use a wrapper around those lines of code in my projects as that make it easier to understand. Another advantage of YALowPowerMode is that the iOS Low Power Mode is only available on iOS 9.0 and higher but you don’t have to care about checking for availability, YALowPowerMode does that for you!

##Todo
- [ ] Use Package Managers (Cocoapods, Carthage, Swift Package Manager)

##Contribute
If there is anything you would like to change or add to the class, don’t hesitate to create a pull request!

YALowPowerMode is released under MIT License, see License.txt for full details.