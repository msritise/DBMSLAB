SET SERVEROUTPUT ON;
DECLARE
   CURSOR employee is 
	select * from five_sales_projects;
BEGIN
	dbms_output.put_line('Employees in sales dept with more than 5 projects:');
	for rec in employee LOOP
		dbms_output.put_line(rec.name||'(SSN: '||rec.ssn||' )');
	END LOOP;
END;
/
