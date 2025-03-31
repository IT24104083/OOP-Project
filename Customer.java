public class Customer extends User {

    private int userID;

    public Customer(String name, String email, String password,int userID) {
        super(name,email,password);
        this.userID=userID;

    }

}
