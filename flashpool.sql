/*CREATE DATABASE flashpool;  创建flashpool数据库*/
USE flashpool;   			/*使用flashpool数据库*/
/*瀑友*/
CREATE TABLE user(
	U_id int PRIMARY KEY AUTO_INCREMENT, /*瀑友号*/
    U_name varchar(15) NOT NULL,         /*用户名*/
    U_mobile varchar(11) NOT NULL,       /*手机号*/  
    U_pw varchar(20) NOT NULL,    		  /*密码：快速注册自动生成*/
    U_status varchar(10) NOT NULL 		  /*状态：注册账户后默认为"已注册"*/
);


/*瀑友信息*/
CREATE TABLE user_info(
	U_id int PRIMARY KEY,      /*瀑友号*/
    U_sex nchar(3),            /*性别*/
	U_real_name varchar(30), 	/*真实姓名*/
    U_email varchar(320), 		/*电子邮箱*/
    U_nickname varchar(24),	/*昵称*/
    U_avatar varchar(100), 	/*头像图片地址*/
    U_intro text,	 	/*个人简介*/
    U_city varchar(15), 		/*居住地*/
    U_birth date,  			/*出生日期*/
    U_career varchar(30), 		/*职业*/
    U_topic_num int, 			/*关注话题数*/
    U_note_num int, 			/*发帖数*/
    FOREIGN KEY(U_id) REFERENCES user(U_id)
);
/*管理员*/
CREATE TABLE admin(
	A_id int PRIMARY KEY AUTO_INCREMENT, 	/*管理员号*/
    A_name varchar(15) NOT NULL, 			/*用户名*/
    A_pw varchar(20) NOT NULL, 				/*密码*/
    A_nickname varchar(20), 				/*昵称*/
    A_type nchar(1) 						/*类型(A/B/C)*/
);
/*超级管理员*/
CREATE TABLE super_admin(
	SA_id int PRIMARY KEY AUTO_INCREMENT, /*超级管理员号*/
    SA_name varchar(15) NOT NULL, 		  /*用户名*/
    SA_pw varchar(20) NOT NULL, 		  /*密码*/
    SA_nickname varchar(24) 			  /*昵称*/
);
/*话题*/
CREATE TABLE topic(
	T_id int PRIMARY KEY AUTO_INCREMENT, 	/*话题号*/
    T_name varchar(30) NOT NULL,   			/*话题名*/
    T_intro text, 						/*简介地址*/
    T_introImg_loc	varchar(255),  		 	/*简介图地址*/
    T_follow_num int,						/*关注人数*/
    T_note_num int                			 /*名下帖子数*/
);
/*帖子*/
CREATE TABLE note(
	N_id int, 							/*帖子号*/
    U_id int,							/*瀑友号*/
    T_id int,							/*话题号*/
    N_title varchar(90) NOT NULL,  		/*帖子标题*/
    N_text	text,						/*帖子正文*/
    N_img_loc varchar(255),				/*帖子配图地址*/
    N_attach_loc varchar(255),			/*帖子附件地址*/
    N_add_time datetime NOT NULL,		/*发表时间*/
	FOREIGN KEY(U_id) REFERENCES user(U_id),
    FOREIGN KEY(T_id) REFERENCES topic(T_id),
    PRIMARY KEY(N_id, U_id, T_id)
);

/*评论*/
CREATE TABLE comment(
	C_id int AUTO_INCREMENT,				/*评论号*/
    U_id int,								/*瀑友号*/
    C_text text NOT NULL,					/*评论内容*/
	C_add_time datetime NOT NULL,			/*发表时间*/
    FOREIGN KEY(U_id) REFERENCES user(U_id),
    PRIMARY KEY(C_id, U_id)

);
/*回复*/
CREATE TABLE reply(
	R_id int AUTO_INCREMENT,				/*回复号*/
    N_id int,								/*帖子号*/
    U_id int,								/*瀑友号*/
    R_text text NOT NULL,					/*回复内容*/
	C_add_time datetime NOT NULL,			/*发表时间*/
    FOREIGN KEY(N_id) REFERENCES note(N_id),
    FOREIGN KEY(U_id) REFERENCES user(U_id),
    PRIMARY KEY(R_id, N_id, U_id)
);
/*关注*/
CREATE TABLE follow(
	T_id int,								/*话题号*/
    U_id int,								/*瀑友号*/
    FOREIGN KEY(T_id) REFERENCES topic(T_id),
    FOREIGN KEY(U_id) REFERENCES user(U_id),
    PRIMARY KEY(T_id, U_id)
);

INSERT INTO super_admin(SA_id, SA_name, SA_pw, SA_nickname)
	VALUES(1, 'ajuanjuan', '12345', '李淑娟');
INSERT INTO super_admin(SA_id, SA_name, SA_pw, SA_nickname)
	VALUES(2, 'yufeng760', '12345', '王鹏飞'); 
INSERT INTO super_admin(SA_id, SA_name, SA_pw, SA_nickname)
	VALUES(3, 'rainsilver', '12345', '曹振飞'); 
	




