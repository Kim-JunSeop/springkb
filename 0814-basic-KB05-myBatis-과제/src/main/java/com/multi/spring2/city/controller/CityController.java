package com.multi.spring2.city.controller;

import com.multi.spring2.city.domain.CityVO;
import com.multi.spring2.city.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/city")
public class CityController {

 @Autowired
 private CityService cityService;

 @PostMapping("/insert")
 public String insertCity(CityVO city) {
  cityService.insert(city);
  return "city/insert_result";
 }

 @GetMapping("/all")
 public String getAllCities(Model model) {
  List<CityVO> cities = cityService.all();
  System.out.println(cities.size());
  model.addAttribute("cities", cities);
  return "city/all_result"; // cityList.html 또는 cityList.jsp로 렌더링
 }
}
