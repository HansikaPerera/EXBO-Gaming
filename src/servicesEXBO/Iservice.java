package servicesEXBO;

import java.util.ArrayList;

import modelEXBO.info;

public interface Iservice {
	

	public void update(info Info);
	public void deactivate(info Info);
	public ArrayList<String> getUserIDs();
	public void Signup(info Info); 
	public info Login(info Info); 
	

}
