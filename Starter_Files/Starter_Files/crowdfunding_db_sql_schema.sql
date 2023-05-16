-- create tables and import csv's
CREATE TABLE categories (
	category_id VARCHAR (30) NOT NULL,
	category VARCHAR(30) NOT NULL,
	PRIMARY KEY (category_id));

-- View table
SELECT * FROM categories;

CREATE TABLE subcategories (
	subcategory_id VARCHAR (30) NOT NULL,
	subcategory VARCHAR(30) NOT NULL,
	PRIMARY KEY (subcategory_id));

-- View table
SELECT * FROM subcategories;

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(60) NOT NULL,
	description VARCHAR(120) NOT NULL,
	goal NUMERIC NOT NULL,
	pledged NUMERIC NOT NULL,
	outcome VARCHAR(60) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(30) NOT NULL,
	currency VARCHAR(30) NOT NULL, 
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR (30) NOT NULL,
	subcategory_id VARCHAR (30) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES categories (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories (subcategory_id),
    PRIMARY KEY (contact_id));

-- View table
SELECT * FROM campaign;

CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR (60),
	FOREIGN KEY (contact_id) REFERENCES campaign (contact_id),
	PRIMARY KEY (contact_id));

-- View table
SELECT * FROM contacts;

