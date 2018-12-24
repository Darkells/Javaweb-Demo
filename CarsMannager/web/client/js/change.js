function loadXMLDoc(url){
	var xmlHttp;
	if(window.XMLHttpRequest){
		xmlHttp = new XMLHttpRequest();
	}else{
		xmlHttp = new ActiveXObject();
	}
	xmlHttp.onreadystatechange = function(){
		if(xmlHttp.readyState == 4 && xmlHttp.status == 200 ){
			document.getElementById("page").innerHTML = xmlHttp.responseText;
		}
	}
	xmlHttp.open("GET",url,true);
	xmlHttp.send();
}
loadXMLDoc('list.html');