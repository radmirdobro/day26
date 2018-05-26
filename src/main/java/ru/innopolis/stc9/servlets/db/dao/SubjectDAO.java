package ru.innopolis.stc9.servlets.db.dao;


import java.util.List;

public interface SubjectDAO {
    public String getSubjectNameById(int sid);

    public List getAllSubjects();

}
