// Load Kraut
#import "kraut/kraut.js"

// Load your step definitions (if you have any)
#import "step_definitions.js"

// set the path to your features directory

Kraut.init({
  featureDir: "features"
});

Kraut.run(); 
