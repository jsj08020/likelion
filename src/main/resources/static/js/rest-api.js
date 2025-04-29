$(document).ready(function(){
	
	//일별 박스오피스 조회
	$('#get-movie-btn').on('click',function(){
		
		
		var date = $('#date').val()

		date = date.replaceAll('-','');
		getMoviesFromAPI(date)
		
	});
	
	
	//todo 조회
	$('#get-todo-btn').on('click',function(){
		
		
		var todoId = $('#todo-id').val();
		
		
		
		
		
		$.ajax({
			url:'https://jsonplaceholder.typicode.com/todos/'+todoId,
			type:'get',
			data:{},
			success:function(json){
				
				$('#todo-list').empty();
				
				var color='';
				
				if(json.completed){
					color='blue';
				}
				else
				{
					color='red';
				}
				
				
				$('#todo-list').append(`
					<tr>
						<th scope="row">${json.userId}</th>
						<td>${json.id}</td>
						<td>${json.title}</td>
						<td style="color:${color}">${json.completed ? '완료' : '미완료 '}</td>
					</tr>
					
				`);
				

			},
			error:function(){
				$('#todo-list').empty()

				$('#todo-list').append(`
					<tr>
						<th scope="row">없음</th>
						<td>없음</td>
						<td>없음</td>
						<td>없음</td>
					</tr>
			`)}
		});
	});
	

	
});



function getMoviesFromAPI(date){
		$.ajax({
			url:'https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json',
			type:'get',
			data:{
				key:'77cccceb4d521f3a3a29c4fa7ca0eddb',
				targetDt:date
			},
			success:function(json){
				var movies = json['boxOfficeResult']['dailyBoxOfficeList'];
				
				$('#movie-list').empty();
				
				$.each(movies, function(index, movie){
					$('#movie-list').append(`
							<tr>
								<th scope="row">${movie.rank}</th>
								<td>${movie.movieNm}</td>
								<td>${movie.audiAcc}</td>
								<td>${movie.openDt}</td>
							</tr>
						
						`);
					
					
				});

			},
			error:function(error){}
		});
};