package dto;

public class OrderDTO {

	private int orderNo;
	private String orderId;
	private int orderProduct;
	private int orderCount;
	private String orderDate;
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public int getOrderProduct() {
		return orderProduct;
	}
	public void setOrderProduct(int orderProduct) {
		this.orderProduct = orderProduct;
	}
	
	public void setOrderProduct(String orderProduct) {
		if(orderProduct != null) {
			this.orderProduct = Integer.parseInt(orderProduct);
		}		
	}
	
	public int getOrderCount() {
		return orderCount;
	}
	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}
	
	public void setOrderCount(String orderCount) {
		if(orderCount != null) {
			this.orderCount = Integer.parseInt(orderCount);	
		}		
	}
	
	
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	
	@Override
	public String toString() {
		return "OrderDTO [orderNo=" + orderNo + ", orderId=" + orderId + ", orderProduct=" + orderProduct
				+ ", orderCount=" + orderCount + ", orderDate=" + orderDate + "]";
	}
	
	
	
}