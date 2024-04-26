package com.jspiders.SpringMVC.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.SpringMVC.Dao.UserDAO;
import com.jspiders.SpringMVC.Dto.CarDTO;
import com.jspiders.SpringMVC.Dto.UserDTO;

@Component
public class UserService {
	
	@Autowired
	private UserDAO userDAO;

	public void addUser(String email, String password) {
		UserDTO userDTO = new UserDTO();
		userDTO.setEmail(email);
		userDTO.setPassword(password);
		userDTO.setCars(new ArrayList<CarDTO>());
		userDAO.addUser(userDTO);
	}

	public UserDTO checkUser(String email, String password) {
		List<UserDTO> users = userDAO.findAllUsers();
		UserDTO signedInUser = null;
		for (UserDTO user : users) {
			if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
				signedInUser = user;
				break;
			}
		}
		return signedInUser;
	}

	public void updateUser(UserDTO signedInUser, CarDTO addedCar) {
		userDAO.updateUser(signedInUser.getId(), addedCar.getId());
	}
	
	public void deleteUser(UserDTO signedInUser) {
		userDAO.deleteUser(signedInUser.getId());
	}

	

}
