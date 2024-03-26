package model;

import java.sql.Date;
import java.util.Objects;

public class Customer {
	private String customerId;
	private String customerName;
	private String username;
	private String password;
	private String gender;
	private String address;
	private String receiAddress;
	private String buyAddress;
	private Date dob;
	private String phoneNumber;
	private String email;
	private Integer isRecei_email;

	public Customer() {
	}
	
	public Customer(String customerId) {
		this.customerId = customerId;
	}

	public Customer(String customerId, String customerName, String username, String password, String gender,
			String address, String receiAddress, String buyAddress, Date dob, String phoneNumber, String email,
			Integer isRecei_email) {
		this.customerId = customerId;
		this.customerName = customerName;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.address = address;
		this.receiAddress = receiAddress;
		this.buyAddress = buyAddress;
		this.dob = dob;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.isRecei_email = isRecei_email;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getreceiAddress() {
		return receiAddress;
	}

	public void setreceiAddress(String receiAddress) {
		this.receiAddress = receiAddress;
	}

	public String getbuyAddress() {
		return buyAddress;
	}

	public void setbuyAddress(String buyAddress) {
		this.buyAddress = buyAddress;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer isRecei_email() {
		return isRecei_email;
	}

	public void setRecei_email(Integer isRecei_email) {
		this.isRecei_email = isRecei_email;
	}

	@Override
	public int hashCode() {
		return Objects.hash(customerId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Customer other = (Customer) obj;
		return Objects.equals(customerId, other.customerId);
	}

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", customerName=" + customerName + ", username=" + username
				+ ", password=" + password + ", gender=" + gender + ", address=" + address + ", receiAddress="
				+ receiAddress + ", buyAddress=" + buyAddress + ", dob=" + dob + ", phoneNumber=" + phoneNumber
				+ ", email=" + email + ", isRecei_email=" + isRecei_email + "]";
	}

	
}