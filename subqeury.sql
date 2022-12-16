/*
	서브쿼리(하위쿼리)
	select 안에서 select 하는 방법
*/

/*문제: 서울대를 다니는 학생을 찾으세요*/

select
	*
from
	student_mst sm
    left outer join school_mst scm on(scm.school_id = sm.school_id)
where
	scm.school_name like '서울대%';
    

select
	*
from
	student_mst
where /*서브 쿼리 사용문*/
	school_id in (select
					school_id 
				from 
					school_mst 
				where 
					school_name like '서울대%'
				or school_name like '부산대%');

select
	*
from
	student_mst
where
	school_id in(1,3); /*in은 ()안의 값이 하나라도 포함되면 가져옴*/
    

select
	*,
    (select school_name from school_mst scm where scm.school_id = stm.school_id) as 번호
    /*-> 하나의 값만 찾을 수 있다*/
from
	student_mst;
    
    
set profiling = 1;
show profiles;
    
    
/*서브쿼리 단일*/
select
	*,
	(select
		count(*)
	from
		student_mst) as 총인원 /*<-함수이다.*/
from
	student_mst;

/*join + 서브쿼리*/
select
	*
from
	student_mst sm
	left outer join (select count(*) as 총원 from student_mst) sc on(1 = 1);

/*
서브쿼리는 join보다 단계가 많기 때문에
양이 많아진다면 속도의 차이가 커진다.
따라서 서브쿼리보다는 join이 가볍고 
서브쿼리는 정말 필요시에만 사용.
*/
/*
단, 경우에 따라 join의 안에 두번이상 select를 하게 되면
단일인 서브쿼리가 더 빠르다. 경우에 따라 빠른것을 사용하도록.
*/







    