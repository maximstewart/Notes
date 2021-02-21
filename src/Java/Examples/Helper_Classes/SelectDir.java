import javafx.stage.Stage;
import javafx.stage.DirectoryChooser;
import java.io.File;


public class SelectDir {
    private final Stage dirOpenerStage = new Stage();
	 		private DirectoryChooser folderChooser = new DirectoryChooser();
    private File selectedDir;


    public File getSelectedDir() {
        return selectedDir;
    }

    public void selecteDir() {
        selectedDir = folderChooser.showDialog(dirOpenerStage);
        if (selectedDir != null)
            System.out.println("Chosen Directory: " + selectedDir);
        else
            System.out.println("No Directory Chosen" + selectedDir);
    }
}
