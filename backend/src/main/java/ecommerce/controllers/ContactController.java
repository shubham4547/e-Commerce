package ecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import ecommerce.entities.Contact;
import ecommerce.services.ContactService;

@RestController
@RequestMapping("/api/contact")
public class ContactController {

	@Autowired
    private final ContactService contactService;

    
    public ContactController(ContactService contactService) {
        this.contactService = contactService;
    }

    @PostMapping
    public ResponseEntity<String> submitContactForm(@RequestBody Contact contactForm) {
        try {
            contactService.processContactForm(contactForm);;
            return ResponseEntity.ok("Contact form submitted successfully!");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred while submitting the contact form.");
        }
    }
}
