package users.get;

import com.intuit.karate.junit5.Karate;

public class UserGetRunner {
    @Karate.Test
    Karate UserGet(){
        //Para ejecutar un feature en especifico
        return Karate.run("user-get").relativeTo(getClass());
        //Para ejecutar todos los features del package
        // return Karate.run().relativeTo(getClass());
    }
}
