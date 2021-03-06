package configs;

import java.util.logging.FileHandler;
import java.util.logging.Logger;

public class WriteLogEntriesToLogFile {

    public static void main(String[] args) throws Exception {

        boolean append = true;
        FileHandler handler = new FileHandler("default.log", append);

        Logger logger = Logger.getLogger("com.ad.config");
        logger.addHandler(handler);

        logger.severe("severe message");

        logger.warning("warning message");

        logger.info("info message");

        logger.config("config message");

        logger.fine("fine message");

        logger.finer("finer message");

        logger.finest("finest message");

    }

}