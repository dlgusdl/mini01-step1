package site.metacoding.firstapp.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
        model.addAttribute("detail", product);
        return "productDetail";
    }

    @GetMapping("/product/insert")
    public String insertForm() {

        return "product/insert";
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

    @GetMapping("/product/{id}/updateForm")
    public String productUpdate(@PathVariable Integer id, Model model) {
        Product product = productRepository.findById(id);
        model.addAttribute("product", product);

        return "productUpdate";
    }

    // 상품 중복체크 컨트롤러
    @PostMapping("/productinsert/ckeckName")
    public ResponseEntity<?> checkProductName(@RequestParam String name) {
        Product productName = productRepository.findByName(name);
        if (productName != null) {
            return new ResponseEntity<>(true, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<>(true, HttpStatus.OK);
    }

    @PostMapping("/product/{id}/update")
    public String update(@PathVariable Integer id, Model model, String name,
            Integer price, Integer qty) {
        Product p = productRepository.findById(id);
        model.addAttribute("product", p);

        System.out.println("P 아이디 " + p.getId());
        System.out.println("P 이름 " + p.getName());
        System.out.println("P 가격 " + p.getPrice());
        System.out.println("P 재고 " + p.getQty());

        p.setName(name);
        p.setPrice(price);
        p.setQty(qty);
        System.out.println("데이터 담음");

        int result = productRepository.update(p);

        System.out.println("product 아이디 : " + p.getId());
        System.out.println("product 이름 : " + p.getName());
        System.out.println("product 가격 : " + p.getPrice());
        System.out.println("product 재고 : " + p.getQty());

        System.out.println("result : " + result);

        if (result != 1) {
            System.out.println("업데이트 실패");
            return "redirect:/product/" + id + "/updateForm";
        }

        System.out.println("업데이트 완료");
        return "redirect:/product/" + id;
    }

    @PostMapping("/product/{id}/delete")
    public String delete(@PathVariable Integer id) {
        int result = productRepository.deleteById(id);
        if (result != 1) {
            System.out.println("삭제 실패");
        }
        return "redirect:/product";
    }
}
