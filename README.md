I created this project to show how in Xcode 6 Beta 6 (apparently it actually broke in Beta 5) I wasn't able to load a .xib file for a UIViewController contained in a Storyboard.

I asked the question on StackOverflow (http://stackoverflow.com/questions/25538995/cant-load-uiviewcontroller-xib-file-in-storyboard-in-swift) and received a great answer and explanation from user matt.

This is his answer

'What's happened is that Seed 5 broke the mechanism whereby a view controller can find its xib by name, if the view controller is a Swift class. The reason is that the name of the class, in Swift's mind, is not the same as the name you gave it (and the name you gave the xib file); the name has been "mangled", in particular by prepending the module name (i.e. Swift classes have namespacing).

I offer three workarounds:

Your workaround is a good one (load the .xib file by name explicitly)

Name the .xib file MyModule.TestViewController.xib, where MyModule is the name of your bundle (i.e. the name of the project) (this is what Apple advises, but I hate it)

Use @objc(TestViewController) in the view controller's class declaration to overcome the name mangling which is what's breaking the mechanism (this is the approach I favor)'

I decided to go with the third option of using @objc and discovered a little caveat. Since the underlying name of the TestViewController is different, don't forget to go back into the storyboard and reset the class name of the UIViewController in question.

If Xcode 6 and Swift are officially released and the suggested approach to this problem is to namespace the .xib files, I will probably adopt that approach, but for now using @objc (classname) seems easist to implement and subsequently remove.
