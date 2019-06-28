package utilEXBO;

import java.util.ArrayList;

public class CommonUtil {

	public static String generateGameIDs(ArrayList<String> arrayList) {
		
		String gid;
		int next = arrayList.size();
		next++;
		gid = "G00" + next;
		
		if (arrayList.contains(gid)) {
			next++;
			gid = "G00" + next;
		}
		return gid;
	}
	
	
	public static String generateMessageIDs(ArrayList<String> arrayList) {
		
		String mid;
		int next = arrayList.size();
		next++;
		mid = "M100" + next;
		if (arrayList.contains(mid)) {
			next++;
			mid = "M100" + next;
		}
		return mid;
	}
	
}
