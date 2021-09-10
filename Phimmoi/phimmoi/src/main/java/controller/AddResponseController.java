package controller;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import entity.Response;
import entity.User;

@WebServlet("add-response")
public class AddResponseController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");

		Calendar calendar = Calendar.getInstance();
		String s = calendar.get(Calendar.YEAR) + "-" + (calendar.get(Calendar.MONTH) + 1) + "-"
				+ calendar.get(Calendar.DAY_OF_MONTH) + "-" + calendar.get(Calendar.HOUR) + ":"
				+ calendar.get(Calendar.MINUTE) + ":" + calendar.get(Calendar.SECOND);

		HttpSession sesion = req.getSession();
		User user = (User) sesion.getAttribute("user");
		Response res = new Response(0, req.getParameter("text"), Long.parseLong(req.getParameter("user_id")),
				Integer.parseInt(req.getParameter("comment_id")),req.getParameter("phim_id"), s,0);
		if (user != null) {
			new UserDAO().addResponse(res);
			resp.sendRedirect("detail?id=" + res.getPhim_id());

		} else {
			resp.sendRedirect("detail?id=" + res.getPhim_id());
		}
	}
}