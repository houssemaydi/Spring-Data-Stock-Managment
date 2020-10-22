package tn.enig.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Generated;
@Entity
public class Produit {
	
	 @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Float prixachat;
	private Float prixvente;
	private int nbre;
	private String description;
	@ManyToOne
	@JoinColumn(name="magasin_id")
	private Magasin mg;
	public Produit() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Produit(Integer id, Float prixachat, Float prixvente, int nbre, String description, Magasin mg) {
		super();
		this.id = id;
		this.prixachat = prixachat;
		this.prixvente = prixvente;
		this.nbre = nbre;
		this.description = description;
		this.mg = mg;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Float getPrixachat() {
		return prixachat;
	}
	public void setPrixachat(Float prixachat) {
		this.prixachat = prixachat;
	}
	public Float getPrixvente() {
		return prixvente;
	}
	public void setPrixvente(Float prixvente) {
		this.prixvente = prixvente;
	}
	public int getNbre() {
		return nbre;
	}
	public void setNbre(int nbre) {
		this.nbre = nbre;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Magasin getMg() {
		return mg;
	}
	public void setMg(Magasin mg) {
		this.mg = mg;
	}
	
	
}
