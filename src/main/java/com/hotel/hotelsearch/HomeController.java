package com.hotel.hotelsearch;

import java.util.TreeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.hotelsearch.dao.HotelRepository;

@Controller
public class HomeController {
	
	
	@Autowired
	HotelRepository result;
//	HotelRepository cityDao;
	
	@RequestMapping("/")
	public ModelAndView list() {
		TreeSet<String> citylist = result.findDistinctCity();
		return new ModelAndView("index", "cities", citylist);
		
//		System.out.println(hotelDao.findAll());
//		List<Hotel> hotelList = hotelDao.findAll();
//		return new ModelAndView("index", "hotel",hotelList ); //foods is now a temp name for the list
//		
	}
	
	//jacob's
//	@RequestMapping("/")
//	public ModelAndView citylist() {
//		ModelAndView mv = new ModelAndView("/");
//		System.out.println(hotelDao.findAll());
//		List<Hotel> hotelList = hotelDao.findAll();
//		mv.addObject("hotel", hotelList);
//		mv.addObject("city", hotelDao.findDistinctCity());
//		return mv; //foods is now a temp name for the list
//		
//	}
	
	//john's 
//	@RequestMapping("/newpage")
//	public ModelAndView hotelMv(@RequestParam("city") String city) {
//		ModelAndView mv = new ModelAndView("newpage");
//		System.out.println(city);
//		mv.addObject("newpage", result.findByCityOrderByPricePerNightAsc(city));
//		mv.addObject("city", city);
//		return mv;
//	}
	
	@RequestMapping("/newpage")
	public ModelAndView showHotels(String city) {
		System.out.println(result.findAll());
		return new ModelAndView("newpage", "hotel", result.findByCityOrderByPricePerNightDesc(city)); //foods is now a temp name for the list
		
	}
	
	@RequestMapping("/hotel")
	public ModelAndView cancel() {
		return new ModelAndView("redirect:/");
	}
	
}
