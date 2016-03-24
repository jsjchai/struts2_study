package com.action;

import java.util.List;
import com.model.Category;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CategoryService;

@SuppressWarnings("serial")
public class CategoryAction extends ActionSupport{

	private List<Category> categories;
	private CategoryService cs=new CategoryService();
	private Category c;
	private int id;
	
	public String list() {
		categories=cs.list();
		return SUCCESS;
	}
	public String add() {
		cs.add(c);
		return SUCCESS;
	}
	public String update() {
		cs.update(c);
		return SUCCESS;
	}
	public String delete() {
		cs.deleteById(id);
		return SUCCESS;
	}
	public String addInput() {
		return INPUT;
	}
	public String updateInput() {
		c=cs.loadByid(id);
		return INPUT;
	}
	public List<Category> getCategories() {
		return categories;
	}
	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}
	public CategoryService getCs() {
		return cs;
	}
	public void setCs(CategoryService cs) {
		this.cs = cs;
	}
	public Category getC() {
		return c;
	}
	public void setC(Category c) {
		this.c = c;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
