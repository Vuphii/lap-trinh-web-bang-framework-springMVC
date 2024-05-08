package ptithcm.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ptithcm.entity.Catogory;
import ptithcm.entity.Menu;
import ptithcm.entity.Product;

@Controller
@Transactional
public class ProductController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "/chi-tiet-san-pham/{id}")
	public ModelAndView index(ModelMap map, @PathVariable int id) {
		
	
		//goi thuc the catogory
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM Catogory";
		Query query2 = session2.createQuery(hql2);
		@SuppressWarnings({ "unchecked", "unused" })
		List<Catogory> list2 = query2.list();
		map.addAttribute("catogorys", list2);
		
		
		ModelAndView mv = new ModelAndView("users/products/product");
		Session session = factory.getCurrentSession();
		String hql = "FROM Product AS p WHERE p.id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		Product product = (Product) query.uniqueResult();
		map.addAttribute("detail_product", product);
		return mv;
	}
	
	

}
