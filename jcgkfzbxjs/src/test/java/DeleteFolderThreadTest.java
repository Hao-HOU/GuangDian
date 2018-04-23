import bit.gd.threads.DeleteFolderThread;
import org.junit.Test;

public class DeleteFolderThreadTest {
    @Test
    public void delFolder() {
        String path = "/home/dm/HouHao/999";

        DeleteFolderThread thread = new DeleteFolderThread(path);
        thread.run();

        System.out.println("删除文件夹及文件夹中文件");
    }
}
