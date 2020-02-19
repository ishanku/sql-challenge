-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "dept_no" varchar   NULL,
    "dept_name" varchar   NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "employees" (
    "emp_no" varchar   NULL,
    "birth_date" date   NULL,
    "first_name" varchar   NULL,
    "last_name" varchar   NULL,
    "gender" varchar   NULL,
    "hire_date" date   NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" varchar   NULL,
    "salary" varchar   NULL,
    "from_date" date   NULL,
    "to_date" date   NULL,
    "employees" (   NULL
);

CREATE TABLE "titles" (
    "emp_no" varchar   NULL,
    "title" varchar   NULL,
    "from_date" date   NULL,
    "to_date" date   NULL,
    "employees" (   NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar   NULL,
    "emp_no" varchar   NULL,
    "from_date" date   NULL,
    "to_date" date   NULL,
    "employees" (   NULL,
    "departments" (   NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" varchar   NULL,
    "dept_no" varchar   NULL,
    "from_date" date   NULL,
    "to_date" date   NULL,
    "employees" (   NULL,
    "departments" (   NULL
);

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

