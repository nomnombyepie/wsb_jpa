package com.jpacourse.persistance.dao;

import com.jpacourse.persistance.entity.VisitEntity;

import java.util.List;

//dodanie funkcji getAllpatientVisits()
public interface VisitDao extends Dao<VisitEntity, Long>{
    List<VisitEntity> getAllPatientVisits (long patientId);
}
