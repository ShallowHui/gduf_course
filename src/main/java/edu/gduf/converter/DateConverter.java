package edu.gduf.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class DateConverter implements Converter<String, Date> {  //实现Converter接口

	// 定义日期格式
	private String datePatternShort = "yyyy-MM-dd", datePatternLong = "yyyy-MM-dd HH:mm:ss";

	//实现convert方法
	public Date convert(String source) {
		// 格式化日期
		String thePattern = source.indexOf(":") == -1 ? datePatternShort:datePatternLong;
		SimpleDateFormat sdf = new SimpleDateFormat(thePattern);
		try {
			return sdf.parse(source);
		} catch (ParseException e) {
			throw new IllegalArgumentException("无效的日期格式，请使用这种格式:"+thePattern);
		}
	}
}