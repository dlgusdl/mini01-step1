package site.metacoding.firstapp.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductRepository {
    public Product findById(Integer productId);

    public List<Product> findAll();

    public int insert(Product product);

    public int update(Product product);

    public Product findByName(String productName);

    public int deleteById(Integer productId);
}
