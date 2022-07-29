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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"UTF-8\" />\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <!-- CSS only -->\n");
      out.write("    <link\n");
      out.write("      href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css\"\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("      integrity=\"sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor\"\n");
      out.write("      crossorigin=\"anonymous\"\n");
      out.write("    />\n");
      out.write("    <!-- JavaScript Bundle with Popper -->\n");
      out.write("    <script\n");
      out.write("      src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("      integrity=\"sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2\"\n");
      out.write("      crossorigin=\"anonymous\"\n");
      out.write("    ></script>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"login.css\" />\n");
      out.write("    <title>Login</title>\n");
      out.write("    <script>\n");
      out.write("      function myFunction(){\n");
      out.write("        var x=document.getElementById(\"user-pw\");\n");
      out.write("        if(x.type===\"password\"){\n");
      out.write("          x.type=\"text\";\n");
      out.write("        }\n");
      out.write("        else{\n");
      out.write("          x.type=\"password\";\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("      function myFunction1(){\n");
      out.write("        var x=document.getElementById(\"user-pw1\");\n");
      out.write("        if(x.type===\"password\"){\n");
      out.write("          x.type=\"text\";\n");
      out.write("        }\n");
      out.write("        else{\n");
      out.write("          x.type=\"password\";\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("      function myFunction2(){\n");
      out.write("        var x=document.getElementById(\"user-pw2\");\n");
      out.write("        if(x.type===\"password\"){\n");
      out.write("          x.type=\"text\";\n");
      out.write("        }\n");
      out.write("        else{\n");
      out.write("          x.type=\"password\";\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("      //an form dang ky khi click vao dang nhap\n");
      out.write("      function functionHide1(){\n");
      out.write("        var x=document.getElementById(\"dangky\");\n");
      out.write("        var y=document.getElementById(\"dangnhap\");\n");
      out.write("        var maulogin=document.getElementById(\"login\");\n");
      out.write("        var mausignup=document.getElementById(\"signup\");\n");
      out.write("            x.style.display=\"none\";\n");
      out.write("            y.style.display=\"contents\";\n");
      out.write("            mausignup.style.backgroundColor=\"#D2D8D8\";\n");
      out.write("            maulogin.style.backgroundColor=\"#FFFFFF\";\n");
      out.write("      }\n");
      out.write("      //an form dang nhap khi click vao dang ky\n");
      out.write("      function functionHide2(){\n");
      out.write("        var x=document.getElementById(\"dangnhap\");\n");
      out.write("        var y=document.getElementById(\"dangky\");\n");
      out.write("        var maulogin=document.getElementById(\"login\");\n");
      out.write("        var mausignup=document.getElementById(\"signup\");\n");
      out.write("        y.style.display=\"contents\";\n");
      out.write("        x.style.display=\"none\"\n");
      out.write("        maulogin.style.backgroundColor=\"#D2D8D8\";\n");
      out.write("        mausignup.style.backgroundColor=\"#FFFFFF\";\n");
      out.write("      }\n");
      out.write("      //kiem tra khi trong user và pass\n");
      out.write("      function kiemtra(){\n");
      out.write("          var username = document.frmlogin.username.value;\n");
      out.write("          var password = document.frmlogin.password.value;\n");
      out.write("          if(username == \"\"){\n");
      out.write("            document.getElementById(\"baoloi\").style.display=\"\";\n");
      out.write("            document.getElementById(\"baoloi\").innerHTML=\"<strong>Warning!</strong> Username is empty\";\n");
      out.write("            return false;\n");
      out.write("          }\n");
      out.write("          if(password == \"\"){\n");
      out.write("            document.getElementById(\"baoloi\").style.display=\"\";\n");
      out.write("            document.getElementById(\"baoloi\").innerHTML=\"<strong>Warning!</strong> Passwords is empty\";\n");
      out.write("          return false;\n");
      out.write("          }\n");
      out.write("          return true;\n");
      out.write("      }\n");
      out.write("    </script>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row_login_signup\">\n");
      out.write("        <div class=\"box_login_signin\" id=\"login\" onclick=\"functionHide1()\"><a href=\"#\">LOGIN</a></div>\n");
      out.write("        <div class=\"box_login_signin\" id=\"signup\" onclick=\"functionHide2()\"><a href=\"#\">SIGN UP</a></div>\n");
      out.write("      </div>\n");
      out.write("        <div class=\"logmod__tab_lgm-1\" id=\"dangnhap\">\n");
      out.write("        <div class=\"desc\">\n");
      out.write("          <span>Enter your email and password <strong>to sign in</strong></span>\n");
      out.write("        </div>\n");
      out.write("          <div class=\"alert alert-warning\" id=\"baoloi\" style=\"display:none\">\n");
      out.write("              \n");
      out.write("        </div>\n");
      out.write("        <div class=\"input\">\n");
      out.write("          <form name=\"frmlogin\" action=\"login\" onsubmit=\"return kiemtra()\" method=\"POST\">\n");
      out.write("            <div class=\"input_full\">\n");
      out.write("              <div class=\"box_input\">\n");
      out.write("                <label style=\"font-weight:bold ;\" class=\"string_optional\" for=\"user-name\">Username*</label>\n");
      out.write("                <input class=\"string_optional\" autocomplete=\"off\" maxlength=\"255\" id=\"user-email\" name=\"username\" placeholder=\"Username\" type=\"text\" size=\"50\">\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <hr>\n");
      out.write("            <div class=\"input_full\">\n");
      out.write("              <div class=\"box_input\">\n");
      out.write("                <label style=\"font-weight:bold ;\" class=\"string_optional\" for=\"user-pw\">Password *</label>\n");
      out.write("                <input class=\"string_optional\" autocomplete=\"off\" maxlength=\"255\" id=\"user-pw\" name=\"password\" placeholder=\"Password\" type=\"password\" size=\"50\">\n");
      out.write("                <span id=\"show_or_hide\" class=\"hide-password\" onclick=\"myFunction()\">Show</span>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <hr>\n");
      out.write("            <div class=\"simform__actions\">\n");
      out.write("              <input class=\"submit\" name=\"commit\" type=\"submit\" value=\"Log In\" />\n");
      out.write("              <span class=\"simform__actions-sidetext\"><a class=\"special\" role=\"link\" href=\"#\">Forgot your password?<br>Click here</a></span>\n");
      out.write("            </div> \n");
      out.write("          </form>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"logmod__alter\">\n");
      out.write("          <div class=\"facebook_google\">\n");
      out.write("            <a href=\"#\">\n");
      out.write("              <div class=\"connect__icon\" style=\"background-color: #283D68;\"><i class=\"fa fa-facebook\" style=\"font-size:24px\"></i></div>\n");
      out.write("              <div class=\"connect__context\"><span>Sign in with <strong>Facebook</strong></span></div>\n");
      out.write("            </a>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"facebook_google\">\n");
      out.write("            <a href=\"#\">\n");
      out.write("              <div class=\"connect__icon\" style=\"background-color: #B52F1F;\"><i class=\"fa fa-google\" style=\"font-size:24px\"></i></div>\n");
      out.write("              <div class=\"connect__context\" style=\"background-color: #DD4B39;\"><span>Sign in with <strong>Google</strong></span></div>\n");
      out.write("            </a>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("        <!--dang ky-->\n");
      out.write("      <div class=\"logmod__tab_lgm-2\" id=\"dangky\" style=\"display: none;\">\n");
      out.write("        <div class=\"desc\">\n");
      out.write("          <span>Enter your personal details to <strong>create an account</strong></span>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"input\">\n");
      out.write("          <form action=\"signup\" method=\"post\">\n");
      out.write("            <div class=\"input_full\">\n");
      out.write("              <div class=\"box_input\">\n");
      out.write("                <label style=\"font-weight:bold ;\" class=\"string_optional\" for=\"user-name\">Name*</label>\n");
      out.write("                <input class=\"string_optional\" required=\"true\" autocomplete=\"off\" maxlength=\"255\" id=\"user-email\" name=\"name\" placeholder=\"Name\" type=\"text\" size=\"50\">\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <hr>\n");
      out.write("            <div class=\"input_full\">\n");
      out.write("              <div class=\"box_input\">\n");
      out.write("                <label style=\"font-weight:bold ;\" class=\"string_optional\" for=\"user-name\">Username*</label>\n");
      out.write("                <input class=\"string_optional\" required=\"true\" autocomplete=\"off\" maxlength=\"255\" id=\"user-email\" name=\"user\" placeholder=\"username\" type=\"text\" size=\"50\">\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <hr>\n");
      out.write("            <div class=\"input_full\">\n");
      out.write("              <div class=\"box_input\">\n");
      out.write("                <label style=\"font-weight:bold ;\" class=\"string_optional\" for=\"user-pw\">Password *</label>\n");
      out.write("                <input class=\"string_optional\" required=\"true\" autocomplete=\"off\" maxlength=\"255\" id=\"user-pw1\" name=\"pass1\" placeholder=\"Password\" type=\"password\" size=\"50\">\n");
      out.write("                <span id=\"show_or_hide\"  class=\"hide-password\" onclick=\"myFunction1()\">Show</span>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <hr>\n");
      out.write("            <div class=\"input_full\">\n");
      out.write("              <div class=\"box_input\">\n");
      out.write("                <label style=\"font-weight:bold ;\" class=\"string_optional\">REPEAT PASSWORD *</label>\n");
      out.write("                <input class=\"string_optional\" required=\"true\" autocomplete=\"off\" maxlength=\"255\" id=\"user-pw2\" name=\"pass2\" placeholder=\"Password\" type=\"password\" size=\"50\">\n");
      out.write("                <span id=\"show_or_hide\" class=\"hide-password\" onclick=\"myFunction2()\">Show</span>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <hr>\n");
      out.write("            <div class=\"simform__actions\">\n");
      out.write("              <input class=\"submit\" name=\"commit\" type=\"submit\" value=\"Create Account\" />\n");
      out.write("              <span class=\"simform__actions-sidetext\">By creating an account you agree to our <a class=\"special\" target=\"_blank\" role=\"link\" href=\"#\"><br>Terms & Privacy</a></span>\n");
      out.write("            </div> \n");
      out.write("          </form>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"logmod__alter\">\n");
      out.write("          <div class=\"facebook_google\">\n");
      out.write("            <a href=\"#\">\n");
      out.write("              <div class=\"connect__icon\" style=\"background-color: #283D68;\"><i class=\"fa fa-facebook\" style=\"font-size:24px\"></i></div>\n");
      out.write("              <div class=\"connect__context\"><span>Create an account with  <strong>Facebook</strong></span></div>\n");
      out.write("            </a>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"facebook_google\">\n");
      out.write("            <a href=\"#\">\n");
      out.write("              <div class=\"connect__icon\" style=\"background-color: #B52F1F;\"><i class=\"fa fa-google\" style=\"font-size:24px\"></i></div>\n");
      out.write("              <div class=\"connect__context\" style=\"background-color: #DD4B39;\"><span>Create an account with  <strong>Google</strong></span></div>\n");
      out.write("            </a>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </body>\n");
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
