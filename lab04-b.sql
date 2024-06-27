ALTER TABLE soft ADD CONSTRAINT pk_soft_id PRIMARY KEY (id); 

ALTER TABLE employees ADD CONSTRAINT pk_employee_id PRIMARY KEY (id); 

ALTER TABLE rooms ADD CONSTRAINT pk_room_id PRIMARY KEY (id); 

ALTER TABLE pcs ADD CONSTRAINT pk_pc_id PRIMARY KEY (id); 

ALTER TABLE pcs ADD CONSTRAINT fk_inst_room_id FOREIGN KEY(room_id) REFERENCES rooms (id); 

ALTER TABLE installs ADD CONSTRAINT fk_inst_pc_id FOREIGN KEY(pc_id) REFERENCES pcs (id); 

ALTER TABLE installs ADD CONSTRAINT fk_inst_soft_id FOREIGN KEY(soft_id) REFERENCES soft (id); 

ALTER TABLE rooms ADD CONSTRAINT fk_rooms_emp_id FOREIGN KEY(emp_id) REFERENCES employees (id);

