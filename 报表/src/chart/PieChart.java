package chart;

import org.jfree.data.general.DefaultPieDataset; 
/** 
* 用于演示饼图的生成
* @author Winter Lau 
*/ 
public class PieChart { 
	public static DefaultPieDataset getDataSet() { 
		 DefaultPieDataset dataset = new DefaultPieDataset(); 
		 dataset.setValue("苹果",100); 
		 dataset.setValue("梨子",200); 
		 dataset.setValue("葡萄",300); 
		 dataset.setValue("香蕉",400); 
		 dataset.setValue("荔枝",500); 
		 return dataset; 
	 } 
}