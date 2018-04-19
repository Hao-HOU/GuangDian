package bit.gd.singleton;

import com.mathworks.toolbox.javabuilder.MWException;
import gdmatlab.GDMatlab;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class GDMatlabSingleton {
    private static final Logger LOGGER = LoggerFactory.getLogger(GDMatlabSingleton.class);
    private static GDMatlab gdMatlab;

    private GDMatlabSingleton() {

    }

    public static synchronized GDMatlab getGdMatlab() {
        if (gdMatlab == null) {
            try {
                gdMatlab = new GDMatlab();
            } catch (MWException e) {
                LOGGER.info("创建单例异常");
                throw new RuntimeException(e);
            }
        }

        return gdMatlab;
    }
}
