package site.metacoding.firstapp.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import site.metacoding.firstapp.model.Product;
import site.metacoding.firstapp.model.ProductRepository;

@Controller
public class ProductController {

    @Autowired
    private ProductRepository productRepository;

    @GetMapping({ "/product", "/" })
    public String List(Model model) {
        // List<Product> productList = productRepository.findAll();
        // domain.
        List<Product> productList = productRepository.findAll();
        model.addAttribute("productList", productList);

        return "productList";
    }

    @GetMapping("/product/{id}")
    public String detail(@PathVariable Integer id, Model model) {
        Product product = productRepository.findById(id);
        model.addAttribute("detail", productRepository.findById(id));
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
