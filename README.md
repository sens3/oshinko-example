# Oshinko Example app

This is an example app for [Oshinko](https://github.com/sens3/oshinko), a Gherkin Runner for iOS UIAutomation.

#####Disclaimer
This app was built by going through [this (unrelated) tutorial](http://www.raywenderlich.com/5138/beginning-storyboards-in-ios-5-part-1) by Ray Wenderlich.

##### How to run
	git clone git@github.com:sens3/oshinko-example.git
	cd oshinko-example
	git submodule update --init --recursive
	open Ratings.xcodeproj
	
	## make sure your DerivedData dir is relative to the project
	## Preferences -> Locations -> Derived Data -> Relative
	
	## build the project in xcode
	
	cd Ratings/UIAutomationTests/
	./run_instruments.sh