package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaveProduct
 */
@WebServlet("/save-product")
public class SaveProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveProduct() {
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
		
		String productId = request.getParameter("productId");
		String productName = request.getParameter("productName");
		String string_priceBuy = request.getParameter("priceBuy");
		String string_priceSale = request.getParameter("priceSale");
		String string_shelfLife = request.getParameter("shelfLife");
		String string_vat = request.getParameter("vat");
		String discription = request.getParameter("discription");
		
		//check
		String e_productId ="";
		if (productId == null || productId.trim().length()==0) {
			e_productId ="Bạn vui lòng nhập mã sản phẩm!";
		} else if (productId.equals("123")) {
			e_productId = "Mã sản phẩm " +productId+" đã tồn tại, vui lòng nhập lại mã sản phẩm khác!";
		}
		
		request.setAttribute("e_productId", e_productId);
		request.setAttribute("i_productId", productId);
		request.setAttribute("i_productName", productName);
		request.setAttribute("i_priceBuy", string_priceBuy);
		request.setAttribute("i_priceSale", string_priceSale);
		request.setAttribute("i_shelfLife", string_shelfLife);
		request.setAttribute("i_vat", string_vat);
		request.setAttribute("i_discription", discription);
		String url="/success.jsp";
		if (e_productId.length()>0) {
			url="/product.jsp";
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
