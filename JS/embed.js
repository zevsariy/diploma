	//переменная для тестов
	var test;
	//переменная для хранения редактируемого предмета
	var editable_item;
	
	//тут часть кода для добавления предметов из БД
	{{{js_editor_subject002}}}

	//добавление нового элемента согласно параметрам
	
	//<div data-semester="0" data-size="5" data-name="Русский язык" data-id="1" data-type="1" data-lections="1" data-seminars="2" data-labs="3" data-selfwork="4" data-part="1" data-kurs_project="1" data-kurs_work="1" class="subject isResizable ui-resizable" style="height: 160px; background-color: rgb(220, 220, 220); color: rgb(0, 0, 0);" draggable="false"><p class="subject_name">Русский язык</p><div class="hours_subject"><p class="dlec">1</p><p class="dsem">2</p><p class="dlabs">3</p><p class="dself">4</p><p class="dkproject">1</p><p class="dkwork">1</p></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div></div>
	function add_new_item(id, name, semester, size, type, lections, seminars, labs, selfwork, part, kurs_project, kurs_work, bg_color, text_color)
	{
		//Семестр в бд хранится нормально, а добавляем мы предметы в массив, потому -1 (старт с 0 )
		semester-=1;
		
		//переменная для хранения записей о часах по предмету
		var hours = '';
		
		//добавление часов различных к предмету
		var zuch_ed=size*36;
		hours +='<p class="dzuch_ed" title="Зачетных единиц">'+zuch_ed+'</p>';
		hours +='<p class="dlec" title="Лекции">'+lections+'</p>';
		hours +='<p class="dlabs" title="Лабораторные часы">'+labs+'</p>';
		hours +='<p class="dsem" title="Семинары">'+seminars+'</p>';
		hours +='<p class="dself" title="Самостоятельные часы">'+selfwork+'</p>';
		hours +='<p class="dtype" title="зачет или экзамен"></p>';
		hours +='<p class="dkwork" title="Курсовая работа">КР</p>';
		hours +='<p class="dkproject" title="Курсовой проект">КП</p>';
		
		
		var new_subject = $($("div.layer")[semester]).find(".tile__list").append('<div data-semester="'+semester+'" data-size="'+size+'" data-name="'+name+'" data-id="'+id+'" data-type="'+type+'" data-lections="'+lections+'" data-seminars="'+seminars+'" data-labs="'+labs+'" data-selfwork="'+selfwork+'" data-part="'+part+'" data-kurs_project="'+kurs_project+'" data-kurs_work="'+kurs_work+'" data-bg_color="'+bg_color+'" data-text_color="'+text_color+'" data-delete="0" class="subject isResizable" style="height:'+(32*size)+'px;" draggable="false" class=""><p class="subject_name">'+name+'</p><div class="hours_subject">'+hours+'</div></div>');
		test=new_subject;
	}
	
	function add_hours(size)
	{
		for (var i = 1; i <= size; i++) 
		{
			if (i!=size)
				$($("div.hours")).find(".tile__list__blocked").append('<div>'+i+'</div>');
			else 
				$($("div.hours")).find(".tile__list__blocked").append('<div id="border">'+i+'</div>');
		}
	}
	
	function add_semesters(size)
	{
		var new_item='<div class="zaglushka isResizable" draggable="false" class="" style="height:0px; border:none;"></div>';
		for (var i = 1; i <= size; i++) 
		{
			$($(".overlay")).append('<div class="layer tile" data-force="10"><div class="tile__name">'+i+'</div><div class="grid"><div class="tile__list">'+new_item+'</div></div></div>');
			
			$($(".statistic")).append('<div class="statSemester">Тут будет статистика</div>');
		}
	}
	
	add_op_parts();
	function add_op_parts()
	{
		selectValues = {{{js_editor_subject003}}};
		$.each(selectValues, function(key, value) {   
			 $('#epart')
				 .append($("<option></option>")
							.attr("value",key)
							.text(value)); 
		});
	}

	
	setTimeout(function run() {
	  valid_position()
	  setTimeout(run, 100);
	}, 100);
	
	function roundTo32(num) {
		return Math.round(num/32)*32;
	}

	function valid_position()
	{
		$("#planName").html($("#eplanName").val());
		
		var max_height = $("#border").offset().top + $("#border").outerHeight();
		$( ".subject" ).each(function( index ) {
			
			$(this).find(".subject_name").html($(this).data("name"));
			
			$(this).find(".dlec").html($(this).data("lections"));
			$(this).find(".dsem").html($(this).data("seminars"));
			$(this).find(".dlabs").html($(this).data("labs"));
			$(this).find(".dself").html($(this).data("selfwork"));
			
			$(this).data("zuch_ed", $(this).data("size")*36);
			$(this).find(".dzuch_ed").html($(this).data("zuch_ed"));
			
			if($(this).data("kurs_project") >0)
				$(this).find(".dkproject").show();
			else
				$(this).find(".dkproject").hide();
			
			if($(this).data("type")==1)
				$(this).find(".dtype").html("ЗЧ");
			else if($(this).data("type")==2)
				$(this).find(".dtype").html("ЭК");
			else 
				$(this).find(".dtype").html("");
			
			if($(this).data("kurs_work")>0)
				$(this).find(".dkwork").show();
			else
				$(this).find(".dkwork").hide();
			
			// $(this).find(".dkproject").html($(this).data("kurs_project"));
			// $(this).find(".dkwork").html($(this).data("kurs_work"));
			
			// $(editable_item).data("name", $("#ename").val());
			// $(editable_item).data("type", $("#etype").val());
			// $(editable_item).data("part", $("#epart").val());
			
			$(this).outerHeight(roundTo32($(this).outerHeight()));
		
			if( ($(this).offset().top + $(this).outerHeight()) > (max_height + 10))
			{
				$(this).css('background-color', '#FF0000');
				$(this).css('color', '#000');
				//$( this ).addClass("red_box");
			}
			else
			{
				//$( this ).removeClass("red_box");
				//console.log($(this).data("part"));
				var color_temp={{{js_editor_subject004}}} ;
				
				var part_num = $(this).data("part");
				
				$(this).css('background-color', $(this).data('bg_color'));
				$(this).css('color', $(this).data('text_color'));
			}
			
			$(this).data('semester', $(this).parent().parent().parent().find('.tile__name').text());
			
			var sizeTemp = ($(this).outerHeight())/32;
				$(this).data('size', sizeTemp);

			//console.log( index + ": " + $( this ).offset().top );
		});
		SetStatistics();
	}
	
	
	function ArraySumStat(StatArray, stat_name)
	{
		var sum = 0;
		$(StatArray).each(function( index ) {
			var semester = $(this).data("semester");
			for (var i = 1; i <= semesters; i++) 
			{
				sum +=Number(StatArray[i][stat_name]);
			}
		});
		return sum;
	}
	
	function GetSumArray(StatArray)
	{
		var sumArray={};
		sumArray['lections']=ArraySumStat(StatArray, 'lections');
		sumArray['seminars']=ArraySumStat(StatArray, 'seminars');
		sumArray['labs']=ArraySumStat(StatArray, 'labs');
		sumArray['selfwork']=ArraySumStat(StatArray, 'selfwork');
		sumArray['kurs_project']=ArraySumStat(StatArray, 'kurs_project');
		sumArray['kurs_work']=ArraySumStat(StatArray, 'kurs_work');
		sumArray['zuch_ed']=ArraySumStat(StatArray, 'zuch_ed');
		sumArray['size']=ArraySumStat(StatArray, 'size');
		sumArray['zachets']=ArraySumStat(StatArray, 'zachets');
		sumArray['exams']=ArraySumStat(StatArray, 'exams');
		return sumArray;
	}
	
	
	function GetStatisticArray()
	{
		var StatisticArray = {};
		for(var i = 1; i <= semesters; i++)
		{
			StatisticArray[i]={'lections': 0, 'seminars':0, 'labs':0, 'selfwork':0, 'kurs_project':0, 'kurs_work':0, 'zuch_ed':0, 'zachets':0, 'exams':0, 'size':0};
		}
		
		$( ".subject" ).each(function( index ) {
			var semester = $(this).data("semester");
			StatisticArray[semester]['lections'] +=	Number($(this).data("lections"));
			StatisticArray[semester]['seminars'] +=	Number($(this).data("seminars"));
			StatisticArray[semester]['labs'] +=	Number($(this).data("labs"));
			StatisticArray[semester]['selfwork'] +=	Number($(this).data("selfwork"));
			StatisticArray[semester]['kurs_project'] +=	Number($(this).data("kurs_project"));
			StatisticArray[semester]['kurs_work'] +=	Number($(this).data("kurs_work"));
			StatisticArray[semester]['zuch_ed'] +=	Number($(this).data("zuch_ed"));
			StatisticArray[semester]['size'] +=	Number($(this).data("size"));
			
			
			
			if(Number($(this).data("type"))==1)
				StatisticArray[semester]['zachets'] += 1;
			else if(Number($(this).data("type"))==2)
				StatisticArray[semester]['exams'] += 1;
			
			//console.log("exeq ------"+index+"------"+StatisticArray[semester]['zachets']);
		});
		return StatisticArray;
	}
	
	function SetStatistics()
	{
		var statistica=GetStatisticArray();
		
		var sumStatistics = GetSumArray(statistica);
		
		
		$( ".statSemester" ).each(function( index ) {
			var procLections = ((statistica[index+1]['lections']/sumStatistics['lections'])*100).toFixed(2);
			var procSeminars = ((statistica[index+1]['seminars']/sumStatistics['seminars'])*100).toFixed(2);
			var procLabs = ((statistica[index+1]['labs']/sumStatistics['labs'])*100).toFixed(2);
			var procSelfworks = ((statistica[index+1]['selfwork']/sumStatistics['selfwork'])*100).toFixed(2);
			
			$(this).html("<div class='tile__name'>"+(index+1)+"</div><div class='statistics'><ul class='list-group list-group-flush'><li>Лекций: "+statistica[index+1]['lections']+"("+procLections+"%)</li><li>Семинаров: "+statistica[index+1]['seminars']+"("+procSeminars+"%)</li><li>Лабораторных работ: "+statistica[index+1]['labs']+"("+procLabs+"%)</li><li>Самостоятельных работ: "+statistica[index+1]['selfwork']+"("+procSelfworks+"%)</li><li>Курсовых проектов: "+statistica[index+1]['kurs_project']+"</li><li>Курсовых работ: "+statistica[index+1]['kurs_work']+"</li><li>Зачетов: "+statistica[index+1]['zachets']+"</li><li>Экзаменов: "+statistica[index+1]['exams']+"</li><li>Зачетных единиц: "+statistica[index+1]['size']+"</li><li>Часов суммарно: "+statistica[index+1]['zuch_ed']+"</li></ul></div>");
		});
		
		// $(".SumStatistics").html("<div class='row-fluid'><div class='card span4'><ul class='list-group list-group-flush'>");
		// $(".SumStatistics").append("<li>Суммарная статистика</li>");
		// $(".SumStatistics").append("<li>Лекций: "+sumStatistics['lections']+"</li>");
		// $(".SumStatistics").append("<li>Семинаров: "+sumStatistics['seminars']+"</li>");
		// $(".SumStatistics").append("<li>Лабораторных работ: "+sumStatistics['labs']+"</li>");
		// $(".SumStatistics").append("<li>Самостоятельных работ: "+sumStatistics['selfwork']+"</li>");
		// $(".SumStatistics").append("<li>Курсовых проектов: "+sumStatistics['kurs_project']+"</li>");
		// $(".SumStatistics").append("</ul></div><div class='card span4'><ul class='list-group list-group-flush'>");
		// $(".SumStatistics").append("<li>Курсовых работ: "+sumStatistics['kurs_work']+"</li>");
		// $(".SumStatistics").append("<li>Зачетов: "+sumStatistics['zachets']+"</li>");
		// $(".SumStatistics").append("<li>Экзаменов: "+sumStatistics['exams']+"</li>");
		// $(".SumStatistics").append("<li>Зачетных единиц: "+sumStatistics['size']+"</li>");
		// $(".SumStatistics").append("<li>Часов суммарно: "+sumStatistics['zuch_ed']+"</li>");
		// $(".SumStatistics").append("</ul></div></div>");
		
		
		$(".SumStatistics1").html("");
		$(".SumStatistics2").html("");
		$(".SumStatistics3").html("");
		$(".SumStatistics4").html("");
		
		$(".SumStatistics1").append("<li>Суммарная статистика</li>");
		$(".SumStatistics1").append("<li>Лекций: "+sumStatistics['lections']+"</li>");
		$(".SumStatistics1").append("<li>Семинаров: "+sumStatistics['seminars']+"</li>");
		$(".SumStatistics2").append("<li>Лабораторных работ: "+sumStatistics['labs']+"</li>");
		$(".SumStatistics2").append("<li>Самостоятельных работ: "+sumStatistics['selfwork']+"</li>");
		$(".SumStatistics2").append("<li>Курсовых проектов: "+sumStatistics['kurs_project']+"</li>");
		
		$(".SumStatistics3").append("<li>Курсовых работ: "+sumStatistics['kurs_work']+"</li>");
		$(".SumStatistics3").append("<li>Зачетов: "+sumStatistics['zachets']+"</li>");
		$(".SumStatistics3").append("<li>Экзаменов: "+sumStatistics['exams']+"</li>");
		$(".SumStatistics4").append("<li>Зачетных единиц: "+sumStatistics['size']+"</li>");
		$(".SumStatistics4").append("<li>Часов суммарно: "+sumStatistics['zuch_ed']+"</li>");
	}