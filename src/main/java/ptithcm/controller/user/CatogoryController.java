package ptithcm.controller.user;


import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.ResultSetSupportingSqlParameter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ptithcm.entity.Catogory;


@Controller
@Transactional
public class CatogoryController {

	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "san_pham/{id}")
	public ModelAndView product( ModelMap map, @PathVariable String id) {
		int Id = Integer.parseInt(id);
		ModelAndView mv = new ModelAndView("users/catogory");
		Session session = factory.getCurrentSession();
		String hql = "FROM Catogory AS c WHERE c.id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", Id);
		Catogory catogory = (Catogory) query.uniqueResult();
		map.addAttribute("idcatogory", catogory);
		
		return mv;
	}
}
