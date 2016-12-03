
function getNext(id) {
	
	var tag2 = document.getElementById("tag2")
	tag2.innerHTML = "";
	var newOption = new Option("请选择", 0);
	tag2.appendChild(newOption);
	next.findByParentId(id, huidiao);

}
function huidiao(aa) {

	var types = eval(aa);
		var tag2 = document.getElementById("tag2");
	for(var i=0;i<types.length;i++){
		var newOption = new Option(types[i].bookTypeName, types[i].bookTypeId);
		tag2.appendChild(newOption);
		}
}

function getN(id) {
	
	var tag3 = document.getElementById("tag3")
	tag3.innerHTML = "";
	var newOption = new Option("请选择", 0);
	tag3.appendChild(newOption);
	next.findByParentId(id, h);

}
function h(aa) {

	var types = eval(aa);
	var tag3 = document.getElementById("tag3");
	for(var i=0;i<types.length;i++){
		
		var newOption = new Option(types[i].bookTypeName, types[i].bookTypeId);
		tag3.appendChild(newOption);
		}
}
   