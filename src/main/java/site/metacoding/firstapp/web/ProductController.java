package site.metacoding.firstapp.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import site.metacoding.firstapp.domain.ProductRepository;

@Controller
public class ProductController {

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/product")
    public String list() {
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
}
