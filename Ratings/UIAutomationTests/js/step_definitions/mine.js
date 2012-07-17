
Oshinko.given(/I fill in table view text field "([^\"]*)" with "([^\"]*)"/, function (window, captures) {
    
    var fieldName = captures[0];
    var fieldValue = captures[1];
    
    var field = UIQuery.firstKindWithName('textFields', fieldName);
    
    // var tableView = window.tableViews()[0]
    // var cell = tableView.cells().firstWithName(fieldName);
    // var field = cell.textFields()[0];
    
    field.setValue(fieldValue);
    
});

Oshinko.then(/the last "([^\"]*)" table view cell should read "([^\"]*)"/, function(window, captures) {

    var tvName = captures[0];
    var text = captures[1];
    var tableView = UIQuery.firstKindWithName('tableViews', tvName);
    assertNotNull(tableView);
    var cells = tableView.cells();
    var lastCell = cells[cells.length - 1 ];
    
    assertEquals(text, lastCell.name());
});

Oshinko.then(/I should see a label "([^\"]*)" with text "([^\"]*)"/, function(window, captures) {
    
    var field = UIQuery.firstKindWithName('staticTexts', captures[0]);
    var text = captures[1];

    assertNotNull(field);
    assertEquals(text, field.label());
});
