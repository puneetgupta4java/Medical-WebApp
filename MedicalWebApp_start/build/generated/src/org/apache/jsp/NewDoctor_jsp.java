package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class NewDoctor_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   <head>\n");
      out.write("  <title>Add Doctor</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write(" <!-- <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">-->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("    <style>\n");
      out.write("body {\n");
      out.write("    font-family: \"Lato\", sans-serif;\n");
      out.write("    background: #1E547F;\n");
      out.write("    color: #fff;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"col-sm-offset-2\"><h2>New Doctor</h2></div><br><br><br>\n");
      out.write("  <form class=\"form-horizontal\" action=\"AddDoctor\" name=\"adddoctor\" method=\"post\">\n");
      out.write("    <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter Name</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("          <input class=\"form-control\" autofocus=\"\" type=\"text\" placeholder=\"Enter Doctor Name\" name=\"Doctor_name\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter Qualifications</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <input class=\"form-control\" type=\"text\" placeholder=\"Enter Doctor Qualifications\" name=\"Doctor_qual\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter Fees(INR)</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <input class=\"form-control\" type=\"text\" placeholder=\"Enter Doctor Fees(in rupees)\" name=\"Doctor_fees\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter Address</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <input class=\"form-control\" type=\"text\" placeholder=\"Enter Doctor Address\" name=\"Doctor_add\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter Experience</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <input class=\"form-control\" type=\"text\" placeholder=\"Enter Doctor Experience\" name=\"Doctor_exp\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("         <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter Type</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <input class=\"form-control\" type=\"text\" placeholder=\"Enter Doctor type\" name=\"Doctor_type\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("     <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter City</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <input class=\"form-control\" type=\"text\" placeholder=\"Enter Doctor City\" name=\"Doctor_city\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("       <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter Phone number</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <input class=\"form-control\" type=\"text\" placeholder=\"Enter Doctor Phone no.\" name=\"Doctor_phn\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("       <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter Description</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <input class=\"form-control\" type=\"text\" placeholder=\"Enter Doctor Description\" name=\"Doctor_descr\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("      <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter Short Description</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <input class=\"form-control\" type=\"text\" placeholder=\"Enter Doctor short Description\" name=\"Doctor_sh_descr\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("      <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter timings</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("          <input class=\"form-control\" type=\"text\" placeholder=\"HH:MM AM/PM - HH:MM AM/PM\" name=\"Doctor_time\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("       <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter Email</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("          <input class=\"form-control\" type=\"email\" placeholder=\"Enter Doctor Email\" name=\"Doctor_email\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("      <div class=\"form-group\">\n");
      out.write("      <label class=\"col-sm-2 control-label\">Enter Image name</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("          <input class=\"form-control\" type=\"text\" placeholder=\"Enter Doctor image name\" name=\"Doctor_img\" required=\"required\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("       <div class=\"form-group\">\n");
      out.write("      <div class=\"col-sm-1 col-sm-offset-2\">\n");
      out.write("        <button type=\"reset\" class=\"btn btn-default\">Reset</button>\n");
      out.write("      </div>\n");
      out.write("           <div class=\"col-sm-2\">\n");
      out.write("        <button type=\"submit\" class=\"btn btn-default\">Submit</button>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    </form>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
