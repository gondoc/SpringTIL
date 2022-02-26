package com.gondo.login.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
/*
 * private int user_idx;
	private String user_id;
	private String user_password;
	private String user_nickName;
	private String user_image;
	private String user_email;
 */

@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserVO {
	private int user_idx;
	private String user_id;
	private String user_password;
	private String user_nickName;
	private String user_image;
	private String user_email;
}
