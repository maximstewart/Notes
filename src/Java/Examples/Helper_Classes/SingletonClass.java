

public class SingletonClass {
    private static SingletonClass dbConnect = new SingletonClass();

    // Instance passer
    public static SingletonClass getInstance() { return dbConnect; }

    // Init SingletonClass
    private SingletonClass() {

    }

}
