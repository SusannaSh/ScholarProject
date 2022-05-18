package net.codejava.servlet;
 
import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/suggestionServlet")
public class StudentSuggestionServlet extends HttpServlet {
    private static String suggestion;
    private static String question;
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         
        // read form fields
        suggestion = request.getParameter("suggestion");
         
        System.out.println("Recommendations? " + suggestion);
       
 
        // do some processing here...
        requestHelp = request.getParameter("question");

        
         
        // get response writer
        PrintWriter writer = response.getWriter();
         
        // build HTML code
        String htmlRespone = "<html>";
        htmlRespone += "<h2>you suggested: " + suggestion + "<br/>";        
        htmlRespone += "</html>";

         htmlRespone += "<h2>you need help for: " + requestHelp + "<br/>";        
        htmlRespone += "</html>";

         
        // return response
        writer.println(htmlRespone);
         
    }
 
}