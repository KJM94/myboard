package com.kjmin.myboard.service;

import java.util.List;

import com.kjmin.myboard.domain.ArticleVO;

public interface ArticleService {
	
	void create(ArticleVO articleVO) throws Exception;
	
	ArticleVO read(Integer article_no) throws Exception;
	
	void update(ArticleVO articleVO) throws Exception;
	
	void delete(Integer article_no) throws Exception;
	
	List<ArticleVO> listAll() throws Exception;

}
