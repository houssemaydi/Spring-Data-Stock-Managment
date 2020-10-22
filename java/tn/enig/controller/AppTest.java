package tn.enig.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import tn.enig.dao.IMagasinDao;
import tn.enig.dao.IProduitDao;
import tn.enig.model.Magasin;
import tn.enig.model.Produit;
@Controller
public class AppTest {

	
	@Autowired
	IProduitDao daop ;
	@Autowired
	IMagasinDao daom;
	public void setDaop(IProduitDao daop) {
		this.daop = daop;
	}
	public void setDaom(IMagasinDao daom) {
		this.daom = daom;
	}

	@GetMapping("/home")
	public String get1(Model m) {
		List<Magasin> liste1=daom.findAll();
		System.out.println(liste1);
		m.addAttribute("liste",liste1);
		return "home"; 
	}
	
	@GetMapping("/consultMagasin/{id}")
	public String get2(Model m,@PathVariable("id") int num) {
		List<Produit> liste=  daop.getAllProduitByMagId(num);
		Magasin mag = daom.findOne(num);
		m.addAttribute("magname", mag.getNom());

		m.addAttribute("liste", liste);

		return "consultMagasin";
		
	}
	
	@GetMapping("ajoutproduit")
	public String get3(Model m) {
		Produit p = new Produit();
		List<Magasin> listem=daom.findAll();
		m.addAttribute("produit", p);
		m.addAttribute("listeMagasin", listem);
		return "ajoutproduit";
	}
	
	@PostMapping("saveProduit")
	public String get4(Model m, @ModelAttribute("produit") Produit p) {
		daop.save(p);
		return "redirect:/home";
		
	}
	
	@GetMapping("delete/{id}")
	public String get5(Model m,@PathVariable("id") int id) {
		daop.delete(id);
		return "redirect:/home";
	}
}
