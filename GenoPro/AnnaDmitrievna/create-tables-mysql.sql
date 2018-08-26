

-- Create MySQL table to dump the GenoPro content to the database

drop table if exists GenoPro_individuals;
create table GenoPro_individuals
(
	id nvarchar(30) NOT NULL,
	Gender char,
	FirstName nvarchar(100),
	LastName nvarchar(100),
	Birth varchar(50),
	BirthDate datetime,
	IsDead bit,
	Comment text
)