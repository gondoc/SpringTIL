/*
public class UserVO {
	private int user_idx;
	private String user_id;
	private String user_password;
	private String user_nickName;
	private String user_image;
	private String user_email;
}
*/
CREATE TABLE USER(
	user_idx int PRIMARY KEY auto_increment,
	user_id varchar(20) NOT NULL,
	user_password varchar(50) NOT NULL,
	user_nickName varchar(8) NOT NULL,
	user_image varchar(100) NOT NULL DEFAULT 'user/default-user.png',
	user_email varchar(50) not null
);

select * from user;

insert into `user`
(user_id,user_password,user_nickName,user_image,user_email) values
('admin','123','관리자','','chlehddh8062@gmail.com');


