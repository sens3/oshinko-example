
currentDir=$(pwd)

instruments -t "/Developer/Platforms/iPhoneOS.platform/Developer/Library/Instruments/PlugIns/AutomationInstrument.bundle/Contents/Resources/Automation.tracetemplate" $currentDir/../../DerivedData/Ratings/Build/Products/Debug-iphonesimulator/Ratings.app -e UIASCRIPT $currentDir/js/main.js