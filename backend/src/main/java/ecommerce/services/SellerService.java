package ecommerce.services;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import ecommerce.entities.Seller;
import ecommerce.models.UpdateStatusDTO;

public interface SellerService {
	void registerSeller(Seller seller,MultipartFile photo);
	List<Seller> allSellers();
	Seller findById(int id);
	Seller validate(String userid,String pwd);
	void deleteSeller(int id);
	void updateStatus(UpdateStatusDTO dto);
}
