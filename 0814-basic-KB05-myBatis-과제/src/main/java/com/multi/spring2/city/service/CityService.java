package com.multi.spring2.city.service;

import com.multi.spring2.city.dao.CityDAO;
import com.multi.spring2.city.domain.CityVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityService {

    private final CityDAO cityDAO;

    @Autowired
    public CityService(CityDAO cityDAO) {
        this.cityDAO = cityDAO;
        System.out.println("BoardService created");
    }

    public int insert(CityVO cityVO){
        return cityDAO.insert(cityVO);
    }
    public List<CityVO> all(){
        return cityDAO.all();
    }
}