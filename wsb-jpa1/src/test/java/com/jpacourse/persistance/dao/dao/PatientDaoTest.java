package com.jpacourse.persistance.dao.dao;

import com.jpacourse.persistance.dao.PatientDao;
import com.jpacourse.persistance.entity.DoctorEntity;
import com.jpacourse.persistance.entity.MedicalTreatmentEntity;
import com.jpacourse.persistance.entity.PatientEntity;
import com.jpacourse.persistance.entity.VisitEntity;
import com.jpacourse.persistance.enums.Specialization;
import com.jpacourse.persistance.enums.TreatmentType;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
@Transactional
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.ANY)
public class PatientDaoTest {

    @Autowired
    private PatientDao patientDao;

    @PersistenceContext
    private EntityManager entityManager;

    @Test
    public void shouldAddVisitToPatient() {

        //dodanie pierwszego pacjenta z data.sql
        PatientEntity patient = new PatientEntity();
        patient.setFirstName("Andrzej");
        patient.setLastName("Lewicki");
        patient.setDateOfBirth(LocalDate.now());
        patient.setPatientNumber("P2001");
        patient.setTelephoneNumber("998877665");
        entityManager.persist(patient);

        //dodanie pierwszego doktora z data.sql
        DoctorEntity doctor = new DoctorEntity();
        doctor.setFirstName("Łukasz");
        doctor.setLastName("Zalewski");
        doctor.setTelephoneNumber("112233445");
        doctor.setDoctorNumber("D20001");
        doctor.setSpecialization(Specialization.SURGEON);
        entityManager.persist(doctor);

        //dodanie pierwzej wizyty z data.sql
        MedicalTreatmentEntity medicalTreatment = new MedicalTreatmentEntity();
        medicalTreatment.setDescription("Medical treatment");
        medicalTreatment.setDescription("description");
        medicalTreatment.setType(TreatmentType.EKG);
        entityManager.persist(medicalTreatment);
        entityManager.flush();

        String description = "Kontrolna wizyta u GP";
        LocalDateTime date = LocalDateTime.of(2024, 6, 1, 9, 0);

        // trzeba dodać do pacjent funkcje addvisittopatient()
        patientDao.addVisitToPatient(patient.getId(), doctor.getId(), medicalTreatment.getId(), date, description);

        //trzeba dodac do wizyt funkcje getvisits()
        PatientEntity updated = entityManager.find(PatientEntity.class, patient.getId());
        List<VisitEntity> visits = updated.getVisits();

        assertEquals(1, visits.size());
        VisitEntity visit = visits.get(0);
        assertEquals(description, visit.getDescription());
        assertEquals(date, visit.getTime());
        assertEquals(doctor.getId(), visit.getDoctor().getId());
    }
}
