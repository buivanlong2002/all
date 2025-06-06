package com.example.productmanagement.service;

import com.example.productmanagement.model.Product;
import com.example.productmanagement.service.ProductService;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    private static List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1, "iPhone 15", 29990000, "Điện thoại Apple cao cấp", "Apple"));
        products.add(new Product(2, "Samsung Galaxy S23", 24990000, "Điện thoại cao cấp Samsung", "Samsung"));
        products.add(new Product(3, "Xiaomi 13 Pro", 18990000, "Flagship giá tốt", "Xiaomi"));
    }

    @Override
    public List<Product> getAllProducts() {
        return new ArrayList<>(products);
    }

    @Override
    public Product getProductById(int id) {
        return products.stream()
                .filter(p -> p.getId() == id)
                .findFirst()
                .orElse(null);
    }

    @Override
    public void addProduct(Product product) {
        products.add(product);
    }

    @Override
    public void updateProduct(Product updatedProduct) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == updatedProduct.getId()) {
                products.set(i, updatedProduct);
                return;
            }
        }
    }

    @Override
    public void deleteProduct(int id) {
        products.removeIf(p -> p.getId() == id);
    }

    @Override
    public List<Product> searchProductsByName(String name) {
        List<Product> result = new ArrayList<>();
        for (Product product : products) {
            if (product.getName().toLowerCase().contains(name.toLowerCase())) {
                result.add(product);
            }
        }
        return result;
    }
}

