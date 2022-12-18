package vn.pandora.Controller.Admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.pandora.Model.Store;
import vn.pandora.Model.User;
import vn.pandora.Service.Impl.StoreServiceImpl;

/**
 * Servlet implementation class ListStoreController
 */
@WebServlet(urlPatterns = { "/admin/listStore" })
public class StoreController extends HttpServlet {
	StoreServiceImpl storeServiceImpl = new StoreServiceImpl();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		
		List<Store> listStore = new ArrayList<Store>();

		req.setAttribute("listStore", listStore);
		req.getRequestDispatcher("/views/vendor/MyStore.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
