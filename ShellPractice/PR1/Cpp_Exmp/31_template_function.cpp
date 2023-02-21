//Template function in C++
#include<iostream>
using namespace std;

template <class T>//or we can use typename instead of class
//Here class keyword is not as that of class we used to define
T sum(T n1,T n2)
{
    return n1+n2;
}

//MAIN
int main()
{
    double A,B,C;
    int X,Y,Z;
    cout << "Enter two Double numbers:" ;
    cin >> A >> B;
    C=sum(A,B);
    cout << "Sum is:" << C << endl;
    cout << "Enter two Integer numbers:" ;
    cin >> X >> Y;
    Z=sum(X,Y);
    cout << "Sum is:" << Z << endl;
}