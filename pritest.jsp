// SimpleServlet.java
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/hello")
public class SimpleServlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        // 서블릿 초기화 시 인코딩 설정
        getServletContext().setRequestCharacterEncoding("UTF-8");
        getServletContext().setResponseCharacterEncoding("UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 요청 인코딩 설정
        request.setCharacterEncoding("UTF-8");
        // 응답 인코딩 설정
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset='UTF-8'>");
        out.println("<title>간단한 자바 웹페이지</title>");
        out.println("<style>");
        out.println("body { font-family: 'Malgun Gothic', '맑은 고딕', sans-serif; margin: 40px; }");
        out.println(".container { max-width: 800px; margin: 0 auto; }");
        out.println("h1 { color: #333; }");
        out.println(".content { background-color: #f5f5f5; padding: 20px; border-radius: 5px; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class='container'>");
        out.println("<h1>환영합니다!</h1>");
        out.println("<div class='content'>");
        out.println("<p>이것은 Java 서블릿으로 만든 간단한 웹페이지입니다.</p>");
        out.println("<p>현재 시간: " + new java.util.Date() + "</p>");
        out.println("<p>한글 테스트: 가나다라마바사</p>");
        out.println("</div>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }
}
