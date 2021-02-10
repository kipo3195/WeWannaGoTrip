package net.wannago.admin.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.wannago.admin.dao.adminDAO;
import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;

@Service
public class adminServiceImpl implements adminService {

	@Inject
	adminDAO dao;
	
	@Override
	public adminVO adminCheck(adminDTO dto) {
		adminVO adminvo = dao.adminCheck(dto);
		System.out.println(adminvo);
		return adminvo;
	}

	
	
}
