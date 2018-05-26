package ru.innopolis.stc9.servlets.pojo;

public class Timetable {
    private int id;
    private int subjectId;
    private String date;
    private String time;
    private int groupsId;
    private String homework;
    private String sname;


    public Timetable(String sname, int subjectId, String date, String time, String homework, int id) {

        this.sname = sname;
        this.subjectId = subjectId;
        this.date = date;
        this.time = time;
        this.homework = homework;
        this.id = id;
    }

    public Timetable(int id, int subjectId, String date, String time) {
        this.id = id;
        this.subjectId = subjectId;
        this.date = date;
        this.time = time;
    }

    public Timetable(String date, String homework) {
        this.date = date;
        this.homework = homework;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getGroupsId() {
        return groupsId;
    }

    public void setGroupsId(int groupsId) {
        this.groupsId = groupsId;
    }

    public String getHomework() {
        return homework;
    }

    public void setHomework(String homework) {
        this.homework = homework;
    }
}
