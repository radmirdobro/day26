package ru.innopolis.stc9.servlets.db.dao;

import ru.innopolis.stc9.servlets.pojo.Timetable;

import java.util.List;


public interface TimetableDAO {
    public Timetable getLessonById(int id);

    public List getTimetableByStGID(int gid);
}
