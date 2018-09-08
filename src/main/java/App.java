import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.attribute.PosixFilePermission;
import java.util.HashSet;
import java.util.Set;

import org.apache.commons.io.FileUtils;

public class App {

    public static void main(String args[]) {
        try {
            FileUtils.moveDirectoryToDirectory(new File("/opt/docker"), new File("/home/myhippoproject"), false);
            FileUtils.moveFileToDirectory(new File("/home/myhippoproject/docker/Dockerfile"), new File("/home/myhippoproject"), false);
            FileUtils.moveFileToDirectory(new File("/home/myhippoproject/docker/deploy2tomcat.sh"), new File("/home/myhippoproject"), false);

            Set<PosixFilePermission> perms = new HashSet<>();
            perms.add(PosixFilePermission.OWNER_READ);
            perms.add(PosixFilePermission.OWNER_WRITE);
            perms.add(PosixFilePermission.OWNER_EXECUTE);

            Files.setPosixFilePermissions(new File("/home/myhippoproject/deploy2tomcat.sh").toPath(), perms);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
