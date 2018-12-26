package com.yidu.uitle;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * 描述：短信接口
 * @author 周江
 */
@Controller
public class Mobile {
	/**
	 * 说明：验证码判断方法
	 * @author 周江
	 */
	static int mobile_code =(int)((Math.random()*9+1)*100000); //获取随机数y
	@RequestMapping("regin2.action")
	protected @ResponseBody Map<String, Object> API2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String, Object> map=new HashMap<>();
		map.put("yzm", mobile_code);

		return map;
	}
	/**
	 * 说明：验证码接口调用
	 * @author 周江
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping("regin.action")
	protected @ResponseBody Map<String, Object> API(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 接口类型：互亿无线触发短信接口，支持发送验证码短信、订单通知短信等。
		// 账户注册：请通过该地址开通账户http://sms.ihuyi.com/register.html
		// 注意事项：
		//（1）调试期间，请使用用系统默认的短信内容：您的验证码是：【变量】。请不要把验证码泄露给其他人。；
		//（2）请使用APIID（查看APIID请登录用户中心->验证码短信->产品总览->APIID）及 APIkey来调用接口；
		//（3）该代码仅供接入互亿无线短信接口参考使用，客户可根据实际需要自行编写；

		// request.getSession().setAttribute("mobile_code", 123456);

		String postUrl = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";
		String account = "C14536395"; //查看用户名是登录用户中心->验证码短信->产品总览->APIID
		String password = "62f35042dd4368487355aaae6580e21d";  //查看密码请登录用户中心->验证码短信->产品总览->APIKEY
		String mobile = request.getParameter("mobile");
		String content = new String("您的验证码是：" + mobile_code + "请不要把验证码泄露给其他人");
		//Cookie cookie=new Cookie("add",String.valueOf(mobile_code1));
		//response . addCookie(cookie);
		/*String send_code = request.getParameter("send_code");
			String session_code = (String)session.getAttribute("randStr");
			// 此处验证码仅限于纯数字比对
			if (Integer.parseInt(send_code) != Integer.valueOf(session_code)) {
				String message = new String("请输入正确的验证码");
				out.println(message);
				return;
			}*/
		URL url = new URL(postUrl);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setDoOutput(true);//允许连接提交信息
		connection.setRequestMethod("POST");//网页提交方式“GET”、“POST”
		connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		connection.setRequestProperty("Connection", "Keep-Alive");
		StringBuffer sb = new StringBuffer();
		sb.append("account="+account);
		sb.append("&password="+password);
		sb.append("&mobile="+mobile);
		sb.append("&content="+content);
		OutputStream os = connection.getOutputStream();
		os.write(sb.toString().getBytes());
		os.close();
		String line, result = "";
		BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
		while ((line = in.readLine()) != null) {
			result += line + "\n";
		}
		in.close();
		System.out.println(result);
		String msg = result.substring(result.indexOf("<msg>")+5, result.indexOf("</msg>"));
		System.out.println(msg);
		Map<String, Object> map=new HashMap<>();
		map.put("state", msg);
		map.put("yzm", mobile_code);
		return map;
	}
}