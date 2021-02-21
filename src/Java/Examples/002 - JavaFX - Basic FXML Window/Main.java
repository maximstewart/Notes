import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;



public class Main extends Application {
    @Override
    public void start(final Stage stage) throws Exception {
        Scene scene = new Scene(FXMLLoader.load(Main.class.getResource("window.fxml")));
        scene.getStylesheets().add("stylesheet.css");
        stage.setScene(scene);
        //stage.setResizable(false);  // keeps window from resizing
        stage.setTitle("Image Viewer");
        stage.setMinWidth(300);
        stage.setMinHeight(300);
        stage.show();
    }
    // needed because you know... it's java.
    public static void main(String[] args) { launch(args); }
}
