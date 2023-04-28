package site.metacoding.firstapp.web;

import org.h2.schema.Domain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import site.metacoding.firstapp.domain.Product;
import site.metacoding.firstapp.domain.ProductRepository;

@Controller
public class ProductController {

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/product")
    public String list(Domain domain) {

        return "productList";
    }

    @GetMapping("/product/{id}")
    public String detail() {
        return "productDetail";
    }

    @GetMapping("/product/{id}/updateForm")
    public String updateForm() {
        return "productUpdateForm";
    }

    @GetMapping("/product/insertForm")
    public String insertForm() {
        return "productInsertForm";
    }

    @PostMapping("/product/insert")
    public String insert(String name, Integer price, Integer qty) {

        Product product = new Product();
        product.setName(name);
        product.setPrice(price);
        product.setQty(qty);

        int result = productRepository.insert(product);
        if (result != 1) {
            System.out.println("상품등록 실패");
        }

        return "redirect:/product";
    }
}
