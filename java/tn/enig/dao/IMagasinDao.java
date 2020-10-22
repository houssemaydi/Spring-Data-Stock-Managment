package tn.enig.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import tn.enig.model.Magasin;
import tn.enig.model.Produit;

@Repository
public interface IMagasinDao extends JpaRepository<Magasin, Integer>{

	
}
