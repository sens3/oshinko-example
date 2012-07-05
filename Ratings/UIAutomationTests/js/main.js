// Load Oshinko
#import "oshinko/oshinko.js"

// Load your step definitions (if you have any)
#import "step_definitions.js"

// set the path to your features directory

Oshinko.init({
  featureDir: "features"
});

Oshinko.run(); 
