package com.gondo.login.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
/*
   키필드    		idx  		number
   사용자아이디 	userid		varchar
   사용자비밀번호 	password	varchar
   사용자이름		username	varchar
   사용자별명       nickname	varchar
   사용자이메일     email		varchar
   우편번호			zipcode		varchar
   주소 1			address1	varchar
   주소 2			address2	varchar
   인증여부			use			char	  -- 0(미인증), 1(인증)
 */

@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserVO {
	private int idx;
	private String userid;
	private String username;
	private String nickname;
	private String password;
	private String email;
	private String zipcode;
	private String address1;
	private String address2;
	private String use;
}
