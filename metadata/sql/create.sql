use domain;

DROP TABLE IF EXISTS t_domain;
DROP TABLE IF EXISTS t_header;

CREATE TABLE t_domain(
	id int primary key auto_increment,
	domain varchar(128) not null unique,
	grade int default 0,
	image varchar(256) null,
	create_time TIMESTAMP default now()
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create index idx_grade on t_domain(grade);

CREATE TABLE t_header(
	id int primary key auto_increment,
	domain varchar(128) not null unique,
	title varchar(512) null,
	lang varchar(128) null,
	charset varchar(64) null,
	icon varchar(256) null,
	keywords varchar(512) null,
	description varchar(512) null,
	create_time TIMESTAMP default now()
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
