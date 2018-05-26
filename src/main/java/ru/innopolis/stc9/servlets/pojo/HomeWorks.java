package ru.innopolis.stc9.servlets.pojo;

public class HomeWorks {
    private int id;
    private String decision;
    private String hwfile;
    private int studentId;
    private int timetableId;

    public HomeWorks() {
    }

    public HomeWorks(String decision, String hwfile) {
        this.decision = decision;
        this.hwfile = hwfile;
    }


    public HomeWorks(int id, String decision, String hwfile, int studentId) {
        this.id = id;
        this.decision = decision;
        this.hwfile = hwfile;
        this.studentId = studentId;
    }

    public HomeWorks(String decision, String hwfile, int timetableId, int studentId) {
        this.decision = decision;
        this.hwfile = hwfile;
        this.studentId = studentId;
        this.timetableId = timetableId;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDecision() {
        return decision;
    }

    public void setDecision(String decision) {
        this.decision = decision;
    }

    public String getHwfile() {
        return hwfile;
    }

    public void setHwfile(String hwfile) {
        this.hwfile = hwfile;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public int getTimetableId() {
        return timetableId;
    }

    public void setTimetableId(int timetableId) {
        this.timetableId = timetableId;
    }
}
