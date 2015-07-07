// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
	 $('input').on('ifToggled', function(event){
 	var x =  "#update" + this.name;
 	$(x).submit();

});
	 $('input').iCheck({
    checkboxClass: 'icheckbox_square-blue'});
	 $("#slct").select2({minimumResultsForSearch: Infinity}); 

});

$(document).on("click", "#hide_todo", function(){
   $("#mask").hide();
});
$(document).on("click", "#add_todo", function(){
   $("#mask").show();
});

$(document).on("click", "#submt_lnk", function(){
   $("#mainform").submit();
});