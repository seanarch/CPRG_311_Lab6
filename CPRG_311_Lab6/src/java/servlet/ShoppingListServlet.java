
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author seanz
 */
public class ShoppingListServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        String username = (String) session.getAttribute("username");
        
        if (username != null) {
            String action = request.getParameter("action");
            if (action != null && action.equals("logout")) {
                session.invalidate();
                getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
                return;
            }
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
            return;
        } else {
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }
    
}
        


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(); 
        String action = request.getParameter("action");
        
        if (action.equals("register")) {
            String username = request.getParameter("user_name");
            
            if (username != null) {
                session.setAttribute("username", username);
                response.sendRedirect("shopping");
                return;
            } else {
                getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
                return;
            } 
        } else if (action.equals("add")) {
            ArrayList<String> items = (ArrayList<String>) session.getAttribute("items"); 
            if (items == null) {
                items = new ArrayList<>();
            }
            if (!request.getParameter("additem").isEmpty()) {
                String item = request.getParameter("additem");
                items.add(item);
                session.setAttribute("items", items);
            }
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
            return;
        } else if (action.equals("delete")) {
            ArrayList<String> items = (ArrayList<String>) session.getAttribute("additem");
            String delete = request.getParameter("additem"); 
            if(delete != null) {
                items.remove(delete);
            }
            session.setAttribute("items", items);
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
            return;
        }

    }


}
