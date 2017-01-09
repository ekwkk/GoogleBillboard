public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059"; 

public void setup()  
{
  double d = 0.0; 
  
  for (int i = 2; i < e.length()-2; i++)
  {
   d = Double.parseDouble(e.substring(i, i+10));
   if (isPrime(d))
     break;
  }
  
  System.out.println(d);
  
}

public void draw()  
{   
  // no use
}  

public boolean isPrime(double num)
{
  if (num < 2.0)
    return false;
  for (int i = 2; i <= Math.sqrt(num); i++)
    if (num % i == 0)
    {

      return false;
    }
  return true;
}