-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Physical

CREATE TABLE "Categories" (
    "category_id" VARCHAR(30)   NOT NULL,
    "category" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategories" (
    "subcategory_id" VARCHAR(30)   NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Subcategories" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(30)   NOT NULL,
    "description" VARCHAR(30)   NOT NULL,
    "goal" INT   NOT NULL,
    "pledged" INT   NOT NULL,
    "outcome" VARCHAR(30)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(30)   NOT NULL,
    "currency" VARCHAR(30)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" INT   NOT NULL,
    "subcategory_id" INT   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Categories" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategories" ("subcategory_id");

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

