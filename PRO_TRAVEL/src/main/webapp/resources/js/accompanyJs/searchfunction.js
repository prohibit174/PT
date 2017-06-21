$(function(){
var ct = 0;
var frm = $('.ajaxform');

console.log("gogo");

$(document).on('submit', '.ajaxform', function(e){
	/*$('.ajaxbtn').on('click', function(e){*/
    
    	
/*   frm.submit(function (e) {*/
    	console.log("search.js log = "+frm.serialize());
    	e.preventDefault();
        	
        $.ajax({
            type: frm.attr('method'),
            url: frm.attr('url'),
            data: frm.serialize(),
            success : function (data) {
            	var eachCounter = 0;
            	var htmlText = '<section class="results ajax-area" data-tmpl="athleteResults_tmpl">';
            	htmlText += '<div class="heading">';
            	htmlText += '<h2>Group Searching accompanies</h2>';
            	htmlText += '</div>';
            	htmlText += '<ul class="table2 ajax-content">';
            	htmlText += '<li>';
            		htmlText += '<div class="th col1"> Number </div>';
        				htmlText += '<div class="th col4"> Join </div>';
        					htmlText += '<div class="th col4"> Date </div>';
        						htmlText += '<div class="th col4"> Place </div>';
        							/*htmlText += '<div class="th col4"> Birth </div>';*/
        								htmlText += '<div class="th col4"> ID </div>'; 
        									htmlText += '<div class="th col4"> Detail </div>';
            									htmlText += '</li>';
            								

            	$(data).each(function(){
        		htmlText += '<li>';
            		htmlText += '<div class="th col1">'+(eachCounter+1)+'</div>';
        				htmlText += '<div class="th col4"><a class="groupJoin" href="#">  Join </a></div>';
        					htmlText += '<div class="th col4">'+data[eachCounter].tp_date+'</div>';
        						htmlText += '<div class="th col4">'+data[eachCounter].cor_region+'</div>';
        							/*htmlText += '<div class="th col4">'+data[eachCounter].u_birth+'</div>';*/
        								htmlText += '<div class="th col4">'+data[eachCounter].u_id+'</div>'; 
        									htmlText += '<div class="th col4"><a href=""> Detail </a></div>';
        										htmlText += '<input type="hidden" class="accomp_group_num" name="accomp_group_num" value="'+data[eachCounter].accomp_group_num+'">';
        											htmlText += '</li>';
            		eachCounter++;
            	})
            		htmlText += '</ul>';
            			htmlText += '</section>';	
            	
            	$('div.accompanyList').append(htmlText);
            	
            	
            },
            error: function (data) {
                console.log('An error occurred.');
            },
        });
    });






/*when + button click, add search option  */
 $(document).on('click','.appendcp',function() {
	if(ct <= 0){
		ct ++;
		$(this).parent('div')
		.append('<div class="row destination" style="font-size: 20px;">'+
		'<span class="label" style="margin-right: 80px;">destination</span>'+
		'<select class="label ajaxCity" style="margin-top: -5px; width: 150px" name="trav['+
		ct+
		'].city"><option class="locationName" style="margin-bottom: 10px">name</option>'+
		'<option value="Zurich">Zurich</option><option value="France">France</option>'+
		'<option value="Nice">Nice</option><option value="Brussels">Brussels</option>'+
		'<option value="Berlin">Berlin</option><option value="Munich">Munich</option>'+
		'<option value="Bern">Bern</option><option value="France">France</option>'+
		'<option value="Belgium">Belgium</option><option value="Germany">Germany</option>'+
		'<option value="Swiss" selected="selected">Swiss</option></select>'+
		'<span class="label" style="margin: 0 40px;">begin</span>'+
		'<input class="datepick label ajaxStart" type="text" name="trav['+
		ct+
		'].sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;"><span class="label" style="margin: 0 40px;">end</span>'+
		'<input class="datepick label ajaxEnd" type="text"  name="trav['+
		ct+
		'].edate" value="end" style="margin-top: -5px; padding: 0px; width: 150px;">'+
		'<img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30" style="margin-top: -5px;">'+
		'<img class="appendcm" src="../resources/images/accompany/miners.png" width="30" height="30" style="margin-top: -5px;"></div>');
	}else{
		ct ++;
		$('div.destination')
		.before('<div class="row stops" style="font-size: 20px; padding-bottom: 0px;">'+
		'<span class="label" style="margin-right: 80px;">stops</span>'+
		'<select class="label ajaxCity" style="margin-top: -5px; width: 150px" name="trav['+
		ct+
		'].city"><option class="locationName" style="margin-bottom: 10px">name</option>'+
		'<option value="Zurich">Zurich</option><option value="France">France</option>'+
		'<option value="Nice">Nice</option><option value="Brussels">Brussels</option>'+
		'<option value="Berlin">Berlin</option><option value="Munich">Munich</option>'+
		'<option value="Bern">Bern</option><option value="France">France</option>'+
		'<option value="Belgium">Belgium</option><option value="Germany">Germany</option>'+
		'<option value="Swiss" selected="selected">Swiss</option></select>'+
		'<span class="label" style="margin: 0 40px;">begin</span>'+
		'<input class="datepick label ajaxStart" type="text" name="trav['+
		ct+
		'].sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;">'+
		'<span class="label" style="margin: 0 40px;">end</span>'+
		'<input class="datepick label ajaxEnd" type="text"  name="trav['+
		ct+
		'].edate" value="end" style="margin-top: -5px; padding: 0px; width: 150px;">'+
		'<img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30" style="margin-top: -5px;">'+
		'<img class="appendcm" src="../resources/images/accompany/miners.png" width="30" height="30" style="margin-top: -5px;"></div>');
	}
	
	console.log("plus");
	ct += 1;
});
 
 
/*when - button click, delete search option  */ 
 $(document).on('click','.appendcm',function() {
 		console.log($(this).parent('div.row').attr('class'));
 		ct -= 1;
		$(this).parent('div.row').remove();
		
		
		console.log("minuse");
});

$('body').on('focus','.datepick', function(){
    $(this).datepicker({
    	changeYear : true,
    	changeMonth : true,
    	dateFormat : "yy/mm/dd",
   		 });
    });

$(document).on('click','.groupJoin',function() {
	event.preventDefault();
	var conf = confirm("Join this Group?");
	if(conf == true){
		$.ajax({
			type : 'POST',
			url : 'requestGroup',
			data : {
				"accomp_group_num" : $(this).parent().siblings('.accomp_group_num').val(),
				/*"u_id" :  $('.welcome > span.session').val(),*/
			},
			 success : function (data) {
				 alert(data);
			 }
		})
	}	
});
});