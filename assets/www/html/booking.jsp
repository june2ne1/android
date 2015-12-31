<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%




%>
<!DOCTYPE html>
<html>
    <head>
      
        <meta http-equiv="Content-Type" content="default-src 'self' data: gap: https://ssl.gstatic.com 'unsafe-eval'; style-src 'self' 'unsafe-inline'; media-src *">
        <meta name="format-detection" content="telephone=no" charset="UTF-8">
        <meta name="msapplication-tap-highlight" content="no">
        <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width">
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
		<link rel="stylesheet" type="text/css" href="../css/index.css">
		<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    </head>
    <body>
								<h4>영화</h4>
								<label class="ticket_link">영화 예매하기</label> <br />
								<div id="movie_list"></div>
	
								<input type="button" value="예매하기" id="btn_click" />
							
		
<script type="text/javascript">
        $(function(){
        	movie.list();
        }
        var movie = {
        		list : function(){
    				$.getJSON('http://pheonix0717.cafe24.com/movie/movie_info',function(data){
    					var list = '';
    					var link = '<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />';
    					var js = '<script src="http://code.jquery.com/jquery-1.11.1.min.js"/>';
    					var jsMobile ='<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"/>';
    					var listView = '<ul data-role="listview">';
    					$each(data.movieList,function(index,value){
    						listView  += '<li><a href="#" id="'+this.filmNumber+'">'+this.filmName+'</a></li>';
    					});
    					listView += '</ul>';
    					list = link+js+jsMobile+listView;
    					$('#movie_list').html(list);
    				});
    			}
    			
    	};


</script>

</body>	