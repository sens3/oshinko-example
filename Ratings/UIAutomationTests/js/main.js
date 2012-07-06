
// Load Oshinko
#import "oshinko/oshinko.js"

// Load your step definitions (if you have any)
#import "step_definitions/mine.js"

// set the path to your features directory

Oshinko.init({
  featureDir: "Ratings/UIAutomationTests/features"
});

Oshinko.run(); 
