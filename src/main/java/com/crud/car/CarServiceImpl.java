package com.crud.car;


import com.crud.car.bean.CarVO;
import com.crud.car.dao.CarDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarServiceImpl implements CarService{

    @Autowired
    CarDAO carDAO;

    @Override
    public int insertCar(CarVO vo) {
        return carDAO.insertCar(vo);

    }

    @Override
    public int deleteCar(int id) {
        return carDAO.deleteCar(id);
    }

    @Override
    public int updateCar(CarVO vo) {
        return carDAO.updateCar(vo);
    }

    @Override
    public CarVO getCar(int seq) {
        return carDAO.getCar(seq);

    }

    @Override
    public List<CarVO> getCarList() {
        return carDAO.getCarList();

    }
}
