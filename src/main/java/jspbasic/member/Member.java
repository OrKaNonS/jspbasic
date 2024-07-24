package jspbasic.member;

public class Member  {
	
	private String mid;		// 번호
	private String mpw;		// 제목
	
	public Member() {
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

	public Member(String mid, String mpw) {
		super();
		this.mid = mid;
		this.mpw = mpw;
	}

	@Override
	public String toString() {
		return "Member [mid=" + mid + ", mpw=" + mpw + "]";
	}

	
	
}