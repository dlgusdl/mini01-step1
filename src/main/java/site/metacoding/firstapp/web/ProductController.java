package site.metacoding.firstapp.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

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
