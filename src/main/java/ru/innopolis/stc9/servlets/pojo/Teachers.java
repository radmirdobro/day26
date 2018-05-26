package ru.innopolis.stc9.servlets.pojo;

public class Teachers {
    private int id;
    private String name;
    private String adres;
    private String phone;
    private String email;
    private int subjectId;
    private Subject subject;
    private String status;
    private int usersId;

    public Teachers(String name, String adres, String phone, String email, int subjectId, String status) {
        this.name = name;
        this.adres = adres;
        this.phone = phone;
        this.email = email;
        this.subjectId = subjectId;
        this.status = status;

    }

    public Teachers(String name, String adres, String phone, String email, int subjectId, Subject subject, String status) {
        this.name = name;
        this.adres = adres;
        this.phone = phone;
        this.email = email;
        this.subjectId = subjectId;
        this.subject = subject;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getUsersId() {
        return usersId;
    }

    public void setUsersId(int usersId) {
        this.usersId = usersId;
    }
}

