import java.util.Scanner;

class Dec2Hex
{

    public static int Arg1;

    public static void main(String args[])
    {
        try
        {
                Arg1 = Integer.parseInt(args[0]);
                char ch[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
                int input, rem, num;
                num = Arg1;
                input = num;
                String hexadecimal="";

                while(num != 0)
                {
                rem=num%16;
                hexadecimal= ch[rem] + hexadecimal;
                num= num/16;
                }

                System.out.println("Hexadecimal representation of " + input + " is " + hexadecimal);
        }
        catch (Exception ex)
        {
                System.out.println("Error : Enter Integer Value");
        }
    }
}

