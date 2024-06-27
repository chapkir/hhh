alter table Clients ADD CONSTRAINT pk_clients_id PRIMARY KEY(id);
alter table AdditionalConditions ADD CONSTRAINT pk_additcond_id PRIMARY KEY(id);
 alter table PartnerRequirements ADD CONSTRAINT pk_partreq_id PRIMARY KEY(id);
 
 alter table Clients ADD CONSTRAINT fk_addcon_id FOREIGN KEY(additional_conditions_id) REFERENCES AdditionalConditions(id);
 alter table Clients ADD CONSTRAINT fk_partreq_id FOREIGN KEY(partner_requirements_id) REFERENCES PartnerRequirements(id);
 alter table PartnerRequirements ADD CONSTRAINT fk_addcond_id FOREIGN KEY(additional_conditions_id) REFERENCES AdditionalConditions(id);
