

package control;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Locale.Category;
import model.Product;

/**
 *
 * @author nguye
 */
@WebServlet(name = "CategoryControl", urlPatterns = {"/category"})
public class CategoryControl extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String cateID = request.getParameter("cid");
        //da lay dc category id ve roi
        DAO dao = new DAO();
        List<Product> list = dao.getProductByCID(cateID);
        List<model.Category> listC = dao.getAllCategory();
        Product last = dao.getLast();
        
        
        
        request.setAttribute("listP", list);
        request.setAttribute("listCC", listC);
        request.setAttribute("p", last);
        request.setAttribute("tag", cateID);
        request.getRequestDispatcher("Home.jsp").forward(request, response);
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
    }// </editor-fold>

}