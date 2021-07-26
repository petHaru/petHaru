package com.petharu.web.entity;

public class Pet {
	private int id;
	private String name;
	private String gender;
	private int age;
	private String image;
	private String personality;
	private int memberId;
	private int breedId;
	private String birthday;
	private String breed;
	
	public Pet() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPersonality() {
		return personality;
	}

	public void setPersonality(String personality) {
		this.personality = personality;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getBreedId() {
		return breedId;
	}

	public void setBreedId(int breedId) {
		this.breedId = breedId;
	}
	
	

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	@Override
	public String toString() {
		return "Pet [id=" + id + ", name=" + name + ", gender=" + gender + ", age=" + age + ", image=" + image
				+ ", personality=" + personality + ", memberId=" + memberId + ", breedId=" + breedId + ", birthday="
				+ birthday + ", breed=" + breed + "]";
	}

	

	
	
}
