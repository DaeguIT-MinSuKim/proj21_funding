package proj21_funding.dto;

public class AddPrjOption {
	private Project prjNo;
	private String addOptName;
	private int addOptPrice;
	private String addOptContent;
	
	public AddPrjOption() {}
	


	public AddPrjOption(String addOptName, int addOptPrice, String addOptContent) {
		this.addOptName = addOptName;
		this.addOptPrice = addOptPrice;
		this.addOptContent = addOptContent;
	}



	public AddPrjOption(Project prjNo, String addOptName, int addOptPrice, String addOptContent) {
		this.prjNo = prjNo;
		this.addOptName = addOptName;
		this.addOptPrice = addOptPrice;
		this.addOptContent = addOptContent;
	}

	public Project getPrjNo() {
		return prjNo;
	}

	public void setPrjNo(Project prjNo) {
		this.prjNo = prjNo;
	}

	public String getAddOptName() {
		return addOptName;
	}

	public void setAddOptName(String addOptName) {
		this.addOptName = addOptName;
	}

	public int getAddOptPrice() {
		return addOptPrice;
	}

	public void setAddOptPrice(int addOptPrice) {
		this.addOptPrice = addOptPrice;
	}

	public String getAddOptContent() {
		return addOptContent;
	}

	public void setAddOptContent(String addOptContent) {
		this.addOptContent = addOptContent;
	}
	

	@Override
	public String toString() {
		return String.format("AddPrjOption [prjNo=%s, addOptName=%s, addOptPrice=%s, addOptContent=%s]", prjNo,
				addOptName, addOptPrice, addOptContent);
	}
	
	
	
	

}