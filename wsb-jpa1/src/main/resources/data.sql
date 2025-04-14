-- Insert into doctor
INSERT INTO doctor (doctor_number, email, first_name, last_name, telephone_number, specialization) VALUES
                                                                                                           ('D20001', 'dr.lukasz@clinic.com', 'Łukasz', 'Zalewski', '112233445', 'GP'),
                                                                                                           ('D20002', 'dr.maria@clinic.com', 'Maria', 'Wojciechowska', '223344556', 'DERMATOLOGIST'),
                                                                                                           ('D20003', 'dr.pawel@clinic.com', 'Paweł', 'Kamiński', '334455667', 'SURGEON'),
                                                                                                           ('D20004', 'dr.joanna@clinic.com', 'Joanna', 'Zawadzka', '445566778', 'OCULIST'),
                                                                                                           ('D20005', 'dr.krystian@clinic.com', 'Krystian', 'Dudek', '556677889', 'GP'),
                                                                                                           ('D20006', 'dr.monika@clinic.com', 'Monika', 'Górska', '667788990', 'DERMATOLOGIST'),
                                                                                                           ('D20007', 'dr.adam@clinic.com', 'Adam', 'Majewski', '778899001', 'SURGEON'),
                                                                                                           ('D20008', 'dr.sandra@clinic.com', 'Sandra', 'Rutkowska', '889900112', 'OCULIST'),
                                                                                                           ('D20009', 'dr.daniel@clinic.com', 'Daniel', 'Sikora', '990011223', 'GP'),
                                                                                                           ('D20010', 'dr.alicja@clinic.com', 'Alicja', 'Borkowska', '101112334', 'DERMATOLOGIST');

-- Insert into patient
INSERT INTO patient (date_of_birth, email, first_name, last_name, patient_number, telephone_number) VALUES
                                                                                                            ('1983-07-19', 'patient1@hospital.com', 'Andrzej', 'Lewicki', 'P2001', '998877665'),
                                                                                                            ('1991-10-30', 'patient2@hospital.com', 'Sylwia', 'Nowicka', 'P2002', '887766554'),
                                                                                                            ('1998-12-11', 'patient3@hospital.com', 'Damian', 'Witkowski', 'P2003', '776655443'),
                                                                                                            ('1976-03-25', 'patient4@hospital.com', 'Kamil', 'Sokołowski', 'P2004', '665544332'),
                                                                                                            ('1988-09-08', 'patient5@hospital.com', 'Agnieszka', 'Lisowska', 'P2005', '554433221'),
                                                                                                            ('1993-06-15', 'patient6@hospital.com', 'Michał', 'Kaczmarek', 'P2006', '443322110'),
                                                                                                            ('2001-01-21', 'patient7@hospital.com', 'Natalia', 'Czarnecka', 'P2007', '332211009'),
                                                                                                            ('1985-05-05', 'patient8@hospital.com', 'Tomasz', 'Jaworski', 'P2008', '221100998'),
                                                                                                            ('1997-08-14', 'patient9@hospital.com', 'Ewelina', 'Kubiak', 'P2009', '110099887'),
                                                                                                            ('1979-12-28', 'patient10@hospital.com', 'Bartłomiej', 'Kowal', 'P2010', '009988776');

-- Insert into address
INSERT INTO address (address_line1, address_line2, city, postal_code, doctor_id, patient_id) VALUES
                                                                                                 ( 'ul. Klonowa 22', 'lok. 5', 'Warszawa', '01-234',1,1),
                                                                                                 ( 'ul. Lipowa 11', NULL, 'Kraków', '31-567',2,2),
                                                                                                 ( 'ul. Dębowa 15', 'm. 3B', 'Gdańsk', '81-890',3,3),
                                                                                                 ( 'ul. Brzozowa 19', NULL, 'Poznań', '61-901',4,4),
                                                                                                 ( 'ul. Świerkowa 9', 'm. 2', 'Łódź', '91-432',5,5),
                                                                                                 ( 'ul. Sosnowa 13', NULL, 'Wrocław', '50-678',6,6),
                                                                                                 ( 'ul. Jesionowa 21', 'lok. 1A', 'Katowice', '40-789',7,7),
                                                                                                 ( 'ul. Topolowa 8', NULL, 'Lublin', '20-345',8,8),
                                                                                                 ( 'ul. Wiśniowa 10', 'm. 4', 'Szczecin', '70-890',9,9),
                                                                                                 ( 'ul. Bukowa 17', NULL, 'Bydgoszcz', '85-123',10,10);

-- Insert into visit
INSERT INTO visit (doctor_id, patient_id, time, description) VALUES
                                                                 (1, 1, '2024-06-01 09:00:00', 'Kontrolna wizyta u GP'),
                                                                 (2, 2, '2024-06-02 13:45:00', 'Konsultacja dermatologiczna'),
                                                                 (3, 3, '2024-06-03 11:30:00', 'Konsultacja chirurgiczna'),
                                                                 (4, 4, '2024-06-04 15:00:00', 'Badanie okulistyczne'),
                                                                 (5, 5, '2024-06-05 08:15:00', 'Porada lekarza rodzinnego'),
                                                                 (6, 6, '2024-06-06 10:30:00', 'Badanie skórne'),
                                                                 (7, 7, '2024-06-07 12:00:00', 'Operacja ortopedyczna'),
                                                                 (8, 8, '2024-06-08 14:45:00', 'Korekcja wzroku'),
                                                                 (9, 9, '2024-06-09 16:15:00', 'Badanie kontrolne GP'),
                                                                 (10, 10, '2024-06-10 17:30:00', 'Diagnostyka alergiczna');

-- Insert into medical_treatment
INSERT INTO medical_treatment (visit_id, description, type) VALUES
                                                                (1, 'Badanie ogólne', 'BT'),
                                                                (2, 'Diagnostyka alergiczna', 'AT'),
                                                                (3, 'Tomografia komputerowa', 'CS'),
                                                                (4, 'Badanie ciśnienia w oku', 'EPT'),
                                                                (5, 'Rezonans magnetyczny kręgosłupa', 'MRI'),
                                                                (6, 'Biopsja skóry', 'SB'),
                                                                (7, 'Rekonstrukcja stawu kolanowego', 'SRG'),
                                                                (8, 'Laserowa korekcja wzroku', 'LES'),
                                                                (9, 'Badanie poziomu cukru', 'GT'),
                                                                (10, 'Testy skórne na alergie', 'ATT');