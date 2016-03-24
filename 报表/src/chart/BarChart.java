package chart;

import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset; 
/** 
* 该类用于演示最简单的柱状图生成
* @author Winter Lau 
*/ 
public class BarChart { 
    public static CategoryDataset getDataSet() { 
        DefaultCategoryDataset dataset = new DefaultCategoryDataset(); 
        dataset.addValue(100, "北京", "苹果"); 
        dataset.addValue(100, "上海", "苹果"); 
        dataset.addValue(100, "广州", "苹果"); 
        dataset.addValue(200, "北京", "梨子"); 
        dataset.addValue(200, "上海", "梨子"); 
        dataset.addValue(200, "广州", "梨子"); 
        dataset.addValue(300, "北京", "葡萄"); 
        dataset.addValue(300, "上海", "葡萄"); 
        dataset.addValue(300, "广州", "葡萄"); 
        dataset.addValue(400, "北京", "香蕉"); 
        dataset.addValue(400, "上海", "香蕉"); 
        dataset.addValue(400, "广州", "香蕉"); 
        dataset.addValue(500, "北京", "荔枝"); 
        dataset.addValue(500, "上海", "荔枝"); 
        dataset.addValue(500, "广州", "荔枝"); 
        return dataset; 
    } 
}