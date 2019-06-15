package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import sun.reflect.generics.scope.Scope;

@Controller
@RequestMapping("/first")
public class FormController {
    @GetMapping("/form")
    public String form() {
        return "/form.jsp";
    }

    @PostMapping(value = "/form", produces = "text/html; charset=UTF-8")
    @ResponseBody
    public String form(@RequestParam String paramName) {
        return "Wartość parametru: " + paramName;
    }
}
