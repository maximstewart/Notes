import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.control.Button;

public class main extends Application {
    @Override
    public void start(Stage stage) {
        // declare button and pane
        Pane pane = new Pane();
        Button close_button = new Button("Close");

        // add the button to the pane
        pane.getChildren().add(close_button);

        // generate the scene with the layout
        Scene scene = new Scene(pane, 800, 600);

        // set stage stuff
        stage.setTitle("Basic Window");
        stage.setScene(scene);
        stage.setResizable(false);
        stage.show();

        close_button.setOnAction(e -> {
            stage.close();
        });
    }
    public static void main(String[] args) { launch(args); }
}
