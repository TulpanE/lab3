drop table if exists Tour;
drop table if exists Country;
drop table if exists User;
drop table if exists Travel;
drop table if exists Staff;

create table Country(
	id integer primary key autoincrement,
	name varchar(256) not null
);

create table Tour(
	id integer primary key autoincrement,
	country_id integer not null,
	price integer not null,
	foreign key (countryId) references Country(id)	
);

create table User(
	id integer primary key autoincrement,
	first_name varchar(256) not null,
	surname varchar(256) not null,
	phone_number varchar(12) not null unique
);

create table Travel(
	id integer primary key autoincrement,
	travel_id integer not null,
	start date,
	end date,
	user_id integer not null,
	foreign key (tour_id) references Tour(id),
	foreign key (user_id) references User(id) 
);

create table Staff(
	id integer primary key autoincrement,
	first_name varchar(256) not null,
	surname varchar(256) not null,
	number varchar(12) not null unique,
	plevel integer not null
);
