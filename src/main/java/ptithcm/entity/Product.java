package ptithcm.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Products")
public class Product {
	
	@Id
	@GeneratedValue
	private int id;
	@ManyToOne
	@JoinColumn(name = "id_catogory")
	private Catogory catogory;
	private String name;
	private String img;
	private Double price;
	private String title;
	private Boolean hightlight;
	private Boolean new_product; 
	private String details;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date created_at;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date update_at;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Catogory getCatogory() {
		return catogory;
	}
	public void setCatogory(Catogory catogory) {
		this.catogory = catogory;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Boolean getHightlight() {
		return hightlight;
	}
	public void setHightlight(Boolean hightlight) {
		this.hightlight = hightlight;
	}
	public Boolean getNew_product() {
		return new_product;
	}
	public void setNew_product(Boolean new_product) {
		this.new_product = new_product;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Date getUpdate_at() {
		return update_at;
	}
	public void setUpdate_at(Date update_at) {
		this.update_at = update_at;
	}
	
	
	
	

}
