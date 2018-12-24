var changeClass = (function(){
	var c = function(obj){
		var strid = obj.id;
		var a = document.getElementById(strid).classList.contains("open");
		if(!a){
			add(strid);
		}else{
			remove(strid);
		}
	};
	var add = function(strid){
		var menu_parent = document.getElementById(strid);
		menu_parent.classList.add("open");
	};
	var remove = function(strid){
		var menu_parent = document.getElementById(strid);
		menu_parent.classList.remove("open");
	};
	return {
		c : c,
		add : add,
		remove : remove,
	};
})();