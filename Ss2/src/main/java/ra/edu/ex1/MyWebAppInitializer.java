package ra.edu.ex1;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import ra.edu.config.WebConfig;

public class MyWebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return null;
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{WebConfig.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"}; // fix: bat toan bo url
    }
}
