(function() {

	/**
	 *  定义获取div信息的方法
	 */
	var getDiv = function() {
		//你需要获取值的js文件名
		var fileName = "login-module.js";
		//获取到所有<script>对象
		var scripts = document.getElementsByTagName("script");
		for (var i = 0; i < scripts.length; i++) {
			var src = scripts[i].src;
			//取得你想要的js文件名
			if (src.indexOf(fileName) !== -1) {
				//获取js文件名后面的所有参数
				src = src.substring(src.lastIndexOf(fileName + "?") + (fileName.length + 1));
				var array = src.split("&");
				//将参数一个一个遍历出来
				for (var j = 0; j < array.length; j++) {
					var finalObj = array[j].split("=");
					console.log("参数：" + finalObj[0] + "值：" + finalObj[1]);
					//取div参数
					if (finalObj[0] === "div") {
						return finalObj[1];
					}
				}
				return null;
			}
		}
	};
	
		/**
	 * 向div节点中写入我们的表单
 	* @param {Object} div
	 */
	function writeForm(div){
			var loginDiv = document.getElementById(targetDiv);
			var yunContainer = document.createElement("div");
			loginDiv.appendChild(yunContainer);
			yunContainer.setAttribute("class","yun_login");
			//创建H4
			var h4 = document.createElement("h4");
			h4.innerHTML = "云平台登录";
			h4.setAttribute("class","yun_h4");
			yunContainer.appendChild(h4);
			
			//创建form
			
			var form = document.createElement("form");
			yunContainer.appendChild(form);
			form.setAttribute("class","yun_form");
			form.setAttribute("action","rest/login");
			form.setAttribute("id","login_form");
			
			//创建form表单内内容
			var userLabel = document.createElement("label");
			userLabel.innerHTML = "用户名：<input type='text' name='username' placeholder='请输入用户名'>";
			form.appendChild(userLabel);
			
			var passLabel = document.createElement("label");
			passLabel.innerHTML = "密&nbsp;&nbsp;&nbsp;码：<input type='password' name='password' placeholder='请输入密码'>";
			form.appendChild(passLabel);
			
			var valiLabel = document.createElement("label");
			valiLabel.innerHTML = "验证码：<input type='text' name='kaptcha' placeholder='请输入验证码'>";
			form.appendChild(valiLabel);
			
			var valispan = document.createElement("span");
			valispan.innerHTML = "<img src='kaptcha' id='image'/><a href='#' onclick='change()'>看不清换一张</a>";
			valispan.setAttribute("class","validate");
	        form.appendChild(valispan);
	        
			var checkboxLabel  = document.createElement("label");
			checkboxLabel.innerHTML = "<input type='checkbox'> 保存密码";
			checkboxLabel.setAttribute("class","checkbox");
			form.appendChild(checkboxLabel);
			
			var button = document.createElement("a");
			button.setAttribute("class","btn yun_btn");
			button.setAttribute("type","submit");
			button.setAttribute("id","submit_btn")
			button.textContent = "登录";
			form.appendChild(button);
	}
	
	/**
	 * 动态引入css
 * @param {Object} uri
	 */
	function writeCssLink(uri){
		var link  = document.createElement("link");
		link.setAttribute("rel", "stylesheet");
	    link.setAttribute("type", "text/css");
	    link.setAttribute("href", uri);
	    link.setAttribute("media","screen");
	    //添加到head中
	    document.getElementsByTagName("head")[0].appendChild(link);

	}
	
	//-----------------------------------------------------------------------------action
	//定义我们所需要的div
	var targetDiv = getDiv();
	writeCssLink("http://127.0.0.1:8080/security/css/login-module.css");
	writeForm(targetDiv);


})(); 