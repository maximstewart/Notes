import javafx.stage.Stage;
import javafx.stage.FileChooser;
import javafx.stage.FileChooser.ExtensionFilter;
import java.io.File;


public class SelectFile {
    private final Stage fileOpenerStage = new Stage();
    private FileChooser fileChooser = new FileChooser();
    private File selectedFile;


    public File getSelectedFile() {
        return selectedFile;
    }

    public void selecteFile(String title, String[] filters) {
        fileChooser.setTitle(title);
        fileChooser.getExtensionFilters().addAll(
            // new ExtensionFilter(filters),
            new ExtensionFilter("All Files", "*.*"));
        selectedFile = fileChooser.showOpenDialog(fileOpenerStage);
        if (selectedFile != null)
            System.out.println("Chosen File: " + selectedFile);
        else
            System.out.println("No File Chosen");
    }
}
