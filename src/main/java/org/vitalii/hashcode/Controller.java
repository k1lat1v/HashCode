package org.vitalii.hashcode;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@org.springframework.stereotype.Controller
public class Controller {

    @GetMapping("/")
    public String index(){
        return "index";
    }

    @PostMapping("/hash")
    public String hash(@RequestParam String input, Model model){
        String result = DigestUtils.sha256Hex(input);
        model.addAttribute("getInput", true);
        model.addAttribute("hashCode", result);
        return "index";
    }
}
