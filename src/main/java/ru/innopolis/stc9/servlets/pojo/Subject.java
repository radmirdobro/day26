package ru.innopolis.stc9.servlets.pojo;

public class Subject {
    private int id;
    private String sname;
    private int duration;
    private int materialId;
    private int markSumm;
    private int subjCounter;

    public Subject(int id, String sname, int markSumm, int subjCounter) {
        this.id = id;
        this.sname = sname;
        this.markSumm = markSumm;
        this.subjCounter = subjCounter;
    }

    public int getSubjCounter() {
        return subjCounter;
    }

    public int getMarkSumm() {
        return markSumm;
    }

    public int getId() {
        return id;
    }

    public String getSname() {
        return sname;
    }

    public int getDuration() {
        return duration;
    }

    public int getMaterialId() {
        return materialId;
    }
}
