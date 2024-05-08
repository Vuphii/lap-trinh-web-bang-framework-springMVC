package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "Slides")
public class Slide {
	@Id
	@GeneratedValue
	@Column(name = "Id")
	private int id;
	
	@Column(name = "img")
	private String img;
	
	@Column(name = "cation")
	private String cation;
	
	private String context;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getCation() {
		return cation;
	}

	public void setCation(String cation) {
		this.cation = cation;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}
	
	
	
	

}
