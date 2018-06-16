function InternetTest()
{
	$.ajax({
			url: 'http://2tsy.ru',
			dataType: 'json',
			type:'get',
			cache:false,
			timeout: 1000,
			error: function(x, t, m) 
			{
				if(t==="timeout") {
					alert("Интернет соединение отсутствует");
				} 
				else 
				{
					alert(t);
				}
			},
			success:function(data) 
			{
				alert("Интернет доступен");
			}
	}); 
}