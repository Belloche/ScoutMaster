package persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import student.entity.Note;
import student.persistence.GenericDao;
import testUtils.Database;

import java.util.List;

import static org.junit.Assert.*;

public class NoteTests {
    GenericDao noteDao;

    @BeforeEach
    void setUp() {
        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

        noteDao = new GenericDao(Note.class);
    }

    @Test
    void getNoteByIdSuccess() {
        Note retrievedNote = (Note) noteDao.getById(1);
        assertEquals(1, retrievedNote.getId());
        assertEquals("Amari Rodgers", retrievedNote.getProspect());
    }

    @Test
    void insertNoteSuccess() {
        Note newNote = new Note();

        newNote.setProspect("Graham Mertz");
        newNote.setCollege("University of Wisconsin - Madison");
        newNote.setUserId(1);
        newNote.setAge(19);
        newNote.setHeightFeet(6);
        newNote.setHeightInches(3);
        newNote.setWeight(225);
        newNote.setPosition("QB");
        newNote.setRating("7/10");
        newNote.setReport("He was redshirted his freshman season, and his first full season as a starter was derailed from covid. He showed a lot of good and also some bad plays, but we'll have to wait and see how he does with a real season.");

        int id = noteDao.insert(newNote);
        assertNotEquals(0, id);
        Note insertedNote = (Note) noteDao.getById(id);

        assertEquals("Graham Mertz", insertedNote.getProspect());
        assertEquals("University of Wisconsin - Madison", insertedNote.getCollege());
        assertEquals(1, insertedNote.getUserId());
        assertEquals(19, insertedNote.getAge());
        assertEquals(6, insertedNote.getHeightFeet());
        assertEquals(3, insertedNote.getHeightInches());
        assertEquals(225, insertedNote.getWeight());
        assertEquals("QB", insertedNote.getPosition());
        assertEquals("7/10", insertedNote.getRating());
    }

    @Test
    void deleteNoteSuccess() {
        noteDao.delete(noteDao.getById(2));
        assertNull(noteDao.getById(2));
    }

    @Test
    void getAllNotesSuccess() {
        List<Note> notes = noteDao.getAll();
        assertEquals(2, notes.size());
    }
}
