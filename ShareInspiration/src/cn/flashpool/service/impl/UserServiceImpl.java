package cn.flashpool.service.impl;

import org.springframework.transaction.annotation.Transactional;

import cn.flashpool.dao.UserDao;
import cn.flashpool.domain.User;
import cn.flashpool.service.UserService;
import cn.flashpool.utils.UUIDUtils;



@Transactional
public class UserServiceImpl implements UserService{
	
	private UserDao ud;

	//ͨ���û�����ѯ�û�
	public User findByUsername(String username) {
		return ud.findByUsername(username);
	}
	
	//�û�ע��
	@Override
	public void save(User user) {
		//����״̬
		user.setUserState(0);//0�����û��Ѽ��� 1�����û�δ����
		//���ɼ�����
		//����
		ud.save(user);
	}

	public void setUd(UserDao ud) {
		this.ud = ud;
	}	

	
}
