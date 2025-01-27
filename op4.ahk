Down::
ExitApp
Return
Up::
reload
Return

!1::
Send, public interface Person { {Enter}
Send,     String S = " ";{Enter}
Send,     void calculateSalary();{Enter}
Send, }{Enter}
Send, public class Bangladeshi implements Person { {Enter}
Send, {Enter}
Send,     private String name;{Enter}
Send, {Enter}
Send,     public Bangladeshi(String address, double salary) { {Enter}
Send,         this.salary = salary;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     @Override{Enter}
Send,     public void calculateSalary() { {Enter}
Send,         System.out.println("Calc" + name);{Enter}
Send,     }{Enter}
Send, }{Enter}
Send, public class Main { {Enter}
Send,     public static void main(String[] args) { {Enter}
Send,         // Create an instance of Bangladeshi{Enter}
Send,         B p = new B("1", 1);{Enter}
Send,         person.calculateSalary();{Enter}
Send,     }{Enter}
Send, }{Enter}
Return








!2::
Send, import java.util.ArrayList;{Enter}
Send, Collections;{Enter}
Send, Comparator;{Enter}
Send, Objects;{Enter}
Send, public class CD { {Enter}
Send,     public static void main(String[] args) { {Enter}
Send,         ArrayList<Student> s = new ArrayList<>();{Enter}
Send, {Enter}
Send,         s.add(new Student("1",1));{Enter}
Send, {Enter}
Send,         for(int i = 0; i<s.size(); i++){ {Enter}
Send,             System.out.println(s.get(i));{Enter}
Send,         }{Enter}
Send,         System.out.println();{Enter}
Send,         Collections.sort(s, new Comparator<Student>() { {Enter}
Send,             @Override{Enter}
Send,             public int compare(Student o1, Student o2) { {Enter}
Send,                 if(o1.cgpa > o2.cgpa) return -1;{Enter}
Send,                 else  if (o1.cgpa < o2.cgpa) return 1;{Enter}
Send,                 else return 0;{Enter}
Send,             }{Enter}
Send, {Enter}
Send,             @Override{Enter}
Send,             public int compare(Student o1, Student o2) { {Enter}
Send,                 return -1 * o1.name.compareTo(o2.name);{Enter}
Send, //                return Integer.compare(o1.age, o2.age);{Enter}
Send,             }{Enter}
Send,         });{Enter}
Send,         for(Student x : s){ {Enter}
Send,             System.out.println(x);{Enter}
Send,         }{Enter}
Send, {Enter}
Send,     }{Enter}
Send, }{Enter}
Send, class Student{ {Enter}
Send,     String name;{Enter}
Send, {Enter}
Send,     public Student(String name) { {Enter}
Send,         this.name = name;{Enter}
Send,     }{Enter}
Send, {Enter}
Send,     @Override{Enter}
Send,     public String toString() { {Enter}
Send,         return "";{Enter}
Send,     }{Enter}
Send, }{Enter}
Return
