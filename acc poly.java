package class6;


import java.util.Calendar;

public class Account {
    private int id;
    private double balance;
    private double annualInterestRate;
    private Calendar dateCreated;

    public Account() {
    }

    public Account(int id, double balance, double annualInterestRate) {
        this.id = id;
        this.balance = balance;
        this.annualInterestRate = annualInterestRate;
        dateCreated = Calendar.getInstance();

    }

    public int getId() {
        return id;
    }


    public void setId(int id) {
        this.id = id;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public double getAnnualInterestRate() {
        return annualInterestRate;
    }

    public void setAnnualInterestRate(double annualInterestRate) {
        this.annualInterestRate = annualInterestRate;
    }

    public Calendar getDateCreated() {
        return dateCreated;
    }

    public double getMonthlyInterestRate(){
        return  annualInterestRate/12;
    }

    public double getMonthlyInterestAmount(){
        return balance * getMonthlyInterestRate();
    }

    public void deposit(double amount){
        if(amount< 0){
            System.out.println("Cannot deposit negative amount");
        }else {
            balance = balance + amount;
            System.out.println("Deposited "+amount+ " successfully");
        }
    }

    //original
    public void withdraw(double amount){
        if(amount<0){
            System.out.println("Cannot withdraw negative amount");
        }else if(amount > balance){
            System.out.println("Insufficient balance");
        }else{
            balance = balance - amount;
            System.out.println("Withdrawal of "+amount+ " successful");
        }
    }
    public static void myMethod(Account a){

    }

    public static void main(String[] args) {
        Account a = new Account(1122, 20000, 0.045);
        a.withdraw(2500);
        a.deposit(3000);

        System.out.println(a.getBalance());
        System.out.println(a.getMonthlyInterestRate());
        System.out.println(a.getDateCreated().getTime());

        //subclass poly = two refer to a child class's object with parent class's reference
        Account c = new SavingsAccount(1134, 10000,.05,"12321834234940");
        Account c2 = new CheckingAccount(123,10000,.05,6000);

        //two checks
        //first check => what methods are available? => depends on the reference
        //second check => which method will be called/invoked? => depends on the object

        ((SavingsAccount)c).getCreditBalance(5000);

        myMethod(a);
        myMethod(c);
        myMethod(c2);

    }
}
########################################################################################################################################
package class6;

import java.util.Calendar;

public class SavingsAccount extends Account{
    private String carNumber;
    private Calendar expiryDate;

    public SavingsAccount(int id, double balance, double annualInterestRate,String carNumber){
        super(id,balance,annualInterestRate);
        this.carNumber = carNumber;

        Calendar c = Calendar.getInstance();
        c.add(Calendar.YEAR, 10);
        this.expiryDate = c;

    }
    //people who have credit of more than 5000 have 3 * balance
    //else 2 * balance
    //conditions for overloading
    //1.same class
    //2.same name
    //3.might have different ret types,access mod
    //4.must have diff args
    public double getCreditBalance(double credit){
        if(credit > 5000) return 3 * getBalance();
        else return  2 * getBalance();
    }
    public double getCreditbalance(){
        return 2 * getBalance();
    }

    public String getCarNumber() {
        return carNumber;
    }

    public Calendar getExpiryDate() {
        return expiryDate;
    }

    public static void main(String[] args) {
        SavingsAccount s = new SavingsAccount(1134, 10000,.05,"12321834234940");
        s.withdraw(1000);
        s.deposit(5000);

        System.out.println(s.getMonthlyInterestAmount());
        System.out.println(s.getExpiryDate().getTime());
    }
}
______________________________________________________________________________________________________________________________________________________________________________________


package class6;

public class CheckingAccount extends Account{
    private  double overdraftLimit;

    //method overloading
    //method overriding
    //subclass poly

    //method overloading  = when two methods inside the same class have the same name. They have diff arguments
    //method overriding = When we have two classes and we want to reimplement a parent class's method inside the child class.

    public CheckingAccount(int id, double balance, double annualInterestRate, double overdraftLimit) {
        super(id, balance, annualInterestRate);
        this.overdraftLimit = overdraftLimit;
    }

    //checking account cannot withdraw if remaining balance is less than 500.
    //conditions of overriding
    //1.parent and child class
    //2. original and overriden has same name,arguments,ret type and access mod
    //3. Different implementation

    public void withdraw(double amount){
        if(amount<0){
            System.out.println("Cannot withdraw negative amount");
        }else if(amount > getBalance() - 500){
            System.out.println("Insufficient balance");
        }else{
            setBalance(getBalance() - amount);
            System.out.println("Withdrawal of "+amount+ " successful");
        }
    }

    public static void main(String[] args) {
        Account c = new CheckingAccount(123,10000,.05,6000);
        c.withdraw(9700);
    }
}




