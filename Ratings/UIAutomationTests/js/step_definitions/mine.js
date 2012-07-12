
Oshinko.given(/I fill in table view text field "([^\"]*)" with "([^\"]*)"/, function (window, captures) {
    
    var fieldName = captures[0];
    var fieldValue = captures[1];
    
    var field = Oshinko.findElement("UIATextField", fieldName);
    
    // var tableView = window.tableViews()[0]
    // var cell = tableView.cells().firstWithName(fieldName);
    // var field = cell.textFields()[0];
    
    field.setValue(fieldValue);
    
});

Oshinko.then(/the last "([^\"]*)" table view cell should read "([^\"]*)"/, function(window, captures) {

    var tvName = captures[0];
    var text = captures[1];
    var tableView = Oshinko.findElement('UIATableView', tvName);
    assertNotNull(tableView);
    var cells = tableView.cells();
    var lastCell = cells[cells.length - 1 ];
    
    assertEquals(text, lastCell.name());
});

Oshinko.then(/I should see a label "([^\"]*)" with text "([^\"]*)"/, function(window, captures) {
    
    var field = Oshinko.findElement("UIAStaticText", captures[0]);
    var text = captures[1];
    UIALogger.logMessage("Value: " + field.value());
    UIALogger.logMessage("Name: " + field.name());
    UIALogger.logMessage("Label: " + field.label());
    assertNotNull(field);
    assertEquals(text, field.label());
});
