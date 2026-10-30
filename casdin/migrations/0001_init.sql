create table if not exists departments(id integer primary key,name text unique not null);
create table if not exists courses(id integer primary key,code text not null,title text not null,department_id integer not null references departments(id),level integer not null,semester integer not null,description text default '',published integer default 1);
create table if not exists lectures(id integer primary key,title text not null,course_id integer not null references courses(id),lecture_date text default '',topic text default '',content text default '',author text default '',contributors text default '',reviewer text default '',status text default 'draft',created_at text,updated_at text,published_at text);
create table if not exists reports(id integer primary key,lecture_id integer references lectures(id) on delete cascade,message text,created_at text);
create index if not exists i_lec_pub on lectures(status,lecture_date);
create index if not exists i_lec_course on lectures(course_id);
create index if not exists i_course_dept on courses(department_id);
