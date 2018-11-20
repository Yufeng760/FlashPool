package cn.flashpool.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public interface BaseDao<T> {
	
	//��
	void save(T t);
	//ɾ(ͨ������ɾ��)
	void delete(T t);
	//ɾ(ͨ��idɾ��)
	void delete(Serializable id);
	//��
	void update(T t);
	//��
	T getById(Serializable id);
	//��ѯ�����������ܼ�¼��
	Integer getTotalCount(DetachedCriteria dc);
	//��
	List<T> getPageList(DetachedCriteria dc,Integer start,Integer pageSize);
}
