package com.crud.car;

import com.crud.car.bean.CarVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CarController {

    @Autowired
    CarService carService;

    @RequestMapping(value = "/car/list",
            method = RequestMethod.GET)
    public String carlist(Model model) { model.addAttribute("list",
            carService.getCarList());
        return "carList";
    }
    @RequestMapping(value = "/car/add",
            method = RequestMethod.GET)
    public String addCar() {
        return "addcarform";
    }
    @RequestMapping(value = "/car/addok", method = RequestMethod.POST)
    public String addCarOK(CarVO vo){
        int i = carService.insertCar(vo);
        System.out.println(vo.getCarName()+vo.getBrand()+"\n");
        if(i==0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }
    @RequestMapping(value = "/car/editform/{id}", method = RequestMethod.GET)
    public String editCar(@PathVariable("id") int id, Model model){
        CarVO carVO = carService.getCar(id);
        model.addAttribute("u", carVO);
        return "careditform";
    }

    @RequestMapping(value = "/car/editok", method = RequestMethod.POST)
    public String editCarOk(CarVO vo){

        if(carService.updateCar(vo)==0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }
    @RequestMapping(value = "/car/delete_ok/{id}", method = RequestMethod.GET)
    public String deleteCar(@PathVariable("id") int id){

        if(carService.deleteCar(id)==0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }

}

