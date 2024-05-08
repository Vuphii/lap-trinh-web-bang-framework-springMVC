package ptithcm.controller.user;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import javax.crypto.SealedObject;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Product;

@Controller
@Transactional
@RequestMapping("/admin/")
public class AhomeController {
	
	@Autowired
	SessionFactory factory;
	
    
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(ModelMap map) {
		
		map.addAttribute("product", new Product());
		return "admin/index";
	}
	
	@RequestMapping(value = "index", method = RequestMethod.POST)
	public String index2(ModelMap map, @ModelAttribute ("product") Product product ) {
		Session session = factory.openSession();
		Transactional t = (Transactional) session.beginTransaction();
		
		try {
			session.save(product);
			 ((Transaction) t).commit();
			 map.addAttribute("message", "Them moi thanh cong");
			 
			
		}
		catch (Exception e) {
			// TODO: handle exception
			((Transaction) t).rollback();
			 map.addAttribute("message", "Them moi that bai");
			 
			
		}
		finally {
			session.close();
		}
		
		return "admin/index";
	}

}
