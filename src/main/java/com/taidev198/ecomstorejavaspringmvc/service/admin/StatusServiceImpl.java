package com.taidev198.ecomstorejavaspringmvc.service.admin;


import com.taidev198.ecomstorejavaspringmvc.dao.StatusDAO;
import com.taidev198.ecomstorejavaspringmvc.entity.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StatusServiceImpl implements IStatusService {

    @Autowired
    StatusDAO statusDAO;

    @Override
    public List<Status> getAllStatus() {
        return statusDAO.getAllStatus();
    }

    @Override
    public Status findStatusById(int id) {
        return statusDAO.findStatusById(id);
    }
}
