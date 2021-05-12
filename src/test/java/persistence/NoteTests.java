package persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import student.entity.Note;
import student.persistence.GenericDao;
import testUtils.Database;

import java.util.List;

import static org.junit.Assert.*;

/**
 * The Unit Tests for the Note Entity
 * @author Zane Miller
 * @version 1.0 5-12-2021
 */
public class NoteTests {
    /**
     * The Note dao using the GenericDAO
     */
    GenericDao noteDao;

    /**
     * Sets up the database before each test
     */
    @BeforeEach
    void setUp() {
        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

        noteDao = new GenericDao(Note.class);
    }

    /**
     * Tests that a note was successfully retrieved from the database by id
     */
    @Test
    void getNoteByIdSuccess() {
        Note retrievedNote = (Note) noteDao.getById(1);
        assertEquals(1, retrievedNote.getId());
        assertEquals("Amari Rodgers", retrievedNote.getProspect());
    }

    /**
     * Tests that a note was inserted successfully
     */
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

    /**
     * Tests that a Note was deleted from the database successfully
     */
    @Test
    void deleteNoteSuccess() {
        noteDao.delete(noteDao.getById(2));
        assertNull(noteDao.getById(2));
    }

    /**
     * Tests that all notes were retrieved from the database successfully
     */
    @Test
    void getAllNotesSuccess() {
        List<Note> notes = noteDao.getAll();
        assertEquals(2, notes.size());
    }
}
