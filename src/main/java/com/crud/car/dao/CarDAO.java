package com.crud.car.dao;

import com.crud.car.bean.CarVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CarDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertCar(CarVO vo) {
        int result =sqlSession.insert("Car.insertCar", vo);
        return result;
    }

    public int deleteCar(int id) {
        int result = sqlSession.delete("Car.deleteCar", id);
        return result;
    }

    public int updateCar(CarVO vo) {
        int result = sqlSession.update("Car.updateCar", vo);
        return result;
    }

    public CarVO getCar(int carid) {
        CarVO one = sqlSession.selectOne("Car.getCar", carid);
        return one;
    }

    public List<CarVO> getCarList(){
        List<CarVO> list = sqlSession.selectList("Car.getCarList");
        return list;
    }
}
