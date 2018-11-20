package cn.flashpool.action;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.flashpool.domain.User;
import cn.flashpool.service.UserService;
import cn.flashpool.utils.UUIDUtils;
import cn.flashpool.utils.aliYunMessageUtils;



public class UserAction extends ActionSupport implements ModelDriven<User>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user=new User();
	private UserService us;
	
	private String code;
	
	/**
	 * 
	 * @return
	 */
	
	public String toRegistPage() {
		return "toRegistPage";
	}
	
	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public String findByName() throws Exception {	
		// ����Service���в�ѯ:
		User existUser = us.findByUsername(user.getUserName());
		// ���response����,��ҳ�����:
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		// �ж�
		if (existUser != null) {
			// ��ѯ�����û�:�û��Ѿ�����
			response.getWriter().println("<font color='red'>�ֻ����ѱ�ע��</font>");
		} else {
			// û��ѯ�����û�:�û�����ʹ��
			response.getWriter().println("<font color='green'>�ֻ���δ��ע�����ʹ��</font>");
		}
		return NONE;
	}
	
	/**
	 * ��ȡ������
	 * @return
	 */
	public String getMessageCode(){
		//������֤��
		String code=UUIDUtils.getUUID();
		//���Ͷ�����֤��
		try {
			SendSmsResponse response = aliYunMessageUtils.sendSms("13140009384",code);
		} catch (ClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//����֤�뱣����session��
		Map<String, Object> sessionScope=ActionContext.getContext().getSession();
		sessionScope.put("code", code);
		return NONE;
	}
	/*
	 * �û�ע��
	 */
	public String registing() {
		Map<String,Object> sessionScope=ActionContext.getContext().getSession();
		//�Ա���֤��
		if(sessionScope.get("code").equals(code)) {
			System.out.println(user.toString());
			us.save(user);
			System.out.println("out");
		}else {
			// ���response����,��ҳ�����:
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html;charset=UTF-8");
			try {
				response.getWriter().println("<font color='red'>��������֤��</font>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "registSuccess";
	}
	/*
	 *	�û���¼ 
	 */
	public String toLoginPage() {
		return "toLoginPage";
	}
	/*
	 * ajax�����첽У��----��¼
	 */
	public String checkLogin(String username,String password) throws Exception {	
		// ����Service���в�ѯ:
		User existUser = us.findByUsername(user.getUserName());
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		//�ж��û��Ƿ����
		if (existUser != null) {
			//�ж������Ƿ���ȷ
			if(existUser.getUserPassword().equals(user.getUserPassword())) {
				//�ж��û��Ƿ񼤻�
				if(existUser.getUserState()==1) {
					return "loginSuccess";
				}else if(existUser.getUserState()==0){
					response.getWriter().println("<font color='green'>�û�δ����</font>");
				}
			}else {
				response.getWriter().println("<font color='green'>�������</font>");
			}
		} else {
			response.getWriter().println("<font color='green'>�û������ڣ�����ע��</font>");
		}
		return NONE;
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	
	public void setUs(UserService us) {
		this.us = us;
	}
	public void setCode(String code) {
		this.code = code;
	}
}
