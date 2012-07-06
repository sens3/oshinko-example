# ripped from https://github.com/jonathanpenn/AutomationExample

echo "Make sure you are using Xcode 4.3.3"

BUILD_DIR=/tmp/Ratings

mkdir -p $BUILD_DIR

xcodebuild -sdk iphonesimulator -configuration Debug build CONFIGURATION_BUILD_DIR=$BUILD_DIR

rm -rf automation_results
mkdir -p automation_results

./unix_instruments \
  -D automation_results/trace \
  -t UIAutomationTemplate.tracetemplate \
  $BUILD_DIR/Ratings.app \
  -e UIARESULTSPATH automation_results \
  -e UIASCRIPT Ratings/UIAutomationTests/js/main.js

if [[ $? == 0 ]]; then
  echo "Tests passed!"
else
  echo "Tests failed!"
fi