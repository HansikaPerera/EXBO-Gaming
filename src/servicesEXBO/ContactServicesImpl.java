package servicesEXBO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import connectionEXBO.DBConnection;
import modelEXBO.Contact;

public class ContactServicesImpl implements IContactServices {

	@Override
	public void addContact(Contact contact) {
		// TODO Auto-generated method stub
		String addContactQuery = "INSERT INTO contact VALUES(?,?,?,?)";
		
		
		try {
			// add data to contact table
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(addContactQuery);
			
			ps.setString(1, contact.getMessageID());
			ps.setString(2, contact.getName());
			ps.setString(3, contact.getEmail());
			ps.setString(4, contact.getMessage());
			
			ps.executeUpdate();		
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}

	}

	@Override
	public ArrayList<Contact> getMessages() {
		// TODO Auto-generated method stub
ArrayList<Contact> contactList = new ArrayList<Contact>();
		
		String getMessagesQuery = "SELECT * FROM contact";
		
		try {
			
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(getMessagesQuery);
			
			ResultSet resultSet = ps.executeQuery();
			
			while (resultSet.next()) {
				
				Contact contact = new Contact();
				contact.setMessageID(resultSet.getString(1));
				contact.setName(resultSet.getString(2));
				contact.setEmail(resultSet.getString(3));
				contact.setMessage(resultSet.getString(4));
				
				contactList.add(contact);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return contactList;
	}

	@Override
	public void deleteMessage(String messageID) {
		// TODO Auto-generated method stub
		String deleteMessageQuery = "DELETE from contact WHERE  MessageID = ?";
		
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(deleteMessageQuery);
			
			ps.setString(1, messageID);
			
			ps.executeUpdate();
			
		
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		

	}

	@Override
	public ArrayList<String> getMessageIDs() {
		// TODO Auto-generated method stub
		ArrayList<String> arrayList = new ArrayList<String>();
		
		String findIDQuery = "SELECT messageid FROM contact";
		
		PreparedStatement ps;
		try {
			ps = DBConnection.getDBconnection().prepareStatement(findIDQuery);
			
			ResultSet resultSet = ps.executeQuery();
			
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(1));
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return arrayList;
	}

}
