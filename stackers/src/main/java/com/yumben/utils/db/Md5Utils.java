package com.yumben.utils.db;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5Utils {
	/**
	 * 对字符串进行MD5摘要加密，返回结果与MySQL的MD5函数一致
	 */
	public static String md5(String input) {
		if (null == input) {
			input = "";
		}
		String result = "";
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(input.getBytes());
			byte output[] = md.digest();

			StringBuilder builder = new StringBuilder(32);
			for (int offset = 0; offset < output.length; offset++) {
				int value = output[offset];
				if (value < 0) {
					value += 256;
				}
				if (value < 16) {
					builder.append("0");
				}
				builder.append(Integer.toHexString(value));
			}
			result = builder.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return result;

	}
}
