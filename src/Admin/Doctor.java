package Admin;

public class Doctor {
	
	private String name;
	private String email;
	private String pass;
	private String phone;
	private String speciality;
	private String experience;
 
	

	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}



	@Override
	public String toString() {
		return "Doctor [name=" + name + ", email=" + email + ", pass=" + pass + ", phone=" + phone + ", speciality="
				+ speciality + ", experience=" + experience + "]";
	}



	public Doctor(String name, String email, String pass, String phone, String speciality, String experience) {
		super();
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.phone = phone;
		this.speciality = speciality;
		this.experience = experience;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPass() {
		return pass;
	}



	public void setPass(String pass) {
		this.pass = pass;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getSpeciality() {
		return speciality;
	}



	public void setSpecaility(String specaility) {
		this.speciality = speciality;
	}



	public String getExperience() {
		return experience;
	}



	public void setExperience(String experience) {
		this.experience = experience;
	}



	public void setUser(String name) {
		// TODO Auto-generated method stub
		
	}

}
