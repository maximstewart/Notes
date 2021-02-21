#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
using namespace std;


// This is aparently a jenky way of determining the OS that's running.
int main() {
    char* ENVIRONMENT = getenv("windir");


    if (ENVIRONMENT != NULL) {
        chdir("bin\\");
        system("set JAVA_HOME=\"\" & java -cp '.;jsoup.jar' Main");
    } else {
        chdir("bin/");
        system("export JAVA_HOME='' && java -cp '.:jsoup.jar' Main");
    }

return 0;
}
