//Encapsulation
#include <iostream>
using namespace std;

class Employee 
{
    private:
        // Private attribute
        int salary;

    public:
        // Setter
        void setSalary(int s) 
        {
            salary = s;
        }
        // Getter
        int getSalary() 
        {
            return salary;
        }
};

//MAIN
int main() 
{
    Employee myObj;
    myObj.setSalary(50000);
    cout << "Salary is " << myObj.getSalary();
    return 0;
}