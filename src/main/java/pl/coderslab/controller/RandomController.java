package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Random;

@Controller
public class RandomController {
    @RequestMapping(value = "/random", produces = "text/html; charset=UTF-8")
    @ResponseBody
    public String random() {
        Random random = new Random();
        return "Wylosowano liczbę: " + (random.nextInt(100) + 1);
    }

    @RequestMapping(value = "/random/{max}", produces = "text/html; charset=UTF-8")
    @ResponseBody
    public String random(@PathVariable int max) {
        Random random = new Random();
        return "Użytkownik podał wartość " + max + ".Wylosowano liczbę: " + (random.nextInt(max) + 1);
    }

    @RequestMapping(value = "/random/{min}/{max}", produces = "text/html; charset=UTF-8")
    @ResponseBody
    public String random(@PathVariable int min, @PathVariable int max) {
        Random random = new Random();
        return "Użytkownik podał wartości " + min + " i " + max + ".Wylosowano liczbę: "
                + (random.nextInt(max - min + 1) + min);
    }
}
