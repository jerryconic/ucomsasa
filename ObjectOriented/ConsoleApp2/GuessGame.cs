using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApp2;

public class GuessGame
{
    private int[] _ans;
    private int[] _guess;
    public void Start()
    {
        //產生四個1~9的亂數, 且不重複, 存放於_ans
        _ans = new int[4];
        _guess = new int[4];
        Random rnd = new Random();
        for (int i = 0; i < 4; i++)
        {
            int rndValue;
            do
            {
                rndValue = rnd.Next(1,10);
            } while (_ans.Contains(rndValue));
            _ans[i] = rndValue;
            Console.WriteLine(rndValue);
        }        
    }
    public void Guess()
    {
        //讓使用者輸入四個1~9的數字, 存放於_guess
        _guess = new int[4];
        Console.WriteLine("請輸入四個1~9的數字, 且不重複");
        for (int i = 0; i < 4; i++)
        {
            int guessValue;
            do
            {
                Console.Write($"請輸入第{i+1}個數字:");
                guessValue = int.Parse(Console.ReadLine());
            } while (_guess.Contains(guessValue) || guessValue < 1 || guessValue > 9);
            _guess[i] = guessValue;
        }
    }
    public bool GotAns()
    {
        //比對_guess和_ans, 如果位置相同且數字相同A++, 如果位置不同但數字相同B++
        //顯示A和B的數量, 如果A=4, 則回傳true, 否則回傳false
        int A = 0, B = 0;
        for (int i = 0; i < 4; i++)
        {
            if (_guess[i] == _ans[i])
            {
                A++;
            }
            else if (_ans.Contains(_guess[i]))
            {
                B++;
            }
        }
        Console.WriteLine($"{A}A{B}B");
        return A == 4;

    }
}