CREATE TABLE myTable(
	ID	INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) DEFAULT "",
	age INT NOT NULL,
	foreing ID INT NOT NULL ,
	CONSTRAINT checkAge CHECK(age>0 AND age<120)
)

CREATE TABLE secondTable(
	ID2 INT NOT NULL UNIQUE AUTO_INCREMENT,
	field FLOAT DEFAULT 1.5
)

#add the connection through the foreign key
ALTER TABLE myTable
ADD FOREIGN KEY (foreignID) REFERENCES secondTable(ID2)
#this would address a 1-many relationship

#add or drop a column
ALTER TABLE myTable
ADD Birthday
DELETE age;
