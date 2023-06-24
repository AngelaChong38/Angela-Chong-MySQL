USE hospital;

-- List all patient info
SELECT p.patient_id, p.name AS 'patient_name', p.age, p.gender, p.address, p.phone, p.insurance,
	   a.apt_id, a.start_dt_time, phy.name AS doctor, dep.name AS department, 
       pro.name AS 'procedure_name', pro.cost AS cost, a.exam_room, 
       med.name AS 'medicine', med.brand, med.description, med.generic,
       
       CASE 
		WHEN p.hospital_stay = 0 THEN 'NO'
			ELSE 'YES'
	    END AS 'hospital_stay', 
       
       p.room_id, r.room_type, r.floor, n.name AS nurse FROM patient p
	LEFT JOIN appointment a ON p.patient_id = a.patient_id
    LEFT JOIN room r ON r.room_id = p.room_id
    LEFT JOIN procedures pro ON pro.code = p.procedure_id
    LEFT JOIN medication med ON med.med_id = p.med_id
    LEFT JOIN physician phy ON phy.doc_id = a.doc_id
    LEFT JOIN nurse n ON n.nurse_id = r.nurse_id
    LEFT JOIN department dep ON dep.dept_id = phy.dept_id
    ORDER BY p.name;
    

-- List all appointments order by time
SELECT p.patient_id, p.name AS 'patient_name', a.apt_id, a.start_dt_time, phy.name AS doctor, 
       dep.name AS department, pro.name AS 'procedure_name', a.exam_room 
	FROM patient p
	JOIN appointment a ON p.patient_id = a.patient_id
    JOIN procedures pro ON pro.code = p.procedure_id
    JOIN medication med ON med.med_id = p.med_id
    JOIN physician phy ON phy.doc_id = a.doc_id
    JOIN department dep ON dep.dept_id = phy.dept_id
    ORDER BY a.start_dt_time DESC;
   

-- List all patient medicine info
SELECT p.patient_id, p.name AS 'patient_name', phy.name AS prescribed_doctor,
       med.name AS 'medicine', med.brand, med.description, med.generic
	FROM patient p
	JOIN medication med ON med.med_id = p.med_id
    JOIN appointment a ON a.patient_id = p.patient_id
    JOIN physician phy ON phy.doc_id = a.doc_id
    ORDER BY p.name;


-- Which doctor sees the most patient
SELECT phy.name AS doctor, COUNT(*) AS 'number of appointments'
	FROM patient p
	JOIN appointment a ON p.patient_id = a.patient_id
    JOIN physician phy ON phy.doc_id = a.doc_id
    GROUP BY doctor
    ORDER BY COUNT(*) DESC LIMIT 1;


-- Which nurse takes care of the most patient
SELECT n.name AS nurse, COUNT(*) AS 'number of patients'
	FROM patient p
	JOIN room r ON r.room_id = p.room_id
    JOIN nurse n ON r.nurse_id = n.nurse_id
    GROUP BY nurse
    ORDER BY COUNT(*) DESC LIMIT 1;


-- Which medication is prescribed the most
SELECT med.name AS medicine, COUNT(*) AS 'number of patients'
	FROM patient p
	JOIN medication med ON med.med_id = p.med_id
    GROUP BY medicine
    ORDER BY COUNT(*) DESC LIMIT 1;


-- Which doctor prescribe medicine the most
SELECT phy.name AS doctor
	FROM patient p
	JOIN medication med ON med.med_id = p.med_id
    JOIN appointment a ON a.patient_id = p.patient_id
    JOIN physician phy ON phy.doc_id = a.doc_id
    GROUP BY doctor
    ORDER BY COUNT(*) DESC LIMIT 1;


