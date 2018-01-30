package encryption;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Encryption {
	public static String encryption(String password) {
		try {
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			
			messageDigest.update(password.getBytes());
			
			return new BigInteger(1,messageDigest.digest()).toString(16);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	public void add() {
		
	}
}
