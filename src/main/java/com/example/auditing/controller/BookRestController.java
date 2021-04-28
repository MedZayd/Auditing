package com.example.auditing.controller;

import com.example.auditing.BookRepository;
import com.example.auditing.model.Book;
import javassist.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/books")
public class BookRestController {

    @Autowired
    private BookRepository repository;

    @PostMapping
    public Book saveBook(@RequestBody Book book) {
        return repository.save(book);
    }

    @PutMapping("/{id}")
    public String updateBook(@PathVariable Long id, @RequestBody Book dto) throws NotFoundException {
        Book book = repository.findById(id).orElseThrow(() -> new NotFoundException("Book not found"));
        book.setPages(dto.getPages());
        repository.save(book);
        return "book updated";
    }

    @DeleteMapping("/{id}")
    public String deleteBook(@PathVariable Long id) {
        repository.deleteById(id);
        return "book deleted";
    }
}
