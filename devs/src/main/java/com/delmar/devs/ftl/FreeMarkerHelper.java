package com.delmar.devs.ftl;

import com.delmar.devs.GenerateDaoMain;
import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Map;

/**
 * Created by admin on 2016/8/26.
 */
public class FreeMarkerHelper {
    private static String  genmodelpath="D:\\projects\\wms\\system\\";
    private static String genActionPath="D:\\projects\\wms\\web\\";
    private static FreeMarkerHelper freeMarkerHelper;
    private Configuration config = new Configuration();
    private FreeMarkerHelper()
    {
        File filepath = new File("D:\\projects\\wms\\devs\\src\\main\\resources\\ftl");
        try {
            config.setDirectoryForTemplateLoading(filepath);
        } catch (IOException e) {
            e.printStackTrace();
        }
        config.setObjectWrapper(new DefaultObjectWrapper());
    }
    public static synchronized FreeMarkerHelper getInstance()
    {
        if(freeMarkerHelper==null)
        {
            freeMarkerHelper=new FreeMarkerHelper();
        }
        return freeMarkerHelper;
    }
    public void outFile(String templateFile, Map root, String outFile,boolean isAction)
    {
        Template template = null;
        try {
            template = config.getTemplate(templateFile, "UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            System.out.println("path:"+genmodelpath+outFile);
            File file=null;
            if(isAction)
            {
                file=new File(genActionPath+outFile);
            }
            else
            {
                file=new File(genmodelpath+outFile);
            }

            if(!file.exists())
            {
                file.getParentFile().mkdirs();
            }
            OutputStreamWriter out = new OutputStreamWriter(new FileOutputStream(file),"UTF-8");
            template.process(root, out);
            out.flush();
            out.close();

        } catch (IOException e) {
            e.printStackTrace();
        } catch (TemplateException e) {
            e.printStackTrace();
        }
    }
    public void outFile(String templateFile, Map root, String outFile)
    {
      outFile(templateFile,root,outFile,false);
    }
}
