package ru.innopolis.stc9.servlets.db.dao;

import ru.innopolis.stc9.servlets.pojo.Marks;

import java.util.List;

public interface MarksDAO {
    public void addMark(Marks mark);

    public Marks getStudentMarksbySubject(int studentId, int subjectId);

    public void updateMark(Marks mark);

    public List<Marks> getStMarkForSubject(int studentId);


}
