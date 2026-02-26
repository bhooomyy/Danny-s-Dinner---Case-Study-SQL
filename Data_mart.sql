-- Convert the week_date to a DATE format
alter table weekly_sales
alter column week_date type VARCHAR(10);

update weekly_sales set week_date=to_date(week_date, 'dd-mm-yy');

alter table weekly_sales
alter column week_date type date
using to_date(week_date,'yyyy-mm-dd');
