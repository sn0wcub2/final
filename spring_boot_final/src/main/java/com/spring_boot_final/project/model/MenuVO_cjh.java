package com.spring_boot_final.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MenuVO_cjh {

		private String menu_id;
		private String menu_type;
		private String menu_comp;
		private String nutrition_info;
		@DateTimeFormat(pattern = "yyyy-MM-dd")
		private Date date;
		
		public String getMenu_id() {
			return menu_id;
		}
		public void setMenu_id(String menu_id) {
			this.menu_id = menu_id;
		}
		public String getMenu_type() {
			return menu_type;
		}
		public void setMenu_type(String menu_type) {
			this.menu_type = menu_type;
		}
		public String getMenu_comp() {
			return menu_comp;
		}
		public void setMenu_comp(String menu_comp) {
			this.menu_comp = menu_comp;
		}
		public String getNutrition_info() {
			return nutrition_info;
		}
		public void setNutrition_info(String nutrition_info) {
			this.nutrition_info = nutrition_info;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date date) {
			this.date = date;
		}
		
		
}
