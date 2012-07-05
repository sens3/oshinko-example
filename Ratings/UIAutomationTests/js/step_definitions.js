
Oshinko.given(/I fill in table view text field "([^\"]*)" with "([^\"]*)"/, function (window, captures) {
    
    var fieldName = captures[0];
    var fieldValue = captures[1];
    
    var tableView = window.tableViews()[0]
    var cell = tableView.cells().firstWithName(fieldName);
    var field = cell.textFields()[0];
    
    field.setValue(fieldValue);
    
});

Oshinko.then(/the last table view cell should read "([^\"]*)"/, function(window, captures) {

    var tableView = window.tableViews()[0];
    var cells = tableView.cells();
    var lastCell = cells[cells.length - 1 ];
    var text = captures[0];
    
    assertEquals(text, lastCell.name());
});

Oshinko.then(/I should see a text field with text "([^\"]*)"/, function(window, captures) {
    
    var element = window.staticTexts()[0];
    var text = captures[0];
    assertEquals(text, element.name());
});
