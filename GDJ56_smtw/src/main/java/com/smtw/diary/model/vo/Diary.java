package com.smtw.diary.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor //매개변수있는생성자
@NoArgsConstructor  //기본생성자

public class Diary {
	private String memberId;
	private String dDay;
	private String alarm;
	
}
