public class Employee extends User {

    private int employeeID;

    public Employee(String name, String email, String password, int employeeID) {
        super(name,email,password);
        this.employeeID=employeeID;
    }

}
