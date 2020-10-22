package tn.enig.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tn.enig.model.Produit;

@Repository
public interface IProduitDao extends JpaRepository<Produit, Integer> {

	
	@Query("select p from Produit p where p.mg.id =:x")
	public List<Produit> getAllProduitByMagId(@Param("x") Integer id); 

}
