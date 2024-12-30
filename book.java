package class4;

public class Book {
    public  String title;
    String author;
    private double price;
    private int ISBN;
    private int noOfCopies;

    public int getNoOfCopies() {
        return noOfCopies;
    }

    public void setNoOfCopies(int noOfCopies) {
        this.noOfCopies = noOfCopies;
    }

    public int getISBN() {
        return ISBN;
    }

    public void setISBN(int ISBN) {
        this.ISBN = ISBN;
    }

    public double getPrice(){
        return price;
    }

    public void setPrice(double price){
        this.price = price;
    }

    public Book(String title, String author, double price, int ISBN, int noOfCopies) {
        this.title = title;
        this.author = author;
        this.price = price;
        this.ISBN = ISBN;
        this.noOfCopies = noOfCopies;
    }

    public void showDetails(){
        System.out.println("Title ="+ title);
        System.out.println("Author ="+ author);
        System.out.println("ISBN ="+ ISBN);
        System.out.println("Price ="+ price);
        System.out.println("Copies Available ="+ noOfCopies);

    }

    public double sellBook(int n){
        noOfCopies -= n;

        double sale = n * price;
        System.out.println("Total Price : "+ sale);
        return sale;
    }

    public void giveDiscount(double x){
        price -= x*price/100;
    }
}
________________________________________________________________________________________________________________________________

package class4;

public class Library {
    Book[] collection = new Book[100];
    int idx = 0;

    public void createBook(String t, String a, int i, double p, int n){
        Book b = new Book(t,a,p,i,n);
        collection[idx] = b;
        idx++;
    }

    public double sellBook(String name, int n){
        for(int i = 0; i<idx; i++){
            Book b = collection[i];
            if(b.title == name) {
                //found
                if(n <= b.getNoOfCopies()){
                    //sell
                    b.setNoOfCopies(b.getNoOfCopies() - n);
                    double profit = n * b.getPrice();
                    System.out.println("Total price =" +profit);
                    return profit;
                }else {
                    //not enough stock
                    System.out.println("Not enough Copies");
                }
            }else{
                //not found
                System.out.println("The book does not exist");
            }
        }
        return  0;
    }

    public void reorderBook(String name, int n){
        for(int i = 0; i<idx; i++){
            Book b = collection[i];
            if(b.title == name) {
                //found
                b.setNoOfCopies(b.getNoOfCopies()+n);
                System.out.println("Restocking successful");
                return;
            }
        }

        System.out.println("The book does not exist");

    }

    public void showAllBooks(){
        for (int i = 0 ; i<idx; i++){
            System.out.println("-------------------");
            collection[i].showDetails();
            System.out.println("-------------------");
        }
    }

    public static void main(String[] args) {
        Library l = new Library();

        l.createBook("Ikigai","James Cameron",347543957,1000,100);
        l.createBook("The Great Gatsby","Chris Wallace",345435,1800,15);
        l.showAllBooks();

        l.sellBook("Ikigai",20);
        l.reorderBook("The Great Gatsby",20);

        l.showAllBooks();

    }
}
____________________________________________________________________________________________________________________________
package class4;

import java.util.Scanner;

public class Test {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String t = sc.nextLine();
        String a = sc.nextLine();
        double p = sc.nextDouble();
        int i = sc. nextInt();
        int n = sc.nextInt();

        Book b1 = new Book(t,a,p,i,n);
        System.out.println(b1.getPrice());
        b1.setPrice(2000);

        t = sc.nextLine();
        a = sc.nextLine();
        p = sc.nextDouble();
        i = sc. nextInt();
        n = sc.nextInt();


        Book b2 = new Book(t,a,p,i,n);

        b1.sellBook(5);
        b1.giveDiscount(10);
        b1.sellBook(5);
    }
}
