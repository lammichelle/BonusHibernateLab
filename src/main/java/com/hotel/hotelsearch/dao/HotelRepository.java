package com.hotel.hotelsearch.dao;

import java.util.List;
import java.util.TreeSet;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.hotel.hotelsearch.entity.Hotel;

public interface HotelRepository extends JpaRepository<Hotel, Long> {

	
	List<Hotel> findByCityOrderByPricePerNightDesc(String city);
	
	@Query("select distinct city from Hotel")
	TreeSet<String> findDistinctCity();
	
	List<Hotel> findByCity(String city);
	
}
