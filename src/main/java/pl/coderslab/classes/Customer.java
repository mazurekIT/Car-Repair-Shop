package pl.coderslab.classes;

import java.sql.Date;

public class Customer {

    private int id=0;
    private String name;
    private String surname;
    private Date birthDate;
    private int customerPhone;

    public Customer(String name, String surname, Date birthDate, int customerPhone) {

        this.name = name;
        this.surname = surname;
        this.birthDate = birthDate;
        this.customerPhone = customerPhone;
    }

    public int getId() {

        return id;
    }

    public String getName() {

        return name;
    }

    public void setName(String name) {

        this.name = name;
    }

    public String getSurname() {

        return surname;
    }

    public void setSurname(String surname) {

        this.surname = surname;
    }

    public Date getBirthDate() {

        return birthDate;
    }

    public void setBirthDate(Date birthDate) {

        this.birthDate = birthDate;
    }

    public int getCustomerPhone() {

        return customerPhone;
    }

    public void setCustomerPhone(int customerPhone) {

        this.customerPhone = customerPhone;
    }

    public void setId(int id) {

        this.id = id;
    }

}
