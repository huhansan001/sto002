
function RemainTime(){
	var mobile =$('#mobile').val();
	$.ajax({
		type : "post",
		url : "regin",
		data : "method=API&mobile="+mobile,
		dataType:"text",
		success:function(msg){
			if(msg=='提交成功'){
				RemainTime2();
			}else{
				alert('同一手机号验证码短信发送超出5条');
				location.reload();
			}
		}
	});
}
var iTime = 59;
var Account;
//短信验证倒计时
function RemainTime2() {
	document.getElementById('zphone').disabled = true;
	var iSecond, sSecond = "",
	sTime = "";
	if(iTime >= 0) {
		iSecond = parseInt(iTime % 60);
		iMinute = parseInt(iTime / 60)
		if(iSecond >= 0) {
			if(iMinute > 0) {
				sSecond = iMinute + "分" + iSecond + "秒";
			} else {
				sSecond = iSecond + "秒";
			}
		}
		sTime = sSecond;
		if(iTime == 0) {
			clearTimeout(Account);
			sTime = '获取手机验证码';
			iTime = 59;
			document.getElementById('zphone').disabled = false;
		} else {
			Account = setTimeout("RemainTime2()", 1000);
			iTime = iTime - 1;
		}
	} else {
		sTime = '没有倒计时';
	}
	document.getElementById('zphone').value = sTime;
}

