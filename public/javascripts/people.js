$(function() {var items = $("div.member").css({ "opacity" : "0", "filter" : "alpha(opacity=0)" });shuffle(items);nextItemFade(items);function nextItemFade(items) {items.eq(0).fadeTo('50', '1', function() {nextItemFade(items.slice(1));});}function shuffle(a) {for(var j, x, i = a.length; i; j = (Math.random() * i) | 0, x = a[--i], a[i] = a[j], a[j] = x);return a;}
	var $members = $(".membersBox");
	var membersWidth = $members.length * $members.width();
	membersWidth = membersWidth + $("#promos").width();
	$("#wrapper").width($("#content").width() + membersWidth);
});