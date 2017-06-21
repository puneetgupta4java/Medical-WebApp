package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!Doctype HTML>\r\n");
      out.write("<html>\r\n");
      out.write(" <head>\r\n");
      out.write(" <title>Login</title>  \r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("    \r\n");
      out.write("*, *:before, *:after {\r\n");
      out.write("  box-sizing: border-box;\r\n");
      out.write("  margin: 0;\r\n");
      out.write("  padding: 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("body {\r\n");
      out.write("  font-family: 'Open Sans', Helvetica, Arial, sans-serif;\r\n");
      out.write("  background: #ededed;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("input, button {\r\n");
      out.write("  border: none;\r\n");
      out.write("  outline: none;\r\n");
      out.write("  background: none;\r\n");
      out.write("  font-family: 'Open Sans', Helvetica, Arial, sans-serif;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".tip {\r\n");
      out.write("  font-size: 20px;\r\n");
      out.write("  margin: 40px auto 50px;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".cont {\r\n");
      out.write("  overflow: hidden;\r\n");
      out.write("  position: relative;\r\n");
      out.write("  width: 900px;\r\n");
      out.write("  height: 550px;\r\n");
      out.write("  margin: 0 auto 100px;\r\n");
      out.write("  background: #fff;\r\n");
      out.write("  margin-top: 35px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".form {\r\n");
      out.write("  position: relative;\r\n");
      out.write("  width: 640px;\r\n");
      out.write("  height: 100%;\r\n");
      out.write("  -webkit-transition: -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("  transition: -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("  transition: transform 1.2s ease-in-out;\r\n");
      out.write("  transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("  padding: 50px 30px 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".sub-cont {\r\n");
      out.write("  overflow: hidden;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  left: 640px;\r\n");
      out.write("  top: 0;\r\n");
      out.write("  width: 900px;\r\n");
      out.write("  height: 100%;\r\n");
      out.write("  padding-left: 260px;\r\n");
      out.write("  background: #fff;\r\n");
      out.write("  -webkit-transition: -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("  transition: -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("  transition: transform 1.2s ease-in-out;\r\n");
      out.write("  transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("}\r\n");
      out.write(".cont.s--signup .sub-cont {\r\n");
      out.write("  -webkit-transform: translate3d(-640px, 0, 0);\r\n");
      out.write("          transform: translate3d(-640px, 0, 0);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("button {\r\n");
      out.write("  display: block;\r\n");
      out.write("  margin: 0 auto;\r\n");
      out.write("  width: 260px;\r\n");
      out.write("  height: 36px;\r\n");
      out.write("  border-radius: 30px;\r\n");
      out.write("  color: #fff;\r\n");
      out.write("  font-size: 15px;\r\n");
      out.write("  cursor: pointer;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".img {\r\n");
      out.write("  overflow: hidden;\r\n");
      out.write("  z-index: 2;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  top: 0;\r\n");
      out.write("  width: 260px;\r\n");
      out.write("  height: 100%;\r\n");
      out.write("  padding-top: 360px;\r\n");
      out.write("}\r\n");
      out.write(".img:before {\r\n");
      out.write("  content: '';\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  right: 0;\r\n");
      out.write("  top: 0;\r\n");
      out.write("  width: 900px;\r\n");
      out.write("  height: 100%;\r\n");
      out.write("  background-image: url(\"https://s3-us-west-2.amazonaws.com/s.cdpn.io/142996/sections-3.jpg\");\r\n");
      out.write("  background-size: cover;\r\n");
      out.write("  -webkit-transition: -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("  transition: -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("  transition: transform 1.2s ease-in-out;\r\n");
      out.write("  transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("}\r\n");
      out.write(".img:after {\r\n");
      out.write("  content: '';\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  top: 0;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  height: 100%;\r\n");
      out.write("  background: rgba(0, 0, 0, 0.6);\r\n");
      out.write("}\r\n");
      out.write(".cont.s--signup .img:before {\r\n");
      out.write("  -webkit-transform: translate3d(640px, 0, 0);\r\n");
      out.write("          transform: translate3d(640px, 0, 0);\r\n");
      out.write("}\r\n");
      out.write(".img__text {\r\n");
      out.write("  z-index: 2;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  top: 50px;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  padding: 0 20px;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  color: #fff;\r\n");
      out.write("  -webkit-transition: -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("  transition: -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("  transition: transform 1.2s ease-in-out;\r\n");
      out.write("  transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;\r\n");
      out.write("}\r\n");
      out.write(".img__text h2 {\r\n");
      out.write("  margin-bottom: 10px;\r\n");
      out.write("  font-weight: normal;\r\n");
      out.write("}\r\n");
      out.write(".img__text p {\r\n");
      out.write("  font-size: 14px;\r\n");
      out.write("  line-height: 1.5;\r\n");
      out.write("}\r\n");
      out.write(".cont.s--signup .img__text.m--up {\r\n");
      out.write("  -webkit-transform: translateX(520px);\r\n");
      out.write("          transform: translateX(520px);\r\n");
      out.write("}\r\n");
      out.write(".img__text.m--in {\r\n");
      out.write("  -webkit-transform: translateX(-520px);\r\n");
      out.write("          transform: translateX(-520px);\r\n");
      out.write("}\r\n");
      out.write(".cont.s--signup .img__text.m--in {\r\n");
      out.write("  -webkit-transform: translateX(0);\r\n");
      out.write("          transform: translateX(0);\r\n");
      out.write("}\r\n");
      out.write(".img__btn {\r\n");
      out.write("  overflow: hidden;\r\n");
      out.write("  z-index: 2;\r\n");
      out.write("  position: relative;\r\n");
      out.write("  width: 100px;\r\n");
      out.write("  height: 36px;\r\n");
      out.write("  margin: 0 auto;\r\n");
      out.write("  background: transparent;\r\n");
      out.write("  color: #fff;\r\n");
      out.write("  text-transform: uppercase;\r\n");
      out.write("  font-size: 15px;\r\n");
      out.write("  cursor: pointer;\r\n");
      out.write("}\r\n");
      out.write(".img__btn:after {\r\n");
      out.write("  content: '';\r\n");
      out.write("  z-index: 2;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  top: 0;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  height: 100%;\r\n");
      out.write("  border: 2px solid #fff;\r\n");
      out.write("  border-radius: 30px;\r\n");
      out.write("}\r\n");
      out.write(".img__btn span {\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  top: 0;\r\n");
      out.write("  display: -webkit-box;\r\n");
      out.write("  display: -ms-flexbox;\r\n");
      out.write("  display: flex;\r\n");
      out.write("  -webkit-box-pack: center;\r\n");
      out.write("      -ms-flex-pack: center;\r\n");
      out.write("          justify-content: center;\r\n");
      out.write("  -webkit-box-align: center;\r\n");
      out.write("      -ms-flex-align: center;\r\n");
      out.write("          align-items: center;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  height: 100%;\r\n");
      out.write("  -webkit-transition: -webkit-transform 1.2s;\r\n");
      out.write("  transition: -webkit-transform 1.2s;\r\n");
      out.write("  transition: transform 1.2s;\r\n");
      out.write("  transition: transform 1.2s, -webkit-transform 1.2s;\r\n");
      out.write("}\r\n");
      out.write(".img__btn span.m--in {\r\n");
      out.write("  -webkit-transform: translateY(-72px);\r\n");
      out.write("          transform: translateY(-72px);\r\n");
      out.write("}\r\n");
      out.write(".cont.s--signup .img__btn span.m--in {\r\n");
      out.write("  -webkit-transform: translateY(0);\r\n");
      out.write("          transform: translateY(0);\r\n");
      out.write("}\r\n");
      out.write(".cont.s--signup .img__btn span.m--up {\r\n");
      out.write("  -webkit-transform: translateY(72px);\r\n");
      out.write("          transform: translateY(72px);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("h2 {\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  font-size: 26px;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("label {\r\n");
      out.write("  display: block;\r\n");
      out.write("  width: 260px;\r\n");
      out.write("  margin: 25px auto 0;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("}\r\n");
      out.write("label span {\r\n");
      out.write("  font-size: 12px;\r\n");
      out.write("  color: #cfcfcf;\r\n");
      out.write("  text-transform: uppercase;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("input {\r\n");
      out.write("  display: block;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  margin-top: 5px;\r\n");
      out.write("  padding-bottom: 5px;\r\n");
      out.write("  font-size: 16px;\r\n");
      out.write("  border-bottom: 1px solid rgba(0, 0, 0, 0.4);\r\n");
      out.write("  text-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".forgot-pass {\r\n");
      out.write("  margin-top: 15px;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  font-size: 12px;\r\n");
      out.write("  color: #cfcfcf;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".submit {\r\n");
      out.write("  margin-top: 40px;\r\n");
      out.write("  margin-bottom: 20px;\r\n");
      out.write("  background: #d4af7a;\r\n");
      out.write("  text-transform: uppercase;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".fb-btn {\r\n");
      out.write("  border: 2px solid #d3dae9;\r\n");
      out.write("  color: #8fa1c7;\r\n");
      out.write("}\r\n");
      out.write(".fb-btn span {\r\n");
      out.write("  font-weight: bold;\r\n");
      out.write("  color: #455a81;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".sign-in {\r\n");
      out.write("  -webkit-transition-timing-function: ease-out;\r\n");
      out.write("          transition-timing-function: ease-out;\r\n");
      out.write("}\r\n");
      out.write(".cont.s--signup .sign-in {\r\n");
      out.write("  -webkit-transition-timing-function: ease-in-out;\r\n");
      out.write("          transition-timing-function: ease-in-out;\r\n");
      out.write("  -webkit-transition-duration: 1.2s;\r\n");
      out.write("          transition-duration: 1.2s;\r\n");
      out.write("  -webkit-transform: translate3d(640px, 0, 0);\r\n");
      out.write("          transform: translate3d(640px, 0, 0);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".sign-up {\r\n");
      out.write("  -webkit-transform: translate3d(-900px, 0, 0);\r\n");
      out.write("          transform: translate3d(-900px, 0, 0);\r\n");
      out.write("}\r\n");
      out.write(".cont.s--signup .sign-up {\r\n");
      out.write("  -webkit-transform: translate3d(0, 0, 0);\r\n");
      out.write("          transform: translate3d(0, 0, 0);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".icon-link {\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  left: 5px;\r\n");
      out.write("  bottom: 5px;\r\n");
      out.write("  width: 32px;\r\n");
      out.write("}\r\n");
      out.write(".icon-link img {\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  vertical-align: top;\r\n");
      out.write("}\r\n");
      out.write(".icon-link--twitter {\r\n");
      out.write("  left: auto;\r\n");
      out.write("  right: 5px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("    <body>\r\n");
      out.write("       \r\n");
      out.write("<div class=\"cont\">\r\n");
      out.write("<form action=\"LoginServlet\" method=\"post\">\r\n");
      out.write("  <div class=\"form sign-in\">\r\n");
      out.write("    <h2>Welcome back,</h2>\r\n");
      out.write("    <label>\r\n");
      out.write("      <span>Name</span>\r\n");
      out.write("      <input type=\"text\" name=\"username\"/>\r\n");
      out.write("    </label>\r\n");
      out.write("    <label>\r\n");
      out.write("      <span>Password</span>\r\n");
      out.write("      <input type=\"password\" name=\"pass\"/>\r\n");
      out.write("    </label>\r\n");
      out.write("    <p class=\"forgot-pass\">Forgot password?</p>\r\n");
      out.write("    <button type=\"submit\" class=\"submit\">Sign In</button>\r\n");
      out.write("    \r\n");
      out.write("  </div>\r\n");
      out.write("  </form>\r\n");
      out.write("  <form action=\"SignupServlet\" method=\"post\">\r\n");
      out.write("  <div class=\"sub-cont\">\r\n");
      out.write("    <div class=\"img\">\r\n");
      out.write("      <div class=\"img__text m--up\">\r\n");
      out.write("        <h2>New here?</h2>\r\n");
      out.write("        <p>Sign up and discover great amount of new opportunities!</p>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"img__text m--in\">\r\n");
      out.write("        <h2>One of us?</h2>\r\n");
      out.write("        <p>If you already has an account, just sign in. We've missed you!</p>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"img__btn\">\r\n");
      out.write("        <span class=\"m--up\">Sign Up</span>\r\n");
      out.write("        <span class=\"m--in\">Sign In</span>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"form sign-up\">\r\n");
      out.write("      <h2>Time to feel like home,</h2>\r\n");
      out.write("      <label>\r\n");
      out.write("        <span>Name</span>\r\n");
      out.write("        <input type=\"text\"  name=\"username\"/>\r\n");
      out.write("      </label>\r\n");
      out.write("      <label>\r\n");
      out.write("        <span>Email</span>\r\n");
      out.write("        <input type=\"email\"  name=\"email\"/>\r\n");
      out.write("      </label>\r\n");
      out.write("      <label>\r\n");
      out.write("        <span>Password</span>\r\n");
      out.write("        <input type=\"password\" name=\"pass\"/>\r\n");
      out.write("      </label>\r\n");
      out.write("         <label>\r\n");
      out.write("        <span>Gender</span>\r\n");
      out.write("        <input type=\"text\" name=\"gender\"/>\r\n");
      out.write("      </label>\r\n");
      out.write("         \r\n");
      out.write("      <label>\r\n");
      out.write("        <span>Patient-id</span>\r\n");
      out.write("        <input type=\"text\" name=\"id\"/>\r\n");
      out.write("      </label>\r\n");
      out.write("         \r\n");
      out.write("      <button type=\"submit\" class=\"submit\">Sign Up</button>\r\n");
      out.write("      \r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  </form>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("     <script src=\"jquery-3.1.1.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("     <script>\r\n");
      out.write("     \r\n");
      out.write("\r\n");
      out.write("        document.querySelector('.img__btn').addEventListener('click', function() {\r\n");
      out.write("          document.querySelector('.cont').classList.toggle('s--signup');\r\n");
      out.write("        });\r\n");
      out.write("         \r\n");
      out.write("     </script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
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
