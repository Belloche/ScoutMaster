package persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import student.entity.Admin;
import student.persistence.GenericDao;
import testUtils.Database;
import static org.junit.Assert.*;

/**
 * The Unit Tests for the Admin Entity
 * @author Zane Miller
 * @version 1.0 5-12-2021
 */
public class AdminTests {
    /**
     * The Admin dao using the GenericDAO
     */
    GenericDao adminDao;

    /**
     * Sets up the database before each test
     */
    @BeforeEach
    void setUp() {
        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

        adminDao = new GenericDao(Admin.class);
    }

    /**
     * Tests that a admin was successfully retrieved from the database by id
     */
    @Test
    void getAdminByIdSuccess() {
        Admin retrievedAdmin = (Admin) adminDao.getById(1);
        assertEquals(1, retrievedAdmin.getId());
        assertEquals("ScoutMaster", retrievedAdmin.getUsername());
        assertEquals("starterPassword", retrievedAdmin.getPassword());
    }

    /**
     * Tests that the password of the admin was updated successfully
     */
    @Test
    void updateAdminPasswordSuccess() {
        Admin admin = (Admin) adminDao.getById(1);
        admin.setPassword("86crz5wg");
        adminDao.saveOrUpdate(admin);
        Admin updatedAdmin = (Admin) adminDao.getById(1);
        assertEquals(updatedAdmin.getPassword(), admin.getPassword());
    }
}
