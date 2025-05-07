package com.jpacourse.persistance.dao.impl;

import com.jpacourse.persistance.dao.VisitDao;
import com.jpacourse.persistance.entity.VisitEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class VisitDaoImpl extends AbstractDao<VisitEntity, Long> implements VisitDao {
    @Override
    //createQuery do wyszukiwania pacjenta po id
    public List<VisitEntity> getAllPatientVisits(long patientId) {
        return entityManager.createQuery("SELECT v from VisitEntity v WHERE v.patient.id=:patientId", VisitEntity.class)
                .setParameter("patientId",patientId)
                .getResultList();
    }
}
