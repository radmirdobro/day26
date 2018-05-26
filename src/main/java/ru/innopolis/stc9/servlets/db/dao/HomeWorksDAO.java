package ru.innopolis.stc9.servlets.db.dao;

import ru.innopolis.stc9.servlets.pojo.HomeWorks;

public interface HomeWorksDAO {

    public void addHomeWork(HomeWorks homework);

    public void updateHomeWork(HomeWorks homework);

    public HomeWorks getHomeWorkAnswer(int timetableId, int studentId);

    public boolean isHomeWorkEmpty(int timetableId, int studentId);

}
