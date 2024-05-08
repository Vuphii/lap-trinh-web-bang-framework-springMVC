package ptithcm.controller.user;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ptithcm.entity.Catogory;
import ptithcm.entity.Menu;
import ptithcm.entity.Product;
import ptithcm.entity.Slide;
@Controller
@Transactional
public class HomeController {
	
	@Autowired
	SessionFactory factory;

	@SuppressWarnings("unchecked")
	@RequestMapping(value = {"/", "trang-chu"}, method = RequestMethod.GET)
	public ModelAndView index(ModelMap map) {
		ModelAndView mv= new ModelAndView("users/hello");
		//Goi thuc the menu
		Session s = factory.getCurrentSession();
		String hqlshare = "FROM Menu";
		Query q = s.createQuery(hqlshare);
		@SuppressWarnings("unchecked")
		List<Menu> l = q.list();
		map.addAttribute("menus", l);
		
		//goi thuc the slides 
		Session session = factory.getCurrentSession();
		String hql = "FROM Slide";
		Query query = session.createQuery(hql);
		@SuppressWarnings({ "unchecked", "unused" })
		List<Slide> list = query.list();
		map.addAttribute("slides", list);
		
		//goi thuc the catogory
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM Catogory";
		Query query2 = session2.createQuery(hql2);
		@SuppressWarnings({ "unchecked", "unused" })
		List<Catogory> list2 = query2.list();
		map.addAttribute("catogorys", list2);
		
		//goi thuc the product
		Session session3 = factory.getCurrentSession();
		String hql3 = "FROM Product p ";
		Query query3 = session3.createQuery(hql3);
		List<Product> listproduct = query3.list();
		map.addAttribute("products", listproduct);
		return mv;
	}
	

}
