package site.metacoding.firstapp.domain;

import java.sql.Timestamp;

import lombok.Getter;

@Getter
public class Product {
    private Integer productId;
    private String productName;
    private Integer productPrice;
    private Integer productQty;
    private Timestamp createdAt;

    public void setName(String name) {
    }

    public void setPrice(Integer price) {
    }

    public void setQty(Integer qty) {
    }

}
