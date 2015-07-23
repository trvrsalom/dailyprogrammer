import java.util.HashMap;
import java.util.Iterator;
import java.util.Scanner;


 public class Conversion {

public static void main(String[] args) {

    HashMap<String, Double> distRatios = new HashMap<String, Double>();
    distRatios.put("inches", 39.3700787); //inch per m
    distRatios.put("miles",.000621371); // mile per m
    distRatios.put("attoparsecs", 32.4077929); //attparsecs per m
    distRatios.put("meters", 1.0);//m per m

    HashMap<String, Double> massRatios = new HashMap<String, Double>();
     massRatios.put("kilograms", 1.0); //kg to kg
     massRatios.put("pounds", 0.453592); //kg per oz
     massRatios.put("ounces", 0.0283495); //kg per oz
     massRatios.put("hhob", 440.7); //kg to hhob



    while(true){
    Scanner input = new Scanner(System.in);

    System.out.println("Conversion (Use the format: {x} {units} to {units}): ");

    String[] userString = input.nextLine().split(" ");

    String newUnit = userString[3];
    String oldUnit = userString[1];

    try{

        if (distRatios.keySet().contains(userString[1])){

            Double value = distRatios.get(newUnit)/distRatios.get(oldUnit);

            System.out.println(value * Integer.parseInt(userString[0]) + " " + userString[3]);

        }

        else{
            Double value = massRatios.get(oldUnit)/massRatios.get(newUnit);

            System.out.println(value * Integer.parseInt(userString[0]) + " " + userString[3]);
        }

        }
        catch(Exception e)
        {
            System.out.printf("Cannot convert %s %s to %s\n",
                            userString[0], userString[1], userString[3]);
        }
    }


}

   }
