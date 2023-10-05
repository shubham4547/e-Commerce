package ecommerce.daos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ecommerce.entities.Product;

@Repository
public interface BookDao extends JpaRepository<Product, Integer> {
	
	List<Product> findByCategoryId(int catid);
}
