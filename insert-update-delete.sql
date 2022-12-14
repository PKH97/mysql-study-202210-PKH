/*
	DML
    insert	C	데이터 추가
    select	R	데이터 조회
    update	U	데이터 수정
    delete	D	데이터 삭제
*/
set sql_safe_updates = 0;
select * from student_study_mst;

/*=====================<insert>======================*/
insert into student_study_mst
	(id, name, age) 
values
	(1, '정빈', 20);
insert into student_study_mst(name, id, age) values('김규민', 2, 17);
insert into student_study_mst(name, id) values('박경효', 26); /*-> 표에서 더블클릭시 수정가능(리드온리 아닐시에만)*/
insert into student_study_mst values(3, '김혜진', 26);

insert into student_study_mst
values /*DB에서는 무조건 ''이걸 사용. ""사용x*/
	(5, '윤도영', 25),
	(6, '홍성욱', 25),
	(7, '김경민', 32),
	(8, '장혜진', 26);
    
/*=====================<update>======================*/
select * from student_study_mst;

update student_study_mst
set /*-> =이 대입연산자*/
	name = '정순동',
    age = 22
where /*-> =이 비교연산자*/
	id = 6;

update student_study_mst
set
	age = age + 1
where
	id = 6;

/*=====================<delete>======================*/
delete
from
	student_study_mst
where
	id = 1;
/* <실수를 줄이는 방법>
- 무조건 key값으로 삭제해라.
*/








