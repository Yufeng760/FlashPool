package cn.flashpool.utils;

import java.util.UUID;

/**
 * ��������ַ���
 * @author ������
 *
 */
public class UUIDUtils {
	
	public static String getUUID() {
		return UUID.randomUUID().toString().replace("-", "");
	}
	
}
