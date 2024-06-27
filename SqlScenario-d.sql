Select * From Clients INNER JOIN PartnerRequirements ON Clients.partner_requirements_id = PartnerRequirements.id WHERE PartnerRequirements.education = 'Высшее';

Select first_name, last_name, middle_name from clients WHERE additional_conditions_id is null;

Select first_name, last_name, middle_name from clients WHERE age < 25;

Select first_name, last_name, middle_name from clients inner join partnerrequirements ON clients.partner_requirements_id = partnerrequirements.id WHERE partnerrequirements.min_age = (Select min(min_age) From partnerrequirements);


Select first_name, last_name, middle_name from clients inner join additionalconditions ON clients.additional_conditions_id= additionalconditions.id WHERE has_children = false;