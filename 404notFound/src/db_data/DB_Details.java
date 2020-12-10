package db_data;
import java.util.Random;

public class DB_Details {
		public static String getURL(){
			return "jdbc:mysql://quizzz.cvqwklvcfmhx.us-east-1.rds.amazonaws.com:3306/VOIDHACK";
		}
		
		public static String getUsername(){
			return "root";
		}
		
		public static String getPassword(){
			return "abcd1212*";
		}
		public static String generatePassword(){
			String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		    String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
		    String specialCharacters = "!@#$";
		    String numbers = "1234567890";
		    String combinedChars = capitalCaseLetters + lowerCaseLetters + specialCharacters + numbers;
		    Random random = new Random();
		    char[] password = new char[8];

		    password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
		    password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
		    password[2] = specialCharacters.charAt(random.nextInt(specialCharacters.length()));
		    password[3] = numbers.charAt(random.nextInt(numbers.length()));
		   
		    for(int i = 4; i< 8 ; i++) {
		    	password[i] = combinedChars.charAt(random.nextInt(combinedChars.length()));
		    }
		    return password.toString();
		}
}
