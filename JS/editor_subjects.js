	//переменная для тестов
	var test1;
	var test2;
	//переменная для хранения редактируемого предмета
	var editable_item;
	
	//тут часть кода для добавления предметов из БД
	
	
	function GetURLParameter(sParam)
	{
		var sPageURL = window.location.search.substring(1);
		var sURLVariables = sPageURL.split('&');
		for (var i = 0; i < sURLVariables.length; i++)
		{
			var sParameterName = sURLVariables[i].split('=');
			if (sParameterName[0] == sParam)
			{
				return sParameterName[1];
			}
		}
	}

	function FillPlanSubjects()
	{
		$("div.layer").each(function( index ) 
		{ 
			
			$(this).find(".tile__list").html("");
			console.log($(this).find(".tile__list").text());
		});
			
		var plan_id=GetURLParameter('id');
		$.ajax({
			url: "/api/index.php?module=subjects&action=getalljson&id="+plan_id,
			method: "POST",
			type: "POST",
			data: {},
			error: function(errMsg) {
			console.log(errMsg);
			}
		}).done(function(dataDB) {
			var subjectsDB=dataDB;
			$.each(subjectsDB['data'], function(index, value) {
				console.log(value);
				
			if(value['bg_color'] == '') value['bg_color']="#FFF";
			if(value['text_color'] == '') value['text_color']="#000"; 
			add_new_item(value['id'], value['name'], value['semester'], value['zuch_ed'], value['type'], value['lections'], value['seminars'], value['labs'], value['selfwork'], value['part'], value['kurs_project'], value['kurs_work'], value['bg_color'],value['text_color'],value['targets'],value['tasks'],value['competences'],value['themes'],value['bibliographys'],value['softwares']);
			}); 
			StartStateChanges = CurrentState();
		});
	}
	FillPlanSubjects();

	
	
	var plan={{{js_editor_subject002}}}
	
	add_semesters(plan['semesters']);
	add_hours(plan['hours']);
	var StartStateChanges = 0;
	
	function print_doc(){
		window.print();
	}

	
	function prepareDataArray(dataArray)
	{
		console.log("splited!!!");
		dataArray = dataArray.split('"').join("");
		dataArray = dataArray.split('[').join("");
		dataArray = dataArray.split(']').join("");
		dataArray = dataArray.split(',');
		console.log(dataArray);
		return dataArray;
	}

	//добавление нового элемента согласно параметрам
	
	//<div data-semester="0" data-size="5" data-name="Русский язык" data-id="1" data-type="1" data-lections="1" data-seminars="2" data-labs="3" data-selfwork="4" data-part="1" data-kurs_project="1" data-kurs_work="1" class="subject isResizable ui-resizable" style="height: 160px; background-color: rgb(220, 220, 220); color: rgb(0, 0, 0);" draggable="false"><p class="subject_name">Русский язык</p><div class="hours_subject"><p class="dlec">1</p><p class="dsem">2</p><p class="dlabs">3</p><p class="dself">4</p><p class="dkproject">1</p><p class="dkwork">1</p></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div></div>
	function add_new_item(id, name, semester, zuch_ed, type, lections, seminars, labs, selfwork, part, kurs_project, kurs_work, bg_color, text_color, targets, tasks, competences, themes, bibliographys, softwares)
	{
		
		
		
		
		
		
		//Семестр в бд хранится нормально, а добавляем мы предметы в массив, потому -1 (старт с 0 )
		semester-=1;
		
		//переменная для хранения записей о часах по предмету
		var hourses = '';
		
		//добавление часов различных к предмету
		var hours=zuch_ed*36;
		hourses +='<p class="dhours" title="Часов">'+hours+'</p>';
		hourses +='<p class="dzuch_ed" title="Зачетных единиц">'+zuch_ed+'</p>';
		hourses +='<p class="dlec" title="Лекции">'+lections+'</p>';
		hourses +='<p class="dlabs" title="Лабораторная работа">'+labs+'</p>';
		hourses +='<p class="dsem" title="Семинары">'+seminars+'</p>';
		hourses +='<p class="dself" title="Самостоятельная работа">'+selfwork+'</p>';
		hourses +='<p class="dtype" title="зачет или экзамен"></p>';
		hourses +='<p class="dkwork" title="Курсовая работа">КР</p>';
		hourses +='<p class="dkproject" title="Курсовой проект">КП</p>';
		
		if(targets!='') targets= JSON.parse(targets);
		if(tasks!='') tasks= JSON.parse(tasks);
		if(competences!='') competences= JSON.parse(competences);
		if(themes!='') themes = JSON.parse(themes);
		if(bibliographys!='') bibliographys = JSON.parse(bibliographys);
		if(softwares!='') softwares = JSON.parse(softwares);
		
		var new_subject = document.createElement('div');
            new_subject.className = 'subject isResizable';
            new_subject.innerHTML = '<p class="subject_name"></p><div class="hours_subject"></div>';
		
		//var new_subject = document.createElement("<div class='subject isResizable' draggable='false'><p class='subject_name'></p><div class='hours_subject'></div></div>");
		$(new_subject).data('id', id);
		$(new_subject).data('name', name);
		$(new_subject).data('semester', semester);
		$(new_subject).data('zuch_ed', zuch_ed);
		$(new_subject).data('type', type);
		$(new_subject).data('lections', lections);
		$(new_subject).data('seminars', seminars);
		$(new_subject).data('labs', labs);
		$(new_subject).data('selfwork', selfwork);
		$(new_subject).data('part', part);
		$(new_subject).data('kurs_project', kurs_project);
		$(new_subject).data('kurs_work', kurs_work);
		$(new_subject).data('bg_color', bg_color);
		$(new_subject).data('text_color', text_color);
		$(new_subject).data('targets', targets);
		$(new_subject).data('tasks', tasks);
		
		$(new_subject).data('competences', competences);
		$(new_subject).data('themes', themes);
		$(new_subject).data('bibliographys', bibliographys);
		$(new_subject).data('softwares', softwares);
		
		$(new_subject).data('test', [{'name':'sergey', 'year': 2018, 'gost':'321423'},{'name':'yuri', 'year': 1995, 'gost':'fdsfsdsd'}]);
		
		$(new_subject).find(".hours_subject").html(hourses);
		
		
		$(new_subject).attr('style', 'height:'+(32*zuch_ed)+'px;');
		
		$($("div.layer")[semester]).find(".tile__list").append(new_subject);
		//var new_subject = $($("div.layer")[semester]).find(".tile__list").append('<div data-semester="'+semester+'" data-zuch_ed="'+zuch_ed+'" data-name="'+name+'" data-id="'+id+'" data-type="'+type+'" data-lections="'+lections+'" data-seminars="'+seminars+'" data-labs="'+labs+'" data-selfwork="'+selfwork+'" data-part="'+part+'" data-kurs_project="'+kurs_project+'" data-kurs_work="'+kurs_work+'" data-bg_color="'+bg_color+'" data-text_color="'+text_color+'" data-tasks="'+tasks+'" data-targets="'+targets+'" data-delete="0" class="subject isResizable" style="height:'+(32*zuch_ed)+'px;" draggable="false" class=""><p class="subject_name">'+name+'</p><div class="hours_subject">'+hourses+'</div></div>');

		
		test1 = tasks;
		test2 = new_subject;
		console.log($(new_subject).data());
		resizerka();
		editerka();
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
			$($(".overlay")).append('<div class="layer tile" data-force="10"><div class="tile__name">'+i+'</div><div class="grid"><div class="tile__list">'+new_item+'</div><div class="ostatok">+</div></div></div>');
			
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
	
	
	function resizerka()
	{
		$(".isResizable").resizable({
			// only use the eastern handle
			handles: 's',
			// restrict the width range
			minHeight: 5,
			maxHeight: 1000,
			grid: [0, 32],
			// resize handler updates the content panel width
			resize: function(event, ui){}
		});
	}
	
	resizerka();
	
	
	//(id, name, semester, size, type, lections, seminars, labs, selfwork, part, kurs_project, kurs_work)
	 
	$(".ostatok").click(function() {
		var SemesterParent = $(this).parent().parent().find('.tile__name').text();
		add_new_item('', "Новая дисциплина", SemesterParent, 2, 1, 0, 0, 0, 0, 1, 0, 0, "#ffffff", "#000000", "", "", "", "", "", "");
		
		// var new_subject = $(this).parent().find(".tile__list").append('<div data-semester="1" data-size="1" data-name="Новая дисциплина" data-id="" class="subject isResizable hsize1" style="" draggable="false" class=""><h3 class="subject_name">Новая дисциплина</h3></div>');
		resizerka(); 
		editerka();
	});

	function ValidEditorForm()
	{
		var hoursSum = Number($("#elections").val()) + Number($("#eseminars").val()) + Number($("#elabs").val()) + Number($("#eselfwork").val());
		var hours = Number($("#ehours").val());
		if( hours == hoursSum)
		{
			$("#ealert").hide();
			$("#ealert").html("");
			return true;
		}
		else
		{
			$("#ealert").show();
			$("#ealert").html("<p>Суммарное количество часов должно совпадать. Разница в : "+(hours - hoursSum)+"</p>");
			return false;
		}
	}
	
	$("#docx").click(function() {
		var id = Number($(editable_item).data("id"));
		var win = window.open("/?module=subjects&action=savetodocx&id="+id, '_blank');
		win.focus();
	});
	
	
	$("#edit_saver").click(function() {
		
		var hoursSum = Number($("#elections").val()) + Number($("#eseminars").val()) + Number($("#elabs").val()) + Number($("#eselfwork").val());
		if(ValidEditorForm())
		{
			$(editable_item).data("name", $("#ename").val());
			$(editable_item).data("type", $("#etype").val());
			$(editable_item).data("lections", $("#elections").val());
			$(editable_item).data("seminars", $("#eseminars").val());
			$(editable_item).data("labs", $("#elabs").val());
			$(editable_item).data("selfwork", $("#eselfwork").val());
			$(editable_item).data("part", $("#epart").val());
			
			$(editable_item).data("bg_color", $("#ebgcolor").val());
			$(editable_item).data("text_color", $("#etextcolor").val());
			
			if($("#ekurs_project").is(':checked'))
				$(editable_item).data("kurs_project", 1);
			else
				$(editable_item).data("kurs_project", 0);

			if($("#ekurs_work").is(':checked'))
				$(editable_item).data("kurs_work", 1);
			else
				$(editable_item).data("kurs_work", 0);
			
			//targets list
			var targets = [];
			$('.target_name').each(function( index )
            {
				targets.push($(this).val());
			});
			CleanTargets();
			$(editable_item).data("targets", targets);
			
			//tasks
			var tasks = [];
			$('.task_name').each(function( index )
            {
				tasks.push($(this).val());
			});
			CleanTasks();
			$(editable_item).data("tasks", tasks);
			
			
			//competences
			var competences = [];
			$(".competence .competence_name").each(function(index) 
			{
				competences[index] = {"name":"", "code":""};
				competences[index]['name'] = $(this).val();
			});
			$(".competence .competence_code").each(function(index) 
			{
				competences[index]['code'] = $(this).val();
			});
			$(".competence .competence_knowledges").each(function(index) 
			{
				competences[index]['knowledges'] = $(this).val();
			});
			$(".competence .competence_crafts").each(function(index) 
			{
				competences[index]['crafts'] = $(this).val();
			});
			$(".competence .competence_skills").each(function(index) 
			{
				competences[index]['skills'] = $(this).val();
			});
			
			CleanCompetences();
			$(editable_item).data("competences", competences);
			
			
			//themes
			var themes = [];
			$(".theme .theme_name").each(function(index) 
			{
				themes[index] = {"name":"", "description":"", "hours":"", "type":""};
				themes[index]['name'] = $(this).val();
			});
			$(".theme .theme_description").each(function(index) 
			{
				themes[index]['description'] = $(this).val();
			});
			$(".theme .theme_hours").each(function(index) 
			{
				themes[index]['hours'] = $(this).val();
			});
			$(".theme .theme_type").each(function(index) 
			{
				themes[index]['type'] = $(this).val();
			});
			CleanThemes();
			$(editable_item).data("themes", themes);
			
			
			//bibliographys
			var bibliographys = [];
			$('.bibliography_name').each(function( index )
            {
				bibliographys.push($(this).val());
			});
			CleanBibliographys();
			$(editable_item).data("bibliographys", bibliographys);
			
			//softwares
			var softwares = [];
			$('.software_name').each(function( index )
            {
				softwares.push($(this).val());
			});
			CleanSoftwares();
			$(editable_item).data("softwares", softwares);

			
			$("#editorForm").modal("hide");
		}
	});
	
	$("#deleteSubject").click(function() {
		$(editable_item).hide();
		$(editable_item).data('delete', 1);
		//$("#dialog").dialog( "close" );
		$("#editorForm").modal("hide");
	});
	
	$("#HideIcons").click(function() {
		if(!$(this).is(':checked'))
		{
			$(".hours_subject").hide();
			$(".subject_name").attr('style', 'width: 100% !important; font-size: 14px !important');
		}
		else
		{
			$(".hours_subject").show();
			$(".subject_name").attr('style', 'width: 40% !important; font-size: 10px !important');
		}
	});
	
	setTimeout(function run() {
	  valid_position()
	  setTimeout(run, 100);
	}, 100);
	
	function roundTo32(num) {
		return Math.round(num/32)*32;
	}
	
	function valid_position()
	{
		$("#modalSubjectTitle").text($("#ename").val())
		
		if($('#editorForm').is(':visible'))
		{
			ValidEditorForm();
		}
		
		$("#planMenuName").html(plan['spec_code']+" "+plan['spec_name']+" - "+$("#eplanName").val());
		$("#planPrintedName").html(plan['spec_code']+" "+plan['spec_name']+" - "+$("#eplanName").val());
		
		var max_height = $("#border").offset().top + $("#border").outerHeight();
		$( ".subject" ).each(function( index ) {
			
			$(this).find(".subject_name").html($(this).data("name"));
			
			$(this).find(".dlec").html($(this).data("lections"));
			$(this).find(".dsem").html($(this).data("seminars"));
			$(this).find(".dlabs").html($(this).data("labs"));
			$(this).find(".dself").html($(this).data("selfwork"));
			
			$(this).data("hours", $(this).data("zuch_ed")*36);
			$(this).find(".dzuch_ed").html($(this).data("zuch_ed"));
			$(this).find(".dhours").html($(this).data("hours"));
			
			if($(this).data("kurs_project") >0)
				$(this).find(".dkproject").show();
			else
				$(this).find(".dkproject").hide();
			
			if($(this).data("type")==1)
			{
				$(this).find(".dtype").html("ЗЧ");
				$(this).find(".dtype").attr('title', 'Зачет');
			}
			else if($(this).data("type")==2)
			{
				$(this).find(".dtype").html("ЭК");
				$(this).find(".dtype").attr('title', 'Экзамен');
			}
			else 
			{
				$(this).find(".dtype").html("");
				$(this).find(".dtype").attr('title', '');
			}
			
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
				$(this).data('zuch_ed', sizeTemp);

		});
		ValidSemestersZaglushka();
		$( ".zaglushka" ).height(0);
		
		SetStatistics();
	}
	
	
	function ArraySumStat(StatArray, stat_name)
	{
		var sum = 0;
		$(StatArray).each(function( index ) {
			var semester = $(this).data("semester");
			for (var i = 1; i <= plan['semesters']; i++) 
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
		sumArray['hours']=ArraySumStat(StatArray, 'hours');
		sumArray['zachets']=ArraySumStat(StatArray, 'zachets');
		sumArray['exams']=ArraySumStat(StatArray, 'exams');
		return sumArray;
	}
	
	
	function GetStatisticArray()
	{
		var StatisticArray = {};
		for(var i = 1; i <= plan['semesters']; i++)
		{
			StatisticArray[i]={'lections': 0, 'seminars':0, 'labs':0, 'selfwork':0, 'kurs_project':0, 'kurs_work':0, 'zuch_ed':0, 'zachets':0, 'exams':0, 'hours':0};
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
			StatisticArray[semester]['hours'] +=	Number($(this).data("hours"));
			
			
			
			if(Number($(this).data("type"))==1)
				StatisticArray[semester]['zachets'] += 1;
			else if(Number($(this).data("type"))==2)
				StatisticArray[semester]['exams'] += 1;
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
			
			var tile__name = document.createElement('div');
            tile__name.className = 'tile__name';
            tile__name.innerHTML = '';
			
			//console.log(tile__name);
			
			var statistics = document.createElement('div');
            statistics.className = 'statistics';
            statistics.innerHTML = '';
			
			var list_group = document.createElement('ul');
            list_group.className = 'list-group list-group-flush';
            list_group.innerHTML = '';
			
			
			if(statistica[index+1]['lections'] != 0) 
				list_group.innerHTML = list_group.innerHTML + "<li>Лекции: "+statistica[index+1]['lections']+ " часов("+procLections+"%)</li>";
			if(statistica[index+1]['seminars'] != 0) 
				list_group.innerHTML = list_group.innerHTML + "<li>Семинары: "+statistica[index+1]['seminars']+ " часов("+procSeminars+"%)</li>";
			if(statistica[index+1]['labs'] != 0) 
				list_group.innerHTML = list_group.innerHTML + "<li>Лабораторная работа: "+statistica[index+1]['labs']+ " часов("+procLabs+"%)</li>";
			if(statistica[index+1]['selfwork'] != 0) 
				list_group.innerHTML = list_group.innerHTML + "<li>Самостоятельная работа: "+statistica[index+1]['selfwork']+ " часов("+procSelfworks+"%)</li>";
			
			
			
			
			
			if(statistica[index+1]['kurs_project'] != 0) 
				list_group.innerHTML = list_group.innerHTML + "<li>Курсовых проектов: "+statistica[index+1]['kurs_project']+ "</li>";
			
			if(statistica[index+1]['kurs_work'] != 0) 
				list_group.innerHTML = list_group.innerHTML + "<li>Курсовых работ: "+statistica[index+1]['kurs_work']+ "</li>";
			
			if(statistica[index+1]['zachets'] != 0) 
				list_group.innerHTML = list_group.innerHTML + "<li>Зачетов: "+statistica[index+1]['zachets']+ "</li>";
			
			if(statistica[index+1]['exams'] != 0) 
				list_group.innerHTML = list_group.innerHTML + "<li>Экзаменов: "+statistica[index+1]['exams']+ "</li>";
			
			if(statistica[index+1]['zuch_ed'] != 0) 
				list_group.innerHTML = list_group.innerHTML + "<li>Зачетных единиц: "+statistica[index+1]['zuch_ed']+ "("+statistica[index+1]['hours']+" часов)</li>";
			
			statistics.innerHTML = $(list_group).html();
			tile__name.innerHTML = $(statistics).html();
			$(this).html(tile__name);
			
			//$(this).html("<div class='tile__name'>"+(index+1)+"</div><div class='statistics'><ul class='list-group list-group-flush'><li>Курсовых проектов: "+statistica[index+1]['kurs_project']+} "</li><li>Курсовых работ: "+statistica[index+1]['kurs_work']+"</li><li>Зачетов: "+statistica[index+1]['zachets']+"</li><li>Экзаменов: "+statistica[index+1]['exams']+"</li><li>Зачетных единиц: "+statistica[index+1]['zuch_ed']+"</li><li>Часов суммарно: "+statistica[index+1]['hours']+"</li></ul></div>");
		});
		
		
		$(".SumStatistics1").html("");
		$(".SumStatistics2").html("");
		$(".SumStatistics3").html("");
		$(".SumStatistics4").html("");
		
		if(Number(sumStatistics['lections']) !=0)
			$(".SumStatistics1").append("<li>Лекции: "+sumStatistics['lections']+"</li>");
		
		if(Number(sumStatistics['seminars']) !=0)
			$(".SumStatistics1").append("<li>Семинары: "+sumStatistics['seminars']+"</li>");
		
		if(Number(sumStatistics['labs']) !=0)
			$(".SumStatistics1").append("<li>Лабораторная работа: "+sumStatistics['labs']+"</li>");
		
		if(Number(sumStatistics['selfwork']) !=0)
			$(".SumStatistics1").append("<li>Самостоятельная работа: "+sumStatistics['selfwork']+"</li>");
		
		if(Number(sumStatistics['kurs_project']) !=0)
			$(".SumStatistics1").append("<li>Курсовые проекты: "+sumStatistics['kurs_project']+"</li>");
		
			
		if(Number(sumStatistics['kurs_work']) !=0)
			$(".SumStatistics1").append("<li>Курсовые работы: "+sumStatistics['kurs_work']+"</li>");
		
		if(Number(sumStatistics['zachets']) !=0)
			$(".SumStatistics1").append("<li>Зачеты: "+sumStatistics['zachets']+"</li>");
		
		if(Number(sumStatistics['exams']) !=0)
			$(".SumStatistics1").append("<li>Экзамены: "+sumStatistics['exams']+"</li>");
		
		if(Number(sumStatistics['zuch_ed']) !=0)
			$(".SumStatistics1").append("<li>Зачетные единицы: "+sumStatistics['zuch_ed']+"("+sumStatistics['hours']+" часов)</li>");
		
	}
	
	
	function ValidSemestersZaglushka()
	{
		$("div.layer").each(function( index ) 
		{
			if($(this).find(".tile__list").find('.subject').toArray().length>0)
			{
				$(this).find(".tile__list").find('.zaglushka').hide();
			}
			else
			{
				$(this).find(".tile__list").find('.zaglushka').show();
			}
		});
	}
	
	function editerka()
	{
		$(".subject").dblclick(function (e) {
			$("#pills-main-tab").click();
			$("#editorForm").modal("show")
			$("#ehours").val($(this).data("hours"));
			$("#ename").val($(this).data("name"));
			$("#etype").val($(this).data("type"));
			$("#elections").val($(this).data("lections"));
			$("#eseminars").val($(this).data("seminars"));
			$("#elabs").val($(this).data("labs"));
			$("#eselfwork").val($(this).data("selfwork"));
			$("#epart").val($(this).data("part"));
			$("#ebgcolor").val($(this).data("bg_color"));
			$("#etextcolor").val($(this).data("text_color"));
			
			if($(this).data("kurs_project")==1)
				$("#ekurs_project").prop('checked', true);
			else
				$("#ekurs_project").prop('checked', false);
			
			if($(this).data("kurs_work")==1)
				$("#ekurs_work").prop('checked', true);
			else
				$("#ekurs_work").prop('checked', false);
			
			editable_item = $(this);
			
			
			CleanTargets();
			var targets = $(this).data("targets");
			for (let i=0; i<targets.length; i++) {
				AddTarget(targets[i]);
			}
			
			CleanTasks();
			var tasks = $(this).data("tasks");
			for (let i=0; i<tasks.length; i++) {
				AddTask(tasks[i]);
			}
			
			CleanCompetences();
			var competences = $(this).data("competences");
			console.log("comp :::");
			console.log(competences); 
			for (let i=0; i<competences.length; i++) {
				AddCompetence(competences[i]['code'],competences[i]['name'],competences[i]['knowledges'],competences[i]['crafts'],competences[i]['skills'],);
			}
			
			CleanThemes();
			var themes = $(this).data("themes");
			for (let i=0; i<themes.length; i++) {
				AddTheme(themes[i]['name'],themes[i]['description'],themes[i]['hours'],themes[i]['type']);
			}
			
			CleanBibliographys();
			var bibliographys = $(this).data("bibliographys");
			for (let i=0; i<bibliographys.length; i++) {
				AddBibliography(bibliographys[i]);
			}
			
			CleanSoftwares();
			var softwares = $(this).data("softwares");
			for (let i=0; i<softwares.length; i++) {
				AddSoftware(softwares[i]);
			}
			
		});
	}

	editerka();
	
	function updateVal(currentEle, value) {
	  $(currentEle).html('<input class="thVal" type="text" value="' + value + '" />');
	  $(".thVal").focus();
	  $(".thVal").keyup(function (event) {
		  if (event.keyCode == 13) {
			  $(currentEle).html($(".thVal").val());
		  }
	  });

	  $(document).click(function () { // you can use $('html')
			$(currentEle).html($(".thVal").val());
	  });
	}

	function CurrentState() {
		var summator=0;
		$( ".subject" ).each(function( index ) {
			summator +=Number($(this).data('name').length)+Number($(this).data('zuch_ed'))+Number($(this).data('hours'))+Number($(this).data('semester'))+ Number($(this).data('delete'));
		});
		return summator;
	}
	
	function SaveChanges() {
		var Subjects=[];
		$( ".subject" ).each(function( index ) {
			var test={'name':'test', 'zuch_ed':'1'};
			
			test['id']=$(this).data('id');
			test['name']=$(this).data('name');
			test['zuch_ed']=$(this).data('zuch_ed');
			test['hours']=$(this).data('hours');
			test['semester']=$(this).data('semester');
			test['delete']=$(this).data('delete');
			test['position']=index;

			test['type']=$(this).data("type");
			test['lections']=$(this).data("lections");
			test['seminars']=$(this).data("seminars");
			test['labs']=$(this).data("labs");
			test['selfwork']=$(this).data("selfwork");
			test['part']=$(this).data("part");
			
			test['kurs_project']=$(this).data("kurs_project");
			test['kurs_work']=$(this).data("kurs_work");
			
			test['bg_color']=$(this).data("bg_color");
			test['text_color']=$(this).data("text_color");
			
			test['targets']=$(this).data("targets");
			test['tasks']=$(this).data("tasks");
			test['competences']=$(this).data("competences");
			test['themes']=$(this).data("themes");
			test['bibliographys']=$(this).data("bibliographys");
			test['softwares']=$(this).data("softwares");
			
			Subjects.push(test);
		});
		console.log(JSON.stringify(Subjects));
		
		var data_s = JSON.stringify(Subjects);
		
		var jsonka={};
		
		$.urlParam = function(name){
			var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
			return results[1] || 0;
		}
		
		jsonka['subjects']=Subjects;
		jsonka['module']='subjects';
		jsonka['action']='save';
		jsonka['id']=$.urlParam('id');
		console.log(jsonka['id']);
		
		$.ajax({
			url: 'api/index.php?module=subjects&action=save&id='+$.urlParam('id'),
			method: "POST",
			type: "POST",
			data: jsonka,
			error: function(errMsg) 
			{
				console.log(errMsg);
			},
			success: function(msg)
			{
				FillPlanSubjects();
				console.log(msg);
			}
		});
	}
	
	$("#SaveChanges").click(function() {
		SaveChanges();
		console.log(StartStateChanges);
	});
	
	$(function() {
		$('.blocked').sortable({});
	});
	
	
function Unloader()
{ 
	var o = this; 

	this.unload = function(evt) 
	{ 
		var message = "Вы уверены, что хотите покинуть страницу? Не сохраненные изменения могут быть потеряны"; 
		var CurrentStateChanges = CurrentState();
		if (typeof evt == "undefined") { 
			evt = window.event; 
		} 
		
		if (evt&&(CurrentStateChanges!=StartStateChanges)) { 
			//SaveChanges();
			evt.returnValue = message; 
		} 
		if(CurrentStateChanges!=StartStateChanges)
		{
			return message; 
		}
	} 

	this.resetUnload = function() 
	{ 
		$(window).off('beforeunload', o.unload); 

		setTimeout(function(){ 
		$(window).on('beforeunload', o.unload); 
		}, 2000); 
	} 

	this.init = function() 
	{ 

		$(window).on('beforeunload', o.unload); 
		$('a').on('click', function(){o.resetUnload}); 
		$(document).on('submit', 'form', function(){o.resetUnload}); 
		$(document).on('keydown', function(event){ 
			if((event.ctrlKey && event.keyCode == 116) || event.keyCode == 116){ 
				o.resetUnload; 
			} 
		}); 
	} 
	this.init(); 
} 

$(function(){ 
	if(typeof window.obUnloader != 'object') 
	{ 
		window.obUnloader = new Unloader(); 
	} 
})

function GetStartState() {
  StartStateChanges = CurrentState();
}

setTimeout(GetStartState, 1000);

//Editor form targets
$("#add_target").click(function (e) {
	AddTarget('');
});

function AddTarget(value) {
	$(".targets").append(`<div class="target">
	
		<div class="input-group mb-3">
			<input type="text" name="etarget_name" class="form-control target_name" placeholder="" aria-label="" aria-describedby="basic-addon1" value="`+value+`">
			<div class="input-group-append">
				<button class="btn btn-outline-danger" type="button" onclick="return delete_target(this);">Удалить</button>
			</div>
		</div>
	</div>`);
};

function CleanTargets() {
	$(".targets").html('');
};


function delete_target(element) {
	$(element).parent().parent().parent().remove();
};


//Editor form tasks
$("#add_task").click(function (e) {
	AddTask('');
});

function delete_task(element) {
	$(element).parent().parent().parent().remove();
};

function AddTask(value) {
	$(".tasks").append(`<div class="task">
		<div class="input-group mb-3">
			<input type="text" name="etask_name" class="form-control task_name" placeholder="" aria-label="" aria-describedby="basic-addon1" value="`+value+`">
			<div class="input-group-append">
				<button class="btn btn-outline-danger" type="button" onclick="return delete_task(this);">Удалить</button>
			</div>
		</div>
	</div>`);
};

function CleanTasks() {
	$(".tasks").html('');
};

//Editor form competence
$("#add_competence").click(function (e) {
	AddCompetence('','','','','',);
});

function delete_competence(element) {
	console.log($(element));
		$(element).parent().remove();
};

function AddCompetence(competence_code,competence_name,competence_knowledges,competence_crafts,competence_skills) {
	$(".competences").append(`<div class="competence">
	<div class="row">
	<div class="col-sm">
	<label for="ecompetence_code">Код:</label>
	<input type="text" name="ecompetence_code" class="form-control competence_code" value="`+competence_code+`">
	</div>
	<div class="col-sm">
	<label for="ecompetence_name">Название:</label>
	<input type="text" name="ecompetence_name" class="form-control competence_name" value="`+competence_name+`">
	</div>
	</div>
	<label for="ecompetence_knowledges">Знания:</label>
	<input type="text" name="ecompetence_knowledges" class="form-control competence_knowledges" value="`+competence_knowledges+`">
	<label for="ecompetence_crafts">Умения:</label><input type="text" name="ecompetence_crafts" class="form-control competence_crafts" value="`+competence_crafts+`">
	<label for="ecompetence_skills">Навыки:</label><input type="text" name="ecompetence_skills" class="form-control competence_skills" value="`+competence_skills+`">
	<button type="button" class="btn btn-danger" onclick="return delete_task(this);">Удалить</button><br>
	</div>`);
};

function CleanCompetences() {
	$(".competences").html('');
};

//Editor form themes
$("#add_theme").click(function (e) {
	AddTheme('','','','');
});

function delete_theme(element) {
	console.log($(element));
		$(element).parent().remove();
};

function AddTheme(theme_name, theme_description, theme_hours, theme_type) {
	
	var new_theme = document.createElement('div');
            new_theme.className = 'theme';
            new_theme.innerHTML = `<label for="etheme_name">Название:</label>
			<input type="text" name="etheme_name" class="form-control theme_name">
			<label for="etheme_description">Краткое описание:</label>
			<input type="text" name="etheme_description" class="form-control theme_description">
			<label for="etheme_hours">Длительность(часов):</label>
			<input type="number" name="etheme_hours" class="form-control theme_hours">
			<label for="etheme_type">Вид нагрузки:</label>
			<select class="form-control theme_type" id="etheme_type" name="etheme_type">
			<option value="1">Лекция</option>
			<option value="2">Семинар</option>
			<option value="3">Лабораторная работа</option>
			<option value="4">Самостоятельная работа</option>
			</select>
			<button type="button" class="btn btn-danger" onclick="return delete_task(this);">Удалить</button><br>`;
	if(theme_type == '')
		$(new_theme).find('.theme_type').val(1);
	else
		$(new_theme).find('.theme_type').val(theme_type);
	$(new_theme).find('.theme_hours').val(theme_hours);
	$(new_theme).find('.theme_description').val(theme_description);
	$(new_theme).find('.theme_name').val(theme_name);
			
	$(".themes").append(new_theme);
};

function CleanThemes() {
	$(".themes").html('');
};

//Editor form bibliographys
$("#add_bibliography").click(function (e) {
	AddBibliography('');
});

function delete_bibliography(element) {
	$(element).parent().parent().parent().remove();
};

function AddBibliography(value) {
	
	$(".bibliographys").append(`<div class="bibliography">
		<div class="input-group mb-3">
			<input type="text" name="ebibliography_name" class="form-control bibliography_name" placeholder="" aria-label="" aria-describedby="basic-addon1" value="`+value+`">
			<div class="input-group-append">
				<button class="btn btn-outline-danger" type="button" onclick="return delete_bibliography(this);">Удалить</button>
			</div>
		</div>
	</div>`);
};

function CleanBibliographys() {
	$(".bibliographys").html('');
};

//Editor form softwares
$("#add_software").click(function (e) {
	AddSoftware('');
});

function delete_software(element) {
	$(element).parent().parent().parent().remove();
};

function AddSoftware(value) {
	$(".softwares").append(`<div class="software">
		<div class="input-group mb-3">
			<input type="text" name="esoftware_name" class="form-control software_name" placeholder="" aria-label="" aria-describedby="basic-addon1" value="`+value+`">
			<div class="input-group-append">
				<button class="btn btn-outline-danger" type="button" onclick="return delete_software(this);">Удалить</button>
			</div>
		</div>
	</div>`);
};

function CleanSoftwares() {
	$(".softwares").html('');
};