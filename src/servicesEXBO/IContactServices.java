package servicesEXBO;

import java.util.ArrayList;
import modelEXBO.Contact;

public interface IContactServices {
	
	public void addContact(Contact contact);
	
	public ArrayList<Contact> getMessages();

	public void deleteMessage(String messageID);
		
	public ArrayList<String> getMessageIDs();

}
