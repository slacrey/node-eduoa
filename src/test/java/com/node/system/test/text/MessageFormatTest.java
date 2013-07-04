/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2012, node.com
 * Filename:		com.node.system.test.text.MessageFormat.java
 * Class:			MessageFormat
 * Date:			2013-5-5
 * Author:			<a href="mailto:node@gmail.com">node</a>
 * Version          2.1.0
 * Description:		
 *
 * </pre>
 **/
 
package com.node.system.test.text;

import java.text.Format;
import java.text.MessageFormat;

import org.junit.Test;

/** 
 * 	
 * @author 	<a href="mailto:node@gmail.com">node</a>
 * Version  2.1.0
 * @since   2013-5-5 上午11:26:23 
 */

public class MessageFormatTest {
	@Test
	public void test() {
		String msg = "this is {0}, not {1}";
	
		MessageFormat mFormat = new MessageFormat(msg);
		Format[] formats = mFormat.getFormats();
		System.out.println(formats);
	}
}
