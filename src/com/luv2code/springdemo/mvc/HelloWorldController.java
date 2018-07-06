package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {

	// A controller method to show the initial html form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	// A controller method to process the html form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	
	// A controller method to read from data and add data to the model	
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model ) {
		
		//read the request parameter from the html form, the helloworld-form.jsp
		String theName = request.getParameter("studentName");
		
		//convert the data to all caps
		theName = theName.toUpperCase();
		
		//create the message
		String result = "Yo! " + theName + "!!!";
	
		//add message to the model
		model.addAttribute("message", result);
		
		return "helloworld";
	}
	
	//Home made testing method
	@RequestMapping("/processFormVersionThree")
	public String letsTrySomethingElse(HttpServletRequest request, Model model) {
		
		//This parameter/input is given in the helloworld-form
		String wass = request.getParameter("watdan");
		
		String result;
		
		//if the given input equals "vlala", than add the value of result to the variable boodschap\
		//this "boodschap" is being 'called' in the 'watjedanje.jsp' file and then displayed
		//"boodschap" is the attributeName and result is the attributeValue (that can be null)
		if(wass.contentEquals("vlala")) {
			result = wass + " is het goede antwoord";
			model.addAttribute("boodschap", result);
			
			return "watjedanje";
		}
		else {
			result = wass + " is het foute antwoord";
			model.addAttribute("boodschap", result);
			return "watjedanje";
		}
		
		
	}
	
	// A controller method to read from data and add data to the model	
		@RequestMapping("/processFormVersionFour")
		public String processFormVersionFour(@RequestParam("studentName") String theName, Model model ) {
			
			
			//convert the data to all caps
			theName = theName.toUpperCase();
			
			//create the message
			String result = "Howdeee! Version Four " + theName + "!!!";
		
			//add message to the model
			model.addAttribute("message", result);
			
			return "helloworld";
		}
	
	
	
}
