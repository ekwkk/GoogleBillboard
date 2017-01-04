public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059"; 
public boolean myBool = false;
public void setup()  
{            
     noLoop();  
     String digits = e.substring(2,12);
     double dNum = Double.parseDouble(digits);
     myBool = isPrime(dNum);
}  
public void draw()  
{   
	String digits = e.substring(2,12);
	double dNum = Double.parseDouble(digits);
	System.out.println(e.length());
	while (myBool == false)
	{
		for (int i = 1; i < e.length()-13; i++)
		{
			digits = e.substring(2+i, 12+i);
			dNum = Double.parseDouble(digits);
			myBool = isPrime(dNum);
			System.out.println(myBool);
		}
	}

	if (myBool)
		System.out.println(dNum);
}  
public boolean isPrime(double dNum)  
{   
	if (dNum > 1)
	{
		for (int i = 2; i <= Math.sqrt(dNum); i++)
	    {
	      if (dNum%i == 0)
	        return false;
	    }
	}
	else if (dNum <= 1)
		return false;
  
  return true; 
} 