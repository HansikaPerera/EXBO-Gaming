package utilEXBO;

import java.util.ArrayList;

public class NewUtil {

	public static String generateuserIDs(ArrayList<String> arrayList) {
	
		String uid;
		int next = arrayList.size();
		next++;
		uid = "U00" + next;
	
		if (arrayList.contains(uid)) {
		next++;
			uid = "U00" + next;
		}
		return uid;
	}
}

