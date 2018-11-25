CREATE DATABASE flashpool CHARACTER SET utf8 COLLATE utf8_general_ci;  /*����flashpool���ݿ�*/
USE flashpool;   			/*ʹ��flashpool���ݿ�*/
/*����*/
CREATE TABLE py(
	PY_id int PRIMARY KEY AUTO_INCREMENT, /*���Ѻ�*/
    PY_name varchar(15) NOT NULL,         /*�û���*/
    PY_mobile varchar(11) NOT NULL,       /*�ֻ���*/  
    PY_pw varchar(20) NOT NULL,    		  /*���룺����ע���Զ�����*/
    PY_status varchar(10) NOT NULL 		  /*״̬��ע���˻���Ĭ��Ϊ"��ע��"*/
);
/*������Ϣ*/
CREATE TABLE py_info(
	PY_id int PRIMARY KEY,      /*���Ѻ�*/
    PY_sex nchar(3),            /*�Ա�*/
	PY_real_name varchar(30), 	/*��ʵ����*/
    PY_email varchar(320), 		/*��������*/
    PY_nickname varchar(24),	/*�ǳ�*/
    PY_avatar varchar(100), 	/*ͷ��ͼƬ��ַ*/
    PY_intro varchar(100),	 	/*���˼���ַ*/
    PY_city varchar(15), 		/*��ס��*/
    PY_birth date,  			/*��������*/
    PY_career varchar(30), 		/*ְҵ*/
    PY_topic_num int, 			/*��ע������*/
    PY_note_num int, 			/*������*/
    FOREIGN KEY(PY_id) REFERENCES py(PY_id)
);
/*����Ա*/
CREATE TABLE admin(
	A_id int PRIMARY KEY AUTO_INCREMENT, 	/*����Ա��*/
    A_name varchar(15) NOT NULL, 			/*�û���*/
    A_pw varchar(20) NOT NULL, 				/*����*/
    A_nickname varchar(20), 				/*�ǳ�*/
    A_type nchar(1) 						/*����(A/B/C)*/
);
/*��������Ա*/
CREATE TABLE super_admin(
	SA_id int PRIMARY KEY AUTO_INCREMENT, /*��������Ա��*/
    SA_name varchar(15) NOT NULL, 		  /*�û���*/
    SA_pw varchar(20) NOT NULL, 		  /*����*/
    SA_nickname varchar(24) 			  /*�ǳ�*/
);
/*����*/
CREATE TABLE note(
	N_id int, 							/*���Ӻ�*/
    PY_id int,							/*���Ѻ�*/
    T_id int,							/*�����*/
    N_title varchar(90) NOT NULL,  		/*���ӱ���*/
    N_text_loc varchar(255),			/*��������*/
    N_img_loc varchar(255),				/*������ͼ��ַ*/
    N_attach_loc varchar(255),			/*���Ӹ�����ַ*/
	FOREIGN KEY(PY_id) REFERENCES py(PY_id),
    FOREIGN KEY(T_id) REFERENCES topic(T_id),
    PRIMARY KEY(N_id, PY_id, T_id)
);
/*����*/
CREATE TABLE topic(
	T_id int PRIMARY KEY AUTO_INCREMENT, 	/*�����*/
    T_name varchar(30) NOT NULL,   			/*������*/
    T_intro_loc varchar(255), 				/*����ַ*/
    T_introImg_loc	varchar(255),  		 	/*���ͼ��ַ*/
    T_follow_num int,						/*��ע����*/
    T_note_num int                			 /*����������*/
);
/*����*/
CREATE TABLE comment(
	C_id int AUTO_INCREMENT,				/*���ۺ�*/
    PY_id int,								/*���Ѻ�*/
    C_text_loc varchar(255) NOT NULL,		/*�������ݵ�ַ*/
    FOREIGN KEY(PY_id) REFERENCES py(PY_id),
    PRIMARY KEY(C_id, PY_id)

);
/*��ע*/
CREATE TABLE follow(
	T_id int,								/*�����*/
    PY_id int,								/*���Ѻ�*/
    FOREIGN KEY(T_id) REFERENCES topic(T_id),
    FOREIGN KEY(PY_id) REFERENCES py(PY_id),
    PRIMARY KEY(T_id, PY_id)
);
/*�ظ�*/
CREATE TABLE reply(
	R_id int AUTO_INCREMENT,				/*�ظ���*/
    N_id int,								/*���Ӻ�*/
    PY_id int,								/*���Ѻ�*/
    R_text_loc varchar(255) NOT NULL,		/*�ظ����ݵ�ַ*/
    FOREIGN KEY(N_id) REFERENCES note(N_id),
    FOREIGN KEY(PY_id) REFERENCES py(PY_id),
    PRIMARY KEY(R_id, N_id, PY_id)
);
INSERT INTO super_admin(SA_id, SA_name, SA_pw, SA_nickname)
	VALUES(1, 'ajuanjuan', '12345', '�����');
INSERT INTO super_admin(SA_id, SA_name, SA_pw, SA_nickname)
	VALUES(2, 'yufeng760', '12345', '������'); 
INSERT INTO super_admin(SA_id, SA_name, SA_pw, SA_nickname)
	VALUES(3, 'rainsilver', '12345', '�����'); 
	



