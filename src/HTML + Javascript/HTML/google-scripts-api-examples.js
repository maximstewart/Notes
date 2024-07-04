Reference Material:
    https://developers.google.com/apps-script




# ----  Functions  ---- #

function createSheetsFromRow() {
    // getActiveSpreadsheet actually returns the whole SpreadSheet object whereas getActiveSheet returns a single "Sheet" or null object.
    let spreadSheet = SpreadsheetApp.getActiveSpreadsheet();   // The "container" that holds all your Sheet objects
    let activeSheet = SpreadsheetApp.getActiveSheet();         // The Sheet that is active in your SpreadSheet object
    let sheetData   = activeSheet.getDataRange().getValues();  // Get the active Sheet's data... aka Rows and Columns

    for (var i in sheetData) {
        if (i == 0) { continue; }        // Keep from adding first row as sheet
        let row          = sheetData[i]; // Get row's data
        let newSheetName = row[2];       // New sheet name is derived from 3rd column (2nd index) which is Agency column
        let newSheet     = spreadSheet.getSheetByName(newSheetName);
        if (newSheet === null) {         // If sheet doesn't exists, we create it
            newSheet = spreadSheet.insertSheet(newSheetName);
        }
        newSheet.appendRow(row);
    }
}

function deleteAllSheetsButForFirst() {
    let spreadSheet = SpreadsheetApp.getActiveSpreadsheet();
    let sheets      = spreadSheet.getSheets();

    for (var i in sheets) {
        if (i == 0) { continue; }   // Keep from deleting first sheet
        let sheet = sheets[i];
        spreadSheet.deleteSheet(sheet);
    }
}



