#xcodebuild -list
xcodebuild build CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO -sdk iphonesimulator16.0 -target mytest
xcrun simctl install booted build/Release-iphonesimulator/mytest.app
#xcrun simctl listapps booted
xcrun simctl launch booted com.app.mytest

