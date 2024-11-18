drop sequence imsapx.sw_ausoug_Seq;
drop table imsapx.sw_rating;
drop table imsapx.sw_books;
drop table imsapx.sw_authors;
drop table imsapx.sw_choice;
drop table imsapx.sw_issues;
drop table imsapx.sw_responsive;

drop public synonym sw_ausoug_seq;
drop public synonym sw_rating;
drop public synonym sw_books;
drop public synonym sw_authors;
drop public synonym sw_choice;
drop public synonym sw_issues;
drop public synonym sw_responsive;

create sequence imsapx.sw_ausoug_Seq;
create table imsapx.sw_authors(
  id number not null
 ,name varchar2(100) not null
 ,code varchar2(5) not null
 ,CONSTRAINT sw_author_PK  PRIMARY KEY  (id) 
);
/
CREATE UNIQUE INDEX IMSAPX.sw_authors_code_UK ON IMSAPX.sw_authors(code);
CREATE UNIQUE INDEX IMSAPX.sw_authors_name_UK ON IMSAPX.sw_authors(name);
create table imsapx.sw_books (
   id number not null
  ,auth_id number not null
  ,title varchar2(200) not null
  ,published number not null
  ,genre varchar2(50)  -- science fiction, thriller, non fiction, action
  -- narrator 
  ,CONSTRAINT sw_book_PK  PRIMARY KEY  (id) 
  ,CONSTRAINT sw_book_author_fk FOREIGN KEY (auth_id) REFERENCES imsapx.sw_authors(id)
);
CREATE UNIQUE INDEX IMSAPX.sw_books_title_UK ON IMSAPX.sw_books(auth_id, title);

create table imsapx.sw_choice (
   id number not null
  ,book_id number not null
  ,reason varchar2(200) not null
  ,CONSTRAINT sw_choice_PK  PRIMARY KEY  (id) 
  ,CONSTRAINT sw_choice_book_fk FOREIGN KEY (book_id) REFERENCES imsapx.sw_books(id)
);


create table imsapx.sw_rating(
   id number not null
  ,book_id number not null
  ,rating number not null
  ,consumption varchar2(20) default 'Book' 
  ,created_Date date default sysdate not null
  ,notes varchar2(4000)
  ,CONSTRAINT sw_rating_PK  PRIMARY KEY  (id) 
  ,constraint sw_rating_value_chk check (round(rating) between 1 and 5)
  ,constraint sw_rating_mode_chk check (consumption in ('Audiobook','Book'))
  ,CONSTRAINT sw_rating_book_fk FOREIGN KEY (book_id) REFERENCES imsapx.sw_books(id)
);

create table imsapx.sw_issues(
   id number not null
  ,title varchar2(100)
  ,icon varchar2(40)
  ,classes varchar2(200)
  ,location varchar2(200)
  ,descr varchar2(4000)
  ,outcome varchar2(100)
  ,code varchar2(400)
  ,notes varchar2(4000)
  ,CONSTRAINT sw_issue_PK  PRIMARY KEY  (id) 
);

create table imsapx.sw_responsive(
   id number not null
  ,label varchar2(100)
  ,class_prefix varchar2(100)
  ,class_down varchar2(100)
  ,class_up varchar2(100)
  ,px_pre_212 number
  ,px_limit number
  ,CONSTRAINT sw_resp_PK  PRIMARY KEY  (id) 
);


COMMENT ON TABLE  IMSAPX.sw_authors IS 'List of book authors';
COMMENT ON COLUMN IMSAPX.sw_authors.code IS 'Lookup reference for ease of use';


create public synonym sw_ausoug_seq for imsapx.sw_ausoug_Seq;
create public synonym sw_authors for imsapx.sw_authors;
create public synonym sw_books for imsapx.sw_books;
create public synonym sw_rating for imsapx.sw_rating;
create public synonym sw_choice for imsapx.sw_choice;
create public synonym sw_issues for imsapx.sw_issues;
create public synonym sw_responsive for imsapx.sw_responsive;


