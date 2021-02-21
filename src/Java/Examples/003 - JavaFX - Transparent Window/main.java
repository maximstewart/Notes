import javafx.application.Application;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.control.Button;


public class main extends Application {

    @Override
    public void start(Stage stage) {
        stage.initStyle(StageStyle.TRANSPARENT);
        Pane box = new Pane();
        box.setStyle("-fx-background-color: rgba(68, 68, 69, 0.8)");
        Button bttn = new Button("Close");

        box.getChildren().add(bttn);
        final Scene scene = new Scene(box,300, 250);
        scene.setFill(null);
        stage.setScene(scene);
        stage.show();

        bttn.setOnAction(e -> {
            stage.close();
        });
    }

    public static void main(String[] args) {
        launch(args);
    }
}


