package com.example.customermanagement.service;

import com.example.customermanagement.model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService{

    private static Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1, "Nam", "nam@example.com", "Ha Noi"));
        customers.put(2, new Customer(2, "Linh", "linh@example.com", "Hai Phong"));
        customers.put(3, new Customer(3, "Khoa", "khoa@example.com", "Da Nang"));
        customers.put(4, new Customer(4, "Trang", "trang@example.com", "Can Tho"));
        customers.put(5, new Customer(5, "Minh", "minh@example.com", "Ho Chi Minh City"));
        customers.put(6, new Customer(6, "Huyen", "huyen@example.com", "Hue"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id, customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}

