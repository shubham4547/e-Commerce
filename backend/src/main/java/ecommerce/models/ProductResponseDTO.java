package ecommerce.models;

import org.springframework.beans.BeanUtils;

import ecommerce.entities.Product;

public class ProductResponseDTO extends Product {

	private String sellerName;
	private int sellerId;

	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	public String getSellerName() {
		return sellerName;
	}
	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}
	
	public static ProductResponseDTO fromEntity(Product entity) {
		ProductResponseDTO dto = new ProductResponseDTO();
		dto.setSellerId(entity.getSeller().getId());
		dto.setSellerName(entity.getSeller().getName());
		BeanUtils.copyProperties(entity, dto);
		
		return dto;
	}
}
