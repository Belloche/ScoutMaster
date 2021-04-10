package entity;

public class Note {
    private String player;
    private String position;
    private String college;
    private int age;
    private String height;
    private String weight;
    private String description;
    private String fortyTime;
    private int benchReps;
    private String threeCone;

    public Note() {
    }

    public Note(String player, String position, String college, int age, String height, String weight, String description, String fortyTime, int benchReps, String threeCone) {
        this.player = player;
        this.position = position;
        this.college = college;
        this.age = age;
        this.height = height;
        this.weight = weight;
        this.description = description;
        this.fortyTime = fortyTime;
        this.benchReps = benchReps;
        this.threeCone = threeCone;
    }

    public String getPlayer() {
        return player;
    }

    public void setPlayer(String player) {
        this.player = player;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFortyTime() {
        return fortyTime;
    }

    public void setFortyTime(String fortyTime) {
        this.fortyTime = fortyTime;
    }

    public int getBenchReps() {
        return benchReps;
    }

    public void setBenchReps(int benchReps) {
        this.benchReps = benchReps;
    }

    public String getThreeCone() {
        return threeCone;
    }

    public void setThreeCone(String threeCone) {
        this.threeCone = threeCone;
    }
}
