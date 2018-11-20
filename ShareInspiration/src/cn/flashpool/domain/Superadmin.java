package cn.flashpool.domain;
// Generated 2018-11-17 14:12:14 by Hibernate Tools 5.0.6.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Superadmin generated by hbm2java
 */
@Entity
@Table(name = "superadmin", catalog = "shareinspiration")
public class Superadmin implements java.io.Serializable {

	private Integer saId;
	private String saName;
	private String saPw;
	private String saNickname;

	public Superadmin() {
	}

	public Superadmin(String saName, String saPw, String saNickname) {
		this.saName = saName;
		this.saPw = saPw;
		this.saNickname = saNickname;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "SA_id", unique = true, nullable = false)
	public Integer getSaId() {
		return this.saId;
	}

	public void setSaId(Integer saId) {
		this.saId = saId;
	}

	@Column(name = "SA_name", length = 15)
	public String getSaName() {
		return this.saName;
	}

	public void setSaName(String saName) {
		this.saName = saName;
	}

	@Column(name = "SA_pw", length = 20)
	public String getSaPw() {
		return this.saPw;
	}

	public void setSaPw(String saPw) {
		this.saPw = saPw;
	}

	@Column(name = "SA_nickname", length = 24)
	public String getSaNickname() {
		return this.saNickname;
	}

	public void setSaNickname(String saNickname) {
		this.saNickname = saNickname;
	}

}
