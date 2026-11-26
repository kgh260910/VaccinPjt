package com.office.vaccin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.office.DatabaseInfo;

public class VaccinDao implements DatabaseInfo {
	
	public int insertNewRegiste(VaccinDto vaccinDto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = -1;
		
		try {
			
			Class.forName(DRIVER);
			
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			
			String sql = "insert into tbl_flu_vaccin_person("
					+ "fvp_name, "
					+ "ss_number, "
					+ "fvp_mail, "
					+ "fvp_phone, "
					+ "fv_location_no, "
					+ "fv_type) values(?, ?, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vaccinDto.getFvp_name());
			pstmt.setString(2, vaccinDto.getSs_number());
			pstmt.setString(3, vaccinDto.getFvp_mail());
			pstmt.setString(4, vaccinDto.getFvp_phone());
			pstmt.setInt(5, vaccinDto.getFv_location_no());
			pstmt.setString(6, vaccinDto.getFv_type());
			
			result = pstmt.executeUpdate();
		
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			
			try {
				
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
				
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}

}
