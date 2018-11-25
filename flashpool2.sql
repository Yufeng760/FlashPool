CREATE DATABASE flashpool CHARACTER SET utf8 COLLATE utf8_general_ci;  /*创建flashpool数据库*/
USE flashpool;   			/*使用flashpool数据库*/
/*瀑友*/
CREATE TABLE py(
	PY_id int PRIMARY KEY AUTO_INCREMENT, /*瀑友号*/
    PY_name varchar(15) NOT NULL,         /*用户名*/
    PY_mobile varchar(11) NOT NULL,       /*手机号*/  
    PY_pw varchar(20) NOT NULL,    		  /*密码：快速注册自动生成*/
    PY_status varchar(10) NOT NULL 		  /*状态：注册账户后默认为"已注册"*/
);
/*瀑友信息*/
CREATE TABLE py_info(
	PY_id int PRIMARY KEY,      /*瀑友号*/
    PY_sex nchar(3),            /*性别*/
	PY_real_name varchar(30), 	/*真实姓名*/
    PY_email varchar(320), 		/*电子邮箱*/
    PY_nickname varchar(24),	/*昵称*/
    PY_avatar varchar(100), 	/*头像图片地址*/
    PY_intro varchar(100),	 	/*个人简介地址*/
    PY_city varchar(15), 		/*居住地*/
    PY_birth date,  			/*出生日期*/
    PY_career varchar(30), 		/*职业*/
    PY_topic_num int, 			/*关注话题数*/
    PY_note_num int, 			/*发帖数*/
    FOREIGN KEY(PY_id) REFERENCES py(PY_id)
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
/*帖子*/
CREATE TABLE note(
	N_id int, 							/*帖子号*/
    PY_id int,							/*瀑友号*/
    T_id int,							/*话题号*/
    N_title varchar(90) NOT NULL,  		/*帖子标题*/
    N_text_loc varchar(255),			/*帖子正文*/
    N_img_loc varchar(255),				/*帖子配图地址*/
    N_attach_loc varchar(255),			/*帖子附件地址*/
	FOREIGN KEY(PY_id) REFERENCES py(PY_id),
    FOREIGN KEY(T_id) REFERENCES topic(T_id),
    PRIMARY KEY(N_id, PY_id, T_id)
);
/*话题*/
CREATE TABLE topic(
	T_id int PRIMARY KEY AUTO_INCREMENT, 	/*话题号*/
    T_name varchar(30) NOT NULL,   			/*话题名*/
    T_intro_loc varchar(255), 				/*简介地址*/
    T_introImg_loc	varchar(255),  		 	/*简介图地址*/
    T_follow_num int,						/*关注人数*/
    T_note_num int                			 /*名下帖子数*/
);
/*评论*/
CREATE TABLE comment(
	C_id int AUTO_INCREMENT,				/*评论号*/
    PY_id int,								/*瀑友号*/
    C_text_loc varchar(255) NOT NULL,		/*评论内容地址*/
    FOREIGN KEY(PY_id) REFERENCES py(PY_id),
    PRIMARY KEY(C_id, PY_id)

);
/*关注*/
CREATE TABLE follow(
	T_id int,								/*话题号*/
    PY_id int,								/*瀑友号*/
    FOREIGN KEY(T_id) REFERENCES topic(T_id),
    FOREIGN KEY(PY_id) REFERENCES py(PY_id),
    PRIMARY KEY(T_id, PY_id)
);
/*回复*/
CREATE TABLE reply(
	R_id int AUTO_INCREMENT,				/*回复号*/
    N_id int,								/*帖子号*/
    PY_id int,								/*瀑友号*/
    R_text_loc varchar(255) NOT NULL,		/*回复内容地址*/
    FOREIGN KEY(N_id) REFERENCES note(N_id),
    FOREIGN KEY(PY_id) REFERENCES py(PY_id),
    PRIMARY KEY(R_id, N_id, PY_id)
);
INSERT INTO super_admin(SA_id, SA_name, SA_pw, SA_nickname)
	VALUES(1, 'ajuanjuan', '12345', '李淑娟');
INSERT INTO super_admin(SA_id, SA_name, SA_pw, SA_nickname)
	VALUES(2, 'yufeng760', '12345', '王鹏飞'); 
INSERT INTO super_admin(SA_id, SA_name, SA_pw, SA_nickname)
	VALUES(3, 'rainsilver', '12345', '曹振飞'); 
	



