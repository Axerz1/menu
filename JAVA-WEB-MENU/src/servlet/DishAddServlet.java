package servlet;

import bean.Dish;
import service.DishService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/dishAdd")
public class DishAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String cook = request.getParameter("cook");
        String dishname = request.getParameter("dishname");
        String type = request.getParameter("type");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");

        Dish dish = new Dish(cook, dishname, type, price, description);
        DishService dishService = new DishService();
        boolean result = dishService.addDish(dish);
        //是否成功的提示
        String message;
        if (result) {
            message = "菜谱信息添加成功！";
        } else {
            message = "菜谱信息添加失败！";
        }
        response.sendRedirect("dish_add.jsp?message=" + java.net.URLEncoder.encode(message, "UTF-8"));
    }
}  
