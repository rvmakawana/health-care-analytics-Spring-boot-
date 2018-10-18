package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Exercise;

public interface ExerciseRepository extends CrudRepository<Exercise,Integer> {
  public  List<Exercise> findAll();
  public List<Exercise> findByUname(String u);
  

    @Modifying
	@Transactional	
	@Query("Select exname from Exercise where uname= ?1")
	public List<String> findExercise(String r2);
    
    
   
}
