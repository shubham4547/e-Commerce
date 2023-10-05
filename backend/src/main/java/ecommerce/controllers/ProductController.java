package ecommerce.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import ecommerce.entities.Product;
import ecommerce.models.ProductPagedResponseDTO;
import ecommerce.models.ProductResponseDTO;
import ecommerce.models.Response;
import ecommerce.services.CategoryService;
import ecommerce.services.ProductService;

@CrossOrigin
@RestController
@RequestMapping("/api/products")
public class ProductController {
	@Autowired private ProductService pservice;
	@Autowired CategoryService cservice;
	
	@PostMapping
	public ResponseEntity<?> saveProduct(Product product,MultipartFile pic) {
		pservice.addProduct(product,pic);
		return Response.success("Product Saved successfully");
	}
	
	@PutMapping("{id}")
	public ResponseEntity<?> updateProduct(@RequestBody Product product,@PathVariable("id") int id) {
		product.setProdid(id);
		pservice.updateProduct(product);
		return Response.success("Product updated successfully");		
	}
	
	@GetMapping("{id}")
	public Product findBook(@PathVariable("id")int id) {
		Product book=pservice.findProductById(id);
		return book;
	}
	
	@GetMapping
	public ResponseEntity<?> findAllProducts(Optional<Integer> sellerid) {
		List<ProductResponseDTO> result = new ArrayList<ProductResponseDTO>();
		if(sellerid.isPresent()) {
			System.out.println(sellerid);
			for(Product p : pservice.findProducts(sellerid.get())) {
				result.add(ProductResponseDTO.fromEntity(p));
			}
			
		}else {
			for(Product p : pservice.allProducts()) {
				result.add(ProductResponseDTO.fromEntity(p));
			}
		}
		
		return Response.success(result);
	}
	
	@GetMapping("/available")
	public List<Product> findAvailableBooks() {
		return pservice.allProducts();
	}
	
	@GetMapping("/paginated")
	public ResponseEntity<?> paginatedProducts(int page,int pagesize) {
		List<ProductResponseDTO> result = new ArrayList<ProductResponseDTO>();
		Page<Product> data=pservice.allProductsPaginated(page, pagesize);
		data.forEach(item-> {
			result.add(ProductResponseDTO.fromEntity(item));
		});
		ProductPagedResponseDTO resp=new ProductPagedResponseDTO();
		resp.setPagesize(pagesize);
		resp.setCurrent(page);
		resp.setTotal(data.getTotalElements());
		resp.setPlist(result);
		return Response.success(resp);
	}
	
	@GetMapping("cats/{id}")
	public List<Product> findByCategory(@PathVariable("id") int id) {
		List<Product> result = new ArrayList<Product>();
		for(Product b : pservice.categoryProducts(id)) {
			result.add(b);
		}
		return result;
	}
		
	
	@DeleteMapping("{id}")
	public ResponseEntity<?> deleteProduct(@PathVariable("id") int id) {
		pservice.deleteProduct(id);
		return Response.status(HttpStatus.OK);
	}
}
