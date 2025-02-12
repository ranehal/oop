
^Down:: ; Ctrl+Down hotkey
ExitApp
Return

Up:: ; Up hotkey
reload
Return

^1:: ; Ctrl+1 hotkey
Send, class WrongNameException extends Exception {{`r`n
Send,     public WrongNameException(String i) {`r`n
Send,         super(i.replace(i.charAt(0) ,' '));// (i)`r`n
Send,     }`r`n
Send, }`r`n
Send, import java.util.Scanner;`r`n
Send, `r`n
Send, public class main {`r`n
Send, `r`n
Send,     public static void main(String[] args) throws WrongNameException{`r`n
Send,         String i ="";`r`n
Send,         try {`r`n
Send,             Scanner sc = new Scanner(System.in);`r`n
Send,             i = sc.nextLine();`r`n
Send,             if ((i.charAt(0) >= 48) && (i.charAt(0) <= 57)) {`r`n
Send,                 throw new WrongNameException(i);`r`n
Send,             }`r`n
Send,             // If no exception, print the name`r`n
Send,             System.out.println(i);`r`n
Send,         } catch (Exception e) {`r`n
Send,             //e.printStackTrace();`r`n
Send,             //i = i.replace(i.charAt(0) ,' ');`r`n
Send, `r`n
Send,             System.out.println("hiiiiiiii");`r`n
Send,             System.out.println(e.getMessage());`r`n
Send,         }`r`n
Send,     }`r`n
Send, }`r`n
Return

^2:: ; Ctrl+2 hotkey
Send, import java.io.`r`n
Send, import java.util.ArrayList;`r`n
Send, import java.util.Collections;`r`n
Send, import java.util.Comparator;`r`n
Send, public class Main{`r`n
Send, static ArrayList<Product> productList = new ArrayList<>();`r`n
Send, Collections.sort(numbers);//asc`r`n
Send, list.sort(Comparator.reverseOrder())`r`n
Send, public static ArrayList<Product> getProductList() { `r`n
Send, return productList;`r`n
Send, }`r`n
Send, public static void setProductList(ArrayList<Product> productList) { `r`n
Send, Main.productList = productList;`r`n
Send, }`r`n
Send, public static void main(String[] args) { `r`n
Send, try { `r`n
Send, File file = new File("src/Product.txt");`r`n
Send, if (?file.exists()) { `r`n
Send, System.out.println("Product.txt file not found?");`r`n
Send, return;`r`n
Send, }`r`n
Send, BufferedReader br = new BufferedReader(new FileReader("src/Product.txt"));`r`n
Send, String a;`r`n
Send, while ((s = br.readLine())?= null){ `r`n
Send, //System.out.println(s);`r`n
Send, String[] p = s.split(",");`r`n
Send, Product product = new Product(p[0].trim(),p[1] ,Double.parseDouble(p[2]) ,Integer.parseInt(p[3]) , "None");`r`n
Send, productList.add(product);`r`n
Send, }`r`n
Send, br.close();`r`n
Send, } catch (IOException e) { `r`n
Send, e.getMessage();`r`n
Send, }`r`n
Send, try { `r`n
Send, Collections.sort(productList, new Comparator<Product>() { `r`n
Send, @Override`r`n
Send, public int compare(Product o1, Product o2) { `r`n
Send, return Double.compare(o1.getPrice(), o2.getPrice());`r`n
Send, return s1.name.compareTo(s2.name);`r`n
Send, }`r`n
Send, });`r`n
Send, }`r`n
Send, }`r`n
return
^3:: ; Ctrl+3 hotkey
Send, BufferedWriter writer = new BufferedWriter(new FileWriter("src/NewProduct.txt")); `r`n
Send, for (Product pr : productList) { `r`n
Send, writer.write(pr.toString() + "\n");`r`n
Send, }`r`n
Send, writer.close();`r`n
Send, } catch (IOException e) { `r`n
Send, e.printStackTrace();`r`n
Send, }`r`n
Send, if (productList.isEmpty()) { `r`n
Send, System.out.println("The product list is empty. No operations can be performed.");`r`n
Send, }`r`n
Send, else{ `r`n
Send, for (Product product : productList) { `r`n
Send, System.out.println(product);`r`n
Send, }`r`n
Send, gui s = new gui();`r`n
Send, }`r`n
Send, }`r`n
Return
^4:: ; Ctrl+Shift+4 hotkey
Send, import java.awt.*; `r`n
Send, import java.awt.event.ActionEvent;`r`n
Send, import java.awt.event.ActionListener;`r`n
Send, public class gui implements ActionListener { `r`n
Send, `r`n
Send, public gui() { `r`n
Send, JFrame frame = new JFrame("Product Search");`r`n
Send, JTextField sfld = new JTextField(20); // Search field`r`n
Send, JButton sbtn = new JButton("Search"); // Search button`r`n
Send, JTextArea output = new JTextArea(10, 30); // Result area`r`n
Send, output.setEditable(false);`r`n
Send, sbtn.addActionListener(new ActionListener() { `r`n
Send, public void actionPerformed(ActionEvent e) { `r`n
Send, String snme = sfld.getText();`r`n
Send, for (Product prod : products) { `r`n
Send, if (prod.n.equalsIgnoreCase(snme)) { `r`n
Send, output.setText(prod.toString());`r`n
Send, return;`r`n
Send, }`r`n
Send, }`r`n
Send, output.setText("Product not found.");`r`n
Send, }`r`n
Send, });`r`n
Send, }`r`n
Send, }`r`n
Return
^5:: ; Ctrl+5 hotkey
Send, JPanel panel = new JPanel();`r`n
Send, panel.add(sfld);`r`n
Send, panel.add(sbtn);`r`n
Send, frame.add(panel, "North");`r`n
Send, frame.add(new JScrollPane(output), "Center");`r`n
Send, frame.pack();`r`n
Send, frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);`r`n
Send, frame.setVisible(true);`r`n
Send, `r`n
Send, // Sort and print`r`n
Send, Collections.sort(products);`r`n
Send, System.out.println("Sorted Products by Price:");`r`n
Send, for (Product prod : products) { `r`n
Send, System.out.println(prod);`r`n
Send, }`r`n
Send, @Override`r`n
Send, public void actionPerformed(ActionEvent e) { `r`n
Send, String s = input.getText();`r`n
Send, try { `r`n
Send, boolean found = false;`r`n
Send, for (Product pr : Main.getProductList()) { `r`n
Send, if (pr.getName().equals(s)) { `r`n
Send, output.setText("RESULTS: "+pr.toString());`r`n
Send, found = true;`r`n
Send, break;`r`n
Send, }`r`n
Send, if(?found) { `r`n
Send, output.setText("Not found");`r`n
Send, }`r`n
Send, }`r`n
Send, } catch (Exception _) { `r`n
Send, }`r`n
Send, }`r`n
Return
^6:: ; Ctrl+6 hotkey
Send, class Product { `r`n
Send, public String name;`r`n
Send, private String id;`r`n
Send, private double price;`r`n
Send, private int quantity;`r`n
Send, private String brand;`r`n
Send, `r`n
Send, // Constructor`r`n
Send, public Product(String name, String id, double price, int quantity, String brand) { `r`n
Send, this.name = name;`r`n
Send, this.id = id;`r`n
Send, this.price = price;`r`n
Send, this.quantity = quantity;`r`n
Send, this.brand = brand;`r`n
Send, }`r`n
Send, `r`n
Send, @Override`r`n
Send, public String toString() { `r`n
Send, return name + ", " + id + ", " + price + ", " + quantity + ", " + brand;`r`n
Send, }`r`n
Send, }`r`n
Return
^7:: ; Ctrl+7 hotkey
Send, interface Place { `r`n
Send, boolean isMagical();`r`n
Send, double expectedDistance();`r`n
Send, }`r`n
Send, `r`n
Send, public abstract class //*implements Place extends Cupboard*// Cupboard { `r`n
Send, protected int visitedPlace;`r`n
Send, `r`n
Send, public Cupboard(int visitedPlace) { `r`n
Send, this.visitedPlace = visitedPlace;`r`n
Send, }`r`n
Send, `r`n
Send, public abstract void travel(MagicalPlace p);`r`n
Send, `r`n
Send, @Override`r`n
Send, public String toString() { `r`n
Send, return "Visired Places: " + visitedPlace;`r`n
Send, }`r`n
Send, @Override`r`n
Send, public void processPayment() { `r`n
Send, if (debitBalance >= super.getAmount()) { `r`n
Send, debitBalance -= super.getAmount();`r`n
Send, }`r`n
Send, System.out.println("PayPal Payment Successful");`r`n
Send, }`r`n
Send, }`r`n
Return