

package control;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author nguye
 */
@WebServlet(name = "AddControl", urlPatterns = {"/add"})
public class AddControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String pname = request.getParameter("name");
        String pimage = request.getParameter("image");
        String pprice = request.getParameter("price");
        String ptitle = request.getParameter("title");
        String pdescription = request.getParameter("description");
        String pcategory = request.getParameter("category");

        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        int sid = a.getId();

        System.out.println("Product Name: " + pname);
        System.out.println("Product Image: " + pimage);
        System.out.println("Product Price: " + pprice);
        System.out.println("Product Title: " + ptitle);
        System.out.println("Product Description: " + pdescription);
        System.out.println("Product Category: " + pcategory);
        System.out.println("Seller ID: " + sid);

        DAO dao = new DAO();
        dao.insertProduct(pname, pimage, pprice, ptitle, pdescription, pcategory, sid);

        response.sendRedirect("manager");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
