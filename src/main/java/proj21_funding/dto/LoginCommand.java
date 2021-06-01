package proj21_funding.dto;

// 로그인시도시  정보확인
public class LoginCommand {
	private String userId;//회원계정
	private String userPw;//회원비밀번호
	private boolean rememberUserId; //아이디기억하기

	// getter & setter
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public boolean isRememberUserId() {
		return rememberUserId;
	}

	public void setRememberUserId(boolean rememberUserId) {
		this.rememberUserId = rememberUserId;
	}

}