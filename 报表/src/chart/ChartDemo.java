package chart;

import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.general.DefaultPieDataset;

public class ChartDemo extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ChartDemo() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		CategoryDataset dataset_bar=BarChart.getDataSet();
        JFreeChart chart_bar = ChartFactory.createBarChart3D( 
                           "水果产量图", // 图表标题
                           "水果", // 目录轴的显示标签
                           "产量", // 数值轴的显示标签
                            dataset_bar, // 数据集
                            PlotOrientation.VERTICAL, // 图表方向：水平、垂直
                            true,  // 是否显示图例(对于简单的柱状图必须是 false)
                            false, // 是否生成工具
                            false  // 是否生成 URL 链接
                            );
        DefaultPieDataset dataset_pie=PieChart.getDataSet();
        JFreeChart chart_pie = ChartFactory.createPieChart("水果产量图",  // 图表标题
        	 dataset_pie, 
       		 true, // 是否显示图例
       		 false, 
       		 false 
       		 );                    
        FileOutputStream fos_png = null; 
        FileOutputStream fos_pie = null;
        try { 
            fos_png = new FileOutputStream("D:\\workspace\\MyEclipse Professional 2014\\报表\\WebRoot\\images\\fruit_bar.png"); 
            ChartUtilities.writeChartAsPNG(fos_png, chart_bar, 500, 400);
            fos_pie = new FileOutputStream("D:\\workspace\\MyEclipse Professional 2014\\报表\\WebRoot\\images\\fruit_pie.png"); 
            ChartUtilities.writeChartAsPNG(fos_pie, chart_pie, 400, 400);
        } finally { 
            try { 
                fos_png.close(); 
                fos_pie.close();
            } catch (Exception e) {
            	e.printStackTrace();
            } 
        } 
        response.sendRedirect("index.jsp");
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
