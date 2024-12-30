Up::
    Pause
    return

Down::
Reload
Return

; Hotkey for Ctrl + 4 to type the first snippet
^4::
Send, package class4;{Enter}
Send, public class Book {;{Enter}
Send,     public  String title;{Enter}
Send,     String author;{Enter}
Send,     private double price;{Enter}
Send,     private int ISBN;{Enter}
Send,     private int noOfCopies;{Enter}
Send, {Enter}
Send,     public int getNoOfCopies() {;{Enter}
Send,         return noOfCopies;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public void setNoOfCopies(int noOfCopies) {;{Enter}
Send,         this.noOfCopies = noOfCopies;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public int getISBN() {;{Enter}
Send,         return ISBN;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public void setISBN(int ISBN) {;{Enter}
Send,         this.ISBN = ISBN;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public double getPrice(){;{Enter}
Send,         return price;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public void setPrice(double price){;{Enter}
Send,         this.price = price;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public Book(String title, String author, double price, int ISBN, int noOfCopies) {;{Enter}
Send,         this.title = title;{Enter}
Send,         this.author = author;{Enter}
Send,         this.price = price;{Enter}
Send,         this.ISBN = ISBN;{Enter}
Send,         this.noOfCopies = noOfCopies;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public void showDetails(){;{Enter}
Send,         System.out.println("Title ="+ title);{Enter}
Send,         System.out.println("Author ="+ author);{Enter}
Send,         System.out.println("ISBN ="+ ISBN);{Enter}
Send,         System.out.println("Price ="+ price);{Enter}
Send,         System.out.println("Copies Available ="+ noOfCopies);{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public double sellBook(int n){;{Enter}
Send,         noOfCopies -= n;{Enter}
Send, {Enter}
Send,         double sale = n * price;{Enter}
Send,         System.out.println("Total Price : "+ sale);{Enter}
Send,         return sale;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public void giveDiscount(double x){;{Enter}
Send,         price -= x*price/100;{Enter}
Send,     }{Enter}
Send, }{Enter}
Return

; Hotkey for Ctrl + 5 to type the second snippet
^5::
Send, package class4;{Enter}
Send, public class Library {;{Enter}
Send,     Book[] collection = new Book[100];{Enter}
Send,     int idx = 0;{Enter}
Send, {Enter}
Send,     public void createBook(String t, String a, int i, double p, int n){;{Enter}
Send,         Book b = new Book(t,a,p,i,n);{Enter}
Send,         collection[idx] = b;{Enter}
Send,         idx++;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public double sellBook(String name, int n){;{Enter}
Send,         for(int i = 0; i<idx; i++){;{Enter}
Send,             Book b = collection[i];{Enter}
Send,             if(b.title == name) {;{Enter}
Send,                 //found{Enter}
Send,                 if(n <= b.getNoOfCopies()){;{Enter}
Send,                     //sell{Enter}
Send,                     b.setNoOfCopies(b.getNoOfCopies() - n);{Enter}
Send,                     double profit = n * b.getPrice();{Enter}
Send,                     System.out.println("Total price =" +profit);{Enter}
Send,                     return profit;{Enter}
Send,                 }else {;{Enter}
Send,                     //not enough stock{Enter}
Send,                     System.out.println("Not enough Copies");{Enter}
Send,                 }{Enter}
Send,             }else{;{Enter}
Send,                 //not found{Enter}
Send,                 System.out.println("The book does not exist");{Enter}
Send,             }{Enter}
Send,         }{Enter}
Send,         return  0;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public void reorderBook(String name, int n){;{Enter}
Send,         for(int i = 0; i<idx; i++){;{Enter}
Send,             Book b = collection[i];{Enter}
Send,             if(b.title == name) {;{Enter}
Send,                 //found{Enter}
Send,                 b.setNoOfCopies(b.getNoOfCopies()+n);{Enter}
Send,                 System.out.println("Restocking successful");{Enter}
Send,                 return;{Enter}
Send,             }{Enter}
Send, {Enter}
Send,             System.out.println("The book does not exist");{Enter}
Send,         }{Enter}
Send, {Enter}
Send,     public void showAllBooks(){;{Enter}
Send,         for (int i = 0 ; i<idx; i++){;{Enter}
Send,             System.out.println("-------------------");{Enter}
Send,             collection[i].showDetails();{Enter}
Send,             System.out.println("-------------------");{Enter}
Send,         }{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     public static void main(String[] args) {;{Enter}
Send,         Library l = new Library();{Enter}
Send, {Enter}
Send,         l.createBook("Ikigai","James Cameron",347543957,1000,100);{Enter}
Send,         l.createBook("The Great Gatsby","Chris Wallace",345435,1800,15);{Enter}
Send,         l.showAllBooks();{Enter}
Send, {Enter}
Send,         l.sellBook("Ikigai",20);{Enter}
Send,         l.reorderBook("The Great Gatsby",20);{Enter}
Send, {Enter}
Send,         l.showAllBooks();{Enter}
Send,     }{Enter}
Send, }{Enter}
Return

; Hotkey for Ctrl + 6 to type the third snippet
^6::
Send, package class4;{Enter}
Send, import java.util.Scanner;{Enter}
Send, {Enter}
Send, public class Test {;{Enter}
Send,     public static void main(String[] args) {;{Enter}
Send,         Scanner sc = new Scanner(System.in);{Enter}
Send,         String t = sc.nextLine();{Enter}
Send,         String a = sc.nextLine();{Enter}
Send,         double p = sc.nextDouble();{Enter}
Send,         int i = sc. nextInt();{Enter}
Send,         int n = sc.nextInt();{Enter}
Send, {Enter}
Send,         Book b1 = new Book(t,a,p,i,n);{Enter}
Send,         System.out.println(b1.getPrice());{Enter}
Send,         b1.setPrice(2000);{Enter}
Send, {Enter}
Send,         t = sc.nextLine();{Enter}
Send,         a = sc.nextLine();{Enter}
Send,         p = sc.nextDouble();{Enter}
Send,         i = sc. nextInt();{Enter}
Send,         n = sc.nextInt();{Enter}
Send, {Enter}
Send,         Book b2 = new Book(t,a,p,i,n);{Enter}
Send, {Enter}
Send,         b1.sellBook(5);{Enter}
Send,         b1.giveDiscount(10);{Enter}
Send,         b1.sellBook(5);{Enter}
Send,     }{Enter}
Send, }{Enter}
Return

; Hotkey for Ctrl + 7 to type the TwoDArray snippet
^7::
Send, package class4;{Enter}
Send, import java.util.Scanner;{Enter}
Send, {Enter}
Send, public class TwoDArray {;{Enter}
Send,     public static void main(String[] args) {;{Enter}
Send,         Scanner sc = new Scanner(System.in);{Enter}
Send,         int m = sc.nextInt();{Enter}
Send,         int n = sc.nextInt();{Enter}
Send, {Enter}
Send,         int[][]  a = new int[m][n];{Enter}
Send, {Enter}
Send,         // a = new int[][]{{1,2,3},{4,5},{}};
Send, {Enter}
Send,         System.out.println(a.length);{Enter}
Send,         System.out.println(a[0].length);{Enter}
Send, {Enter}
Send,         for (int i = 0; i < a.length; i++) {;{Enter}
Send,             for (int j = 0; j < a[i].length; j++) {;{Enter}
Send,                a[i][j] = sc.nextInt();{Enter}
Send,             }{Enter}
Send,         }{Enter}
Send, {Enter}
Send,         for (int i = 0; i < a.length; i++) {;{Enter}
Send,             for (int j = 0; j < a[i].length; j++) {;{Enter}
Send,                 System.out.print(a[i][j]+ " ");{Enter}
Send,             }{Enter}
Send,             System.out.println();{Enter}
Send,         }{Enter}
Send,     }{Enter}
Send, }{Enter}
Return

; Hotkey for Ctrl + 8 to type the IrregularArray snippet
^8::
Send, package class4;{Enter}
Send, {Enter}
Send, public class IrregularArray {;{Enter}
Send,     public static void main(String[] args) {;{Enter}
Send,         int[][] irreg2D = new int[5][];{Enter}
Send,         irreg2D[0] = new int[4];{Enter}
Send,         irreg2D[3] = new int[]{2,4};{Enter}
Send,     }{Enter}
Send, }{Enter}
Return


^1::

; Type the Java code
SendInput, import java.util.Calendar;{Enter}
SendInput, {Enter}
SendInput, public class Account { ;{Enter}
SendInput,     private int id;{Enter}
SendInput,     private double balance;{Enter}
SendInput,     private double annualInterestRate;{Enter}
SendInput,     private Calendar dateCreated;{Enter}
SendInput, {Enter}
SendInput,     public Account() { ;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public Account(int id, double balance, double annualInterestRate) { ;{Enter}
SendInput,         this.id = id;{Enter}
SendInput,         this.balance = balance;{Enter}
SendInput,         this.annualInterestRate = annualInterestRate;{Enter}
SendInput,         dateCreated = Calendar.getInstance();{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public int getId() { ;{Enter}
SendInput,         return id;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public void setId(int id) { ;{Enter}
SendInput,         this.id = id;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public double getBalance() { ;{Enter}
SendInput,         return balance;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public void setBalance(double balance) { ;{Enter}
SendInput,         this.balance = balance;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public double getAnnualInterestRate() { ;{Enter}
SendInput,         return annualInterestRate;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public void setAnnualInterestRate(double annualInterestRate) { ;{Enter}
SendInput,         this.annualInterestRate = annualInterestRate;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public Calendar getDateCreated() { ;{Enter}
SendInput,         return dateCreated;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public double getMonthlyInterestRate(){ ;{Enter}
SendInput,         return annualInterestRate/12;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public double getMonthlyInterestAmount(){ ;{Enter}
SendInput,         return balance * getMonthlyInterestRate();{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public void deposit(double amount){ ;{Enter}
SendInput,         if(amount< 0){ ;{Enter}
SendInput,             System.out.println("Cannot deposit negative amount");{Enter}
SendInput,         }else { ;{Enter}
SendInput,             balance = balance + amount;{Enter}
SendInput,             System.out.println("Deposited "+amount+ " successfully");{Enter}
SendInput,         }{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public void withdraw(double amount){ ;{Enter}
SendInput,         if(amount<0){ ;{Enter}
SendInput,             System.out.println("Cannot withdraw negative amount");{Enter}
SendInput,         }else if(amount > balance){ ;{Enter}
SendInput,             System.out.println("Insufficient balance");{Enter}
SendInput,         }else{ ;{Enter}
SendInput,             balance = balance - amount;{Enter}
SendInput,             System.out.println("Withdrawal of "+amount+ " successful");{Enter}
SendInput,         }{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public static void myMethod(Account a){ ;{Enter}
SendInput, {Enter}
SendInput,     public static void main(String[] args) { ;{Enter}
SendInput,         Account a = new Account(1122, 20000, 0.045);{Enter}
SendInput,         a.withdraw(2500);{Enter}
SendInput,         a.deposit(3000);{Enter}
SendInput, {Enter}
SendInput,         System.out.println(a.getBalance());{Enter}
SendInput,         System.out.println(a.getMonthlyInterestRate());{Enter}
SendInput,         System.out.println(a.getDateCreated().getTime());{Enter}
SendInput, {Enter}
SendInput,         Account c = new SavingsAccount(1134, 10000,.05,"12321834234940");{Enter}
SendInput,         Account c2 = new CheckingAccount(123,10000,.05,6000);{Enter}
SendInput, {Enter}
SendInput,         ((SavingsAccount)c).getCreditBalance(5000);{Enter}
SendInput, {Enter}
SendInput,         myMethod(a);{Enter}
SendInput,         myMethod(c);{Enter}
SendInput,         myMethod(c2);{Enter}
SendInput,     }{Enter}
SendInput, }{Enter}
return

^2::


; Type the Java code
SendInput, import java.util.Calendar;{Enter}
SendInput, {Enter}
SendInput, public class SavingsAccount extends Account{{Enter}
SendInput,     private String carNumber;{Enter}
SendInput,     private Calendar expiryDate;{Enter}
SendInput, {Enter}
SendInput,     public SavingsAccount(int id, double balance, double annualInterestRate,String carNumber){{Enter}
SendInput,         super(id,balance,annualInterestRate);{Enter}
SendInput,         this.carNumber = carNumber;{Enter}
SendInput, {Enter}
SendInput,         Calendar c = Calendar.getInstance();{Enter}
SendInput,         c.add(Calendar.YEAR, 10);{Enter}
SendInput,         this.expiryDate = c;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput, {Enter}
SendInput,     public double getCreditBalance(double credit){{Enter}
SendInput,         if(credit > 5000) return 3 * getBalance();{Enter}
SendInput,         else return  2 * getBalance();{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public double getCreditbalance(){ {Enter}
SendInput,         return 2 * getBalance();{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public String getCarNumber() { {Enter}
SendInput,         return carNumber;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public Calendar getExpiryDate() { {Enter}
SendInput,         return expiryDate;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public static void main(String[] args) { {Enter}
SendInput,         SavingsAccount s = new SavingsAccount(1134, 10000,.05,"12321834234940");{Enter}
SendInput,         s.withdraw(1000);{Enter}
SendInput,         s.deposit(5000);{Enter}
SendInput, {Enter}
SendInput,         System.out.println(s.getMonthlyInterestAmount());{Enter}
SendInput,         System.out.println(s.getExpiryDate().getTime());{Enter}
SendInput,     }{Enter}
SendInput, }{Enter}
return

^3::


; Type the Java code
SendInput, public class CheckingAccount extends Account{{Enter}
SendInput,     private  double overdraftLimit;{Enter}
SendInput, {Enter}

SendInput, {Enter}
SendInput,     //method overloading  = when two methods inside the same class have the same name. They have diff arguments{Enter}
SendInput,     //method overriding = When we have two classes and we want to reimplement a parent class's method inside the child class.{Enter}
SendInput, {Enter}
SendInput,     public CheckingAccount(int id, double balance, double annualInterestRate, double overdraftLimit) { {Enter}
SendInput,         super(id, balance, annualInterestRate);{Enter}
SendInput,         this.overdraftLimit = overdraftLimit;{Enter}
SendInput,     }{Enter}
SendInput, {Enter}

SendInput, {Enter}
SendInput,     public void withdraw(double amount){ {Enter}
SendInput,         if(amount<0){ {Enter}
SendInput,             System.out.println("Cannot withdraw negative amount");{Enter}
SendInput,         }else if(amount > getBalance() - 500){ {Enter}
SendInput,             System.out.println("Insufficient balance");{Enter}
SendInput,         }else{ {Enter}
SendInput,             setBalance(getBalance() - amount);{Enter}
SendInput,             System.out.println("Withdrawal of "+amount+ " successful");{Enter}
SendInput,         }{Enter}
SendInput,     }{Enter}
SendInput, {Enter}
SendInput,     public static void main(String[] args) { {Enter}
SendInput,         Account c = new CheckingAccount(123,10000,.05,6000);{Enter}
SendInput,         c.withdraw(9700);{Enter}
SendInput,     }{Enter}
SendInput, }{Enter}
return