package chart;

import org.jfree.data.general.DefaultPieDataset; 
/** 
* ������ʾ��ͼ������
* @author Winter Lau 
*/ 
public class PieChart { 
	public static DefaultPieDataset getDataSet() { 
		 DefaultPieDataset dataset = new DefaultPieDataset(); 
		 dataset.setValue("ƻ��",100); 
		 dataset.setValue("����",200); 
		 dataset.setValue("����",300); 
		 dataset.setValue("�㽶",400); 
		 dataset.setValue("��֦",500); 
		 return dataset; 
	 } 
}