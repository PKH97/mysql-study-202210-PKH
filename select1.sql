/*=====================<select 1>======================*/
select 
	id, 
    `name`, 
    age /*1. select과 from사이에는 찾고자하는 이름만 넣어 불러 올 수 있다.*/
from 
	`student_study_mst` /*2. 예약어와 테이블 이름은 ``로 감싸 충돌을 막는다.*/
where 
	`name` like '%경%' /*3. %()는 앞, %()%는 무엇이든, ()%는 끝자리의 ()를 찾는다*/
/*and `name` like '김%';*/
or `name` like '김%'; /*4. and와 or를 사용하여 조건을 달아 찾을 수 있다.*/


select
	*
from
	student_study_mst
where
	/* age >= 25
and age <= 30;*/
	age between 25 and 30; /* 위아래는 같다.*/


/*not사용법*/    
select
	*
from
	student_study_mst
where
	-- age not between 25 and 30; 
    not age = 25; /* !=도 사용가능하지만 not을 더 많이 사용.*/


/*null사용법*/
select
	*
from
	student_study_mst
where
    age is not null ;

    
    
    
    
    
