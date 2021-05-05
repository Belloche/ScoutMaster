package student.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity(name = "Note")
@Table(name = "notes")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Note {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @Column(name = "user_id")
    private int userId;

    private String prospect;
    private String position;
    private String college;
    private int age;

    @Column(name = "feet")
    private int heightFeet;
    @Column(name = "inches")
    private int heightInches;

    private int weight;
    private String rating;
    private String report;
}
