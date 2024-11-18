delete sw_choice
delete sw_rating;
delete sw_books;
delete sw_responsive;
delete sw_authors;

prompt authors
insert into sw_authors values(sw_ausoug_Seq.nextval, 'A.G. Riddle','AGR');
insert into sw_authors values(sw_ausoug_Seq.nextval, 'Arthur C Clarke','ACC');
insert into sw_authors values(sw_ausoug_Seq.nextval, 'Mary Robinette Kowal','MRK');
insert into sw_authors values(sw_ausoug_Seq.nextval, 'Adrian Tchaikovsky','AT');
insert into sw_authors values(sw_ausoug_Seq.nextval, 'Kim Stanley Robinson','KSR');
insert into sw_authors values(sw_ausoug_Seq.nextval, 'Andy Weir','AW');
insert into sw_authors values(sw_ausoug_Seq.nextval, 'Matthew Reilly','MR');
insert into sw_authors values(sw_ausoug_Seq.nextval, 'Mary Roach','MRO');
insert into sw_authors values(sw_ausoug_Seq.nextval, 'Bill Bryson','BB');
insert into sw_authors values(sw_ausoug_Seq.nextval, 'Holly Craig','HC');

  -- science fiction, thriller, non fiction, action


prompt books
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'BB')
 ,'A Short History of Nearly Everything', 2003, 'Non-fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'BB')
 ,'At Home: A Short History of Private Life', 2010, 'Non-fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'BB')
 ,'Down Under', 2000, 'Non-fiction');

insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'HC')
 ,'The Rip', 2024, 'Thiller');

insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'MRO')
 ,'Stiff', 2003, 'Non-fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'MRO')
 ,'Gulp', 2013, 'Non-fiction');

insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'MR')
 ,'The Secret Runners of New York', 2019, 'Action');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'MR')
 ,'Scarecrow', 2003, 'Action');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'MR')
 ,'Ice Station', 1998, 'Action');


insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'MRK')
 ,'The Calculating Stars', 2018, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'MRK')
 ,'The Fated Sky', 2018, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'MRK')
 ,'The Relentless Moon', 2020, 'Science Fiction');

insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'AT')
 ,'Children of Time', 2015, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'AT')
 ,'Children of Ruin', 2019, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'AT')
 ,'Children of Memory', 2022, 'Science Fiction');

insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'ACC')
 ,'2001 Space Odyssey', 1968, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'ACC')
 ,'Rendezvous with Rama', 1973, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'ACC')
 ,'Fall of Moondust', 1961, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'ACC')
 ,'The Light of Other Days', 2000, 'Science Fiction');

insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'AW')
 ,'Artemis', 2017, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'AW')
 ,'The Martian', 2011, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'AW')
 ,'Project Hail Mary', 2021, 'Science Fiction');

insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'KSR')
 ,'Icehenge', 1984, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'KSR')
 ,'Red Mars', 1992, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'KSR')
 ,'Green Mars', 1993, 'Science Fiction');
insert into sw_books values (sw_ausoug_Seq.nextval 
 ,(select id from sw_authors where code = 'KSR')
 ,'Blue Mars', 1996, 'Science Fiction');
 
prompt rating 
insert into sw_rating values (sw_ausoug_Seq.nextval
 ,(select id from sw_books where title like 'Red%' and rownum = 1)
 ,5, 'Book', sysdate, null);
insert into sw_rating values (sw_ausoug_Seq.nextval
 ,(select id from sw_books where title like '%Children%Time%' and rownum = 1)
 ,5, 'Book', sysdate, 'Possibly best scifi journey I''ve had');
insert into sw_rating values (sw_ausoug_Seq.nextval
 ,(select id from sw_books where title like 'Project%' and rownum = 1)
 ,5, 'Audiobook', sysdate, 'Looking forward to the movie');
insert into sw_rating values (sw_ausoug_Seq.nextval
 ,(select id from sw_books where title like '%Light%Days%' and rownum = 1)
 ,5, 'Book', sysdate, 'Scenes from this live rent free in my head');

prompt editor choice
insert into sw_choice values (sw_ausoug_Seq.nextval
 ,(select id from sw_books where title like '%Light%Days%' and rownum = 1)
 ,'Scenes from this live rent free in my head');
insert into sw_choice values (sw_ausoug_Seq.nextval
 ,(select id from sw_books where title like '%Children%Time%' and rownum = 1)
 ,'Possibly best scifi journey I''ve had');
insert into sw_choice values (sw_ausoug_Seq.nextval
 ,(select id from sw_books where title like '%Project%' and rownum = 1)
 ,'Looking forward to the movie');
insert into sw_choice values (sw_ausoug_Seq.nextval
 ,(select id from sw_books where title like 'Red%' and rownum = 1)
 ,'Greatest space opera trilogy - wen series');

delete sw_issues;
insert into sw_issues(id, title, icon, classes, descr, outcome, location)
values (sw_ausoug_seq.nextval
 ,'Hidden dummy field' -- title
 ,'fa fa-emoji-cool' -- icon
 ,'u-color-5-text' -- classes
 ,'(Place hideme in correct APEX attribute)' -- descr
 ,'UI' -- misc
 ,'Authors'
 );
insert into sw_issues(id, title, icon, classes, descr, outcome, location)
values (sw_ausoug_seq.nextval
 ,'Trim leading zero for numerics' -- title
 ,'fa fa-emoji-cool' -- icon
 ,'u-color-5-text' -- classes
 ,'Native behaviour' -- descr
 ,'Good thing' -- misc
 ,'List Books'
 );
insert into sw_issues(id, title, icon, classes, descr, outcome, location, code)
values (sw_ausoug_seq.nextval
 ,'Checkboxes with extra padding' -- title
 ,'fa fa-emoji-upside-down' -- icon
 ,'u-color-6-text' -- classes
 ,'One option of many' -- descr
 ,'UI' -- misc
 ,'List Books'
 ,'.apex-item-wrapper--single-checkbox{padding-top: 0px !important; padding-bottom: 0px !important;}'
 );
insert into sw_issues(id, title, icon, classes, descr, outcome, location, code)
values (sw_ausoug_seq.nextval
 ,'Shuttle showing extra padding' -- title
 ,'fa fa-emoji-upside-down' -- icon
 ,'u-color-6-text' -- classes
 ,'Mild issue, no discernable reason' -- descr
 ,'UI' -- misc
 ,'List Books'
 ,'.apex-item-group--shuttle select {padding-top: 8px;}'
 );
insert into sw_issues(id, title, icon, classes, descr, outcome, location)
values (sw_ausoug_seq.nextval
 ,'Hot Button directive' -- title
 ,'fa fa-emoji-upside-down' -- icon
 ,'u-color-6-text' -- classes
 ,'No big deal, low-code change' -- descr
 ,'UI' -- misc
 ,'List Books'
 ); 
 insert into sw_issues(id, title, icon, classes, descr, outcome, location)
values (sw_ausoug_seq.nextval
 ,'Flicker when opening inline dialog' -- title
 ,'fa fa-emoji-upside-down' -- icon
 ,'u-color-6-text' -- classes
 ,'Blink and you''ll miss it. Might be omnipresent.' -- descr
 ,'UI' -- misc
 ,'List Books'
 ); 
insert into sw_issues(id, title, icon, classes, descr, outcome, location)
values (sw_ausoug_seq.nextval
 ,'jQuery Selectors' -- title
 ,'fa fa-emoji-cringe' -- icon
 ,'u-color-9-text' -- classes
 ,'Problem if relying on classes managed internally by APEX - always been that way
   <br>Can do best to try be agnostic - hindsight helps' -- descr
 ,'Functional' -- misc
 ,'List Books, List Reviews'
 ); 
insert into sw_issues(id, title, icon, classes, descr, outcome, location, code)
values (sw_ausoug_seq.nextval
 ,'Varied width for pill button radio groups' -- title
 ,'fa fa-emoji-neutral' -- icon
 ,'u-color-6-text' -- classes
 ,'Could just embrace the change' -- descr
 ,'UI' -- misc
 ,'Edit Book'
 ,q'~$('#P35_GENRE .apex-item-option').css('width', 100/$('#P35_GENRE .apex-item-option').length+'%');~'
 );  
insert into sw_issues(id, title, icon, classes, descr, outcome, location, code)
values (sw_ausoug_seq.nextval
 ,'Collapsible Region clickability' -- title
 ,'fa fa-emoji-cringe' -- icon
 ,'u-color-9-text' -- classes
 ,'Problem if relying on classes managed internally by APEX - a little unlucky here?' -- descr
 ,'Functional' -- misc
 ,'Edit Book'
 ,q'~$(region_selector).find('.t-Region-titleButton').text(l_title);~' -- descr
 ); 
insert into sw_issues(id, title, icon, classes, descr, outcome, location)
values (sw_ausoug_seq.nextval
 ,'Different display behaviour with text area height 1' -- title
 ,'fa fa-emoji-cool' -- icon
 ,'u-color-5-text' -- classes
 ,'(natural improvement)' -- descr
 ,'UI' -- misc
 ,'Edit Book'
 ); 
insert into sw_issues(id, title, icon, classes, descr, outcome, location)
values (sw_ausoug_seq.nextval
 ,'Smaller font size in select list options' -- title
 ,'fa fa-emoji-cool' -- icon
 ,'u-color-5-text' -- classes
 ,'(could not recreate)' -- descr
 ,'No issue, unnecessary custom CSS?' -- misc
 ,'Edit Book'
 );  
insert into sw_issues(id, title, icon, classes, descr, outcome, location)
values (sw_ausoug_seq.nextval
 ,'Field location adjustments in grid layout when show/hide' -- title
 ,'fa fa-emoji-unamused' -- icon
 ,'u-color-8-text' -- classes
 ,'Latest UT retained position, previously anchored left' -- descr
 ,'Change in expected behaviour' -- misc
 ,'Edit Book'
 ); 
insert into sw_issues(id, title, icon, classes, descr, outcome, location,code)
values (sw_ausoug_seq.nextval
 ,'Underline in validation error' -- title
 ,'fa fa-emoji-unamused' -- icon
 ,'u-color-6-text' -- classes
 ,'Embrace the change?' -- descr
 ,'UI' -- misc
 ,'Edit Book'
 ,'.t-Alert--page a[href="#"] {text-decoration: underline;}'
 ); 
insert into sw_issues(id, title, icon, classes, descr, outcome, location,code)
values (sw_ausoug_seq.nextval
 ,'Validation Order (non UT)' -- title
 ,'fa fa-emoji-scream' -- icon
 ,'u-color-6-text' -- classes
 ,'Embrace the change - not much can be done beyond more explicit validations.
 <br>Better behaviour with Required attribute, and client side first.' -- descr
 ,'UI' -- misc
 ,'Edit Book'
 ,'.t-Alert--page a[href="#"] {text-decoration: underline;}'
 );  
insert into sw_issues(id, title, icon, classes, descr, outcome, location, code)
values (sw_ausoug_seq.nextval
 ,'Cards erroneously showing background colour' -- title
 ,'fa fa-emoji-cry' -- icon
 ,'u-color-7-text' -- classes
 ,'Shame to see, painful to find solution' -- descr
 ,'UI' -- misc
 ,'List Reviews'
 ,'#tiles-r .t-Card-colorFill{display:none;}'
 ); 
insert into sw_issues(id, title, icon, classes, descr, outcome, location, code)
values (sw_ausoug_seq.nextval
 ,'Native row-highlight overpowering cell colour' -- title
 ,'fa fa-emoji-cry' -- icon
 ,'u-color-8-text' -- classes
 ,'Shame to see, painful to find solution. CSS parameterisation new to me.' -- descr
 ,'UI' -- misc
 ,'List Reviews'
 ,'.u-color-1 {background-color: var(--u-color-1) !important;}'
 ); 
insert into sw_issues(id, title, icon, classes, descr, outcome, location, code)
values (sw_ausoug_seq.nextval
 ,'Button moved to within item not visible/clickable' -- title
 ,'fa fa-emoji-cringe' -- icon
 ,'u-color-8-text' -- classes
 ,'Simple fix to problem created by colouring outside the box' -- descr
 ,'Functional' -- misc
 ,'Edit Reviews'
 ,'z-index: 999;'
 );  
insert into sw_issues(id, title, icon, classes, descr, outcome, location,code)
values (sw_ausoug_seq.nextval
 ,'Alert text font size' -- title
 ,'fa fa-emoji-unamused' -- icon
 ,'u-color-6-text' -- classes
 ,'Is this really a problem?' -- descr
 ,'UI' -- misc
 ,'Home'
 ,'.t-Alert-body {font-size: 14px;}'
 );   
 
-- randomise ratings
declare rn number;
begin
delete sw_rating where notes is null;
 for r_Rec in (select b.* from sw_books b) loop
   for j_rec in (select null from dual connect by level < dbms_random.value(100,500)) loop 
   rn := floor(dbms_random.value(1,12)) ;
   insert into sw_rating (id, book_id, rating, consumption, created_date, notes)
    select sw_ausoug_Seq.nextval, r_rec.id
       -- tried to vary ratings instead of having consistent spread
       , case --floor(dbms_random.value(1,12))
         when rn between 1 and 3 then floor(dbms_random.value(5,6)) 
         when rn between 4 and 5 then floor(dbms_random.value(4,6)) 
         when rn between 6 and 7 then floor(dbms_random.value(3,5)) 
         when rn between 8 and 8 then floor(dbms_random.value(2,4)) 
         when rn between 9 and 11 then floor(dbms_random.value(2,3)) 
         end as rating
       , case floor(dbms_random.value(1,4))
         when 1 then 'Book'
         when 2 then 'Audiobook'
         when 3 then null
         end consumption
       , sysdate-dbms_random.value(1,1000) created_Date
       , null -- notes
    from dual;-- connect by level < dbms_random.value(100,500);   
    end loop;
 end loop;
 
 for r_Rec in (select * from sw_choice) loop
   insert into sw_rating (id, book_id, rating, consumption, created_date, notes)
   select sw_ausoug_Seq.nextval, r_rec.book_id, 5 
       , case floor(dbms_random.value(1,4))
         when 1 then 'Book'
         when 2 then 'Audiobook'
         when 3 then null
         end consumption
       , sysdate-dbms_random.value(1,1000) created_Date
       , null -- notes
   from dual connect by level < dbms_random.value(200,300);   
 end loop;
 commit;
end;
/

insert into sw_responsive (id, label, class_prefix, class_down, px_pre_212, px_limit) values(sw_ausoug_seq.nextval, 'XSS','col-xxs', 'hidden-xxs-down', 640  ,480  );
insert into sw_responsive (id, label, class_prefix, class_down, px_pre_212, px_limit) values(sw_ausoug_seq.nextval, 'XS' ,'col-xs' , 'hidden-xs-down' , 768  ,640  );
insert into sw_responsive (id, label, class_prefix, class_down, px_pre_212, px_limit) values(sw_ausoug_seq.nextval, 'SM' ,'col-sm' , 'hidden-sm-down' , 992  ,768  );
insert into sw_responsive (id, label, class_prefix, class_down, px_pre_212, px_limit) values(sw_ausoug_seq.nextval, 'MD' ,'col-md' , 'hidden-md-down' , 1200 ,992  );
insert into sw_responsive (id, label, class_prefix, class_down, px_pre_212, px_limit) values(sw_ausoug_seq.nextval, 'LG' ,'col-lg' , 'hidden-lg-down' , 4096 ,1200 );
insert into sw_responsive (id, label, class_prefix, class_down, px_pre_212, px_limit) values(sw_ausoug_seq.nextval, 'XL' ,'col-xl' , 'hidden-xl-down' , 4096 ,1400);
insert into sw_responsive (id, label, class_prefix, class_down, px_pre_212, px_limit) values(sw_ausoug_seq.nextval, 'XXL' ,'col-xxl' , 'hidden-xxl-down' , 4096 ,4096 );
update sw_responsive set class_up = replace(class_down,'down','up');

commit;
