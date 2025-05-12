using ConsoleApp2;

GuessGame g1 = new GuessGame();
g1.Start();
while (!g1.GotAns())
{
    g1.Guess();
}