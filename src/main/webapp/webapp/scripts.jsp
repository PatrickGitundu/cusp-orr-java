<script src="https://code.jquery.com/jquery-2.2.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<script>
	$(document).ready(function(){
	    $('.collapsible').collapsible();
	    $('select').material_select();
	    $('nav').pushpin({
	        top: 0,
	        bottom: 1000,
	        offset: 0
	      });
	  });	
</script>