package ecommerce.daos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ecommerce.entities.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact, Long> {

}
