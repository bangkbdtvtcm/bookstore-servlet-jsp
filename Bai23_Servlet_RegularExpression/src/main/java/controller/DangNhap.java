package controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DangNhap
 */
@WebServlet("/dang-nhap")
public class DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangNhap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String quantity = request.getParameter("quantity");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		boolean isError = false;
		
		try {
			int int_quantity = Integer.parseInt(quantity);
		} catch (Exception e) {
			isError = true;
			request.setAttribute("e_quantity", "Vui lòng nhập đúng định dạng số (^^)");
		}
		if (quantity.equals("0")) {
			isError = true;
			request.setAttribute("e_quantity", "Vui lòng chọn ít nhất 1 sản phẩm (@!@)");
		}
		
		//Validate phone number
		Pattern phonePattern = Pattern.compile("\\d{10}");
		Matcher phoneMatcher = phonePattern.matcher(phone);
		if (!phoneMatcher.matches()) {
			isError = true;
			request.setAttribute("e_phone", "Số điện thoại phải có 10 số (^^!)");
		}
		
		//Validate email
		Pattern emailPattern = Pattern.compile("\\w+@\\w+(\\.\\w+)+(\\.\\w+)*");
		Matcher emailMatcher = emailPattern.matcher(email);
		if (!emailMatcher.matches()) {
			isError = true;
			request.setAttribute("e_email", 
					"Định dạng email chưa đúng, <span class=\"rq\">Example:abc@gmail.com</span> (^^!)");
		}
		
		String url ="/success.jsp";
		if (isError) {
			 url ="/index.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}