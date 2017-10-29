DROP TABLE Appointments;
DROP TABLE Clients;
DROP TABLE Trainers;

CREATE TABLE Clients (
	CName varchar(30) NOT NULL,
	Email varchar(30) NOT NULL,
	HRStart SMALLINT,
	HRDuring SMALLINT,
	HRAfter SMALLINT,
	BPressure SMALLINT,
	Weight DECIMAL(7,2),
	Height SMALLINT,
	BMI DECIMAL(7,2),
	PRIMARY KEY (CName)
);

CREATE TABLE Trainers (
	TName VARCHAR(30) NOT NULL,
	EMAIL VARCHAR(30) NOT NULL,
	PRIMARY KEY (TName)
);

CREATE TABLE Appointments (
	CName VARCHAR(30) NOT NULL,
	TName VARCHAR(30) NOT NULL,
	Date Date NOT NULL,
	PRIMARY KEY (CName, TName, Date),
	FOREIGN KEY (CName) REFERENCES Clients(CName),
	FOREIGN KEY (TName) REFERENCES Trainers(TName),
);