package service;

import bean.Dish;
import dao.DishDao;

import java.util.List;

public class DishService {
    private DishDao dishDao = new DishDao();

    public boolean addDish(Dish dish) {
        return dishDao.addDish(dish);
    }

    public List<Dish> getDishesByType(String type) {
        return dishDao.getDishesByType(type);
    }
}