using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1_Programming.BasicProgrammes
{
    class Class1
    {
        //static void Main(string[] args)
        //{
        //    Console.Write("Enter the n value: ");
        //    int n = int.Parse(Console.ReadLine());
        //    for (int i = 0; i <= n; i++)
        //    {
        //        for (int j = 0; j <= i; j++)
        //        {
        //            Console.Write(" *");
        //        }
        //        Console.WriteLine(" ");
        //    }
        //    Console.WriteLine("Expected pattern is printed");
        //    Console.ReadLine();
        //}

        static void Main(string[] args)
        {

            String string1 = "vidya is vidya and pavani is vidya";
            int count;

            //Converts the string into lowercase  
            string1 = string1.ToLower();

            //Split the string into words using built-in function  
            String[] words = string1.Split(' ');

            Console.WriteLine("Duplicate words in a given string : ");
            for (int i = 0; i < words.Length; i++)
            {
                count = 1;
                for (int j = i + 1; j < words.Length; j++)
                {
                    if (words[i].Equals(words[j]))
                    {
                        count++;
                        //Set words[j] to 0 to avoid printing visited word  
                        words[j] = "0";
                    }
                }

                //Displays the duplicate word if count is greater than 1  
                if (count > 1 && words[i] != "0")
                {
                    //Console.WriteLine(words[i]); 
                    //Console.WriteLine(count);
                    Console.WriteLine("The repeated words are : " + words[i] + " : " + count);
                }
            }
            Console.ReadLine();
        }

    }
}
