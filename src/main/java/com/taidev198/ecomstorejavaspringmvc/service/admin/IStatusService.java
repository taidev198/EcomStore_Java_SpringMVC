package com.taidev198.ecomstorejavaspringmvc.service.admin;

import com.taidev198.ecomstorejavaspringmvc.entity.Status;

import java.util.List;

public interface IStatusService {

    List<Status> getAllStatus();
    Status findStatusById(int id);
}
