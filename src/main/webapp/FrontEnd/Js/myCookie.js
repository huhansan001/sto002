	//得到cookie
	function getCookie(cname){
	  var name = cname + "=";
	  //得到cookie值
	  var cookieValue=document.cookie;
	  //将cookie值进行解码
	  var valCookie=decodeURIComponent(cookieValue);
	  var ca = valCookie.split(';');
	  for(var i=0; i<ca.length; i++){
	    var c = ca[i].trim();
	    if (c.indexOf(name)==0)
	    return c.substring(name.length,c.length);
	  }
	  return null;
	}
	/*
	*设置cookie
	* cname cookie的名字
	* cvalue cookie的值
	* exdays 过期时间
	*/
	function setCookie(cname,cvalue){
		//将值进行编码
		var value=encodeURIComponent(cvalue);
	    var d = new Date();
		//设置过期时间
	    d.setTime(d.getTime()+(1*24*60*60*1000));
	    var expires = "expires="+d.toGMTString();
		//将值增加到cookie
	    document.cookie = cname+"="+value+"; "+expires+"; path=/stoMaven/";
	}
	
	/*
	 * 删除Cookie
	 * name ： cookie名字
	 */
	function delCookie(name)
	{
	    var exp = new Date();
	    exp.setTime(exp.getTime() - 1);
	    var cval=getCookie(name);
	    if(cval!=null)
	        document.cookie= name + "="+cval+";expires="+exp.toGMTString();
	} 