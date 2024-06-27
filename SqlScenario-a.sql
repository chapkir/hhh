create table Clients(id int , last_name varchar(30), first_name varchar(30), middle_name varchar(30), age int, nationality varchar(50), education varchar(250), salary int, additional_conditions_id int, partner_requirements_id int);
create table AdditionalConditions(id int, property_ownership boolean, has_hildren boolean, no_bad_habits boolean);
Create table PartnerRequirements( id int, education varchar(250), nationality varchar(250), min_age int, max_age int, salary int, additional_conditions_id int);
