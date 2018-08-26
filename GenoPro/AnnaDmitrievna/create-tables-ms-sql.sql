

-- Create MsSQL table to dump the GenoPro content to the database

if exists(select name from sysobjects where name='GenoPro_individuals' and type='u')
drop table GenoPro_individuals
 

create table GenoPro_individuals
(
	id nvarchar(30) NOT NULL,
	Gender char(1),
	FirstName nvarchar(100),
	LastName nvarchar(100),
	Birth varchar(50),
	BirthDate datetime,
	IsDead bit,
	Comment nvarchar(2000)
)