alter table departments add column sort_order integer default 0;
alter table lectures add column week_no integer default 1;
alter table lectures add column unit_no integer default 0;
create index if not exists i_lec_course_order on lectures(course_id,week_no,unit_no);
