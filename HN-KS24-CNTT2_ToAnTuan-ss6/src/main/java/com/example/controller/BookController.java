package com.example.controller;

import com.example.model.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;

@Controller
public class BookController {
    private List<Book> books = new ArrayList<>();
    public BookController() {
        books.add(new Book(1, "Java Core", "Author 1", 250000));
        books.add(new Book(2, "Spring Boot", "Author 2", 300000));
        books.add(new Book(3, "Spring MVC", "Author 3", 200000));
        books.add(new Book(4, "Docker", "Author 4", 350000));
    }

    @GetMapping("/books")
    public String list(Model model) {
        model.addAttribute("books", books);
        model.addAttribute("title", "Danh sach sach");
        return "books";
    }

    @GetMapping("/books/{id}")
    public String detail(@PathVariable("id") int id, Model model) {
        Book found= null;
        for (Book book : books) {
            if (book.getId() == id) {
                found = book;
                break;
            }
        }
        model.addAttribute("book", found);
        model.addAttribute("title", "Chi tiet sach");
        return "detail";
    }
}
