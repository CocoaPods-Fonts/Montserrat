tests: test-podspec test-ios

test-ios:
	cd MontserratDemo ; xcodebuild -workspace MontserratDemo.xcworkspace -sdk iphonesimulator -scheme MontserratDemo test | xcpretty -c; exit ${PIPESTATUS[0]}

test-podspec:
	pod lib lint

