package ecommerce.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ecommerce.daos.ContactRepository;
import ecommerce.entities.Contact;
import ecommerce.entities.ContactForm;

@Service
public class ContactService {

    private final ContactRepository contactRepository;

    @Autowired
    public ContactService(ContactRepository contactRepository) {
        this.contactRepository = contactRepository;
    }

    public void processContactForm(Contact contactForm) {
        Contact contact = new Contact();
        contact.setName(contactForm.getName());
        contact.setEmail(contactForm.getEmail());
        contact.setPhone(contactForm.getPhone());
        contact.setMessage(contactForm.getMessage());
        contactRepository.save(contact);
    }
}
