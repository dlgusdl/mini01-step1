package site.metacoding.firstapp.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductRepository {
    public Product findById(Integer id);

    public List<Product> findAll();

    public int insert(Product product);

    public int update(Product product);

    public Product findByName(String name);

    public int deleteById(Integer id);

    // @Param으로 받는 방법
    // public int update(@Param("id") Integer id, @Param("name") String name,
    // @Param("price") Integer price,
    // @Param("qty") Integer qty);
}
