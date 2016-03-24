package uploadservlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;

/**
 * Servlet implementation class for Servlet: UploadServlet
 * 
 */
@SuppressWarnings("serial")
public class UploadServlet extends HttpServlet implements Servlet {
	File tmpDir = null;// ��ʼ���ϴ��ļ�����ʱ���Ŀ¼
	File saveDir = null;// ��ʼ���ϴ��ļ���ı���Ŀ¼

	public UploadServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			if (ServletFileUpload.isMultipartContent(request)) {
				DiskFileItemFactory dff = new DiskFileItemFactory();// �����ö���
				dff.setRepository(tmpDir);// ָ���ϴ��ļ�����ʱĿ¼
				dff.setSizeThreshold(1024000);// ָ�����ڴ��л������ݴ�С,��λΪbyte
				ServletFileUpload sfu = new ServletFileUpload(dff);// �����ö���
				sfu.setFileSizeMax(5000000);// ָ�������ϴ��ļ������ߴ�
				sfu.setSizeMax(10000000);// ָ��һ���ϴ�����ļ����ܳߴ�
				FileItemIterator fii = sfu.getItemIterator(request);// ����request
																	// ����,������FileItemIterator����
				while (fii.hasNext()) {
					FileItemStream fis = fii.next();// �Ӽ����л��һ���ļ���
					if (!fis.isFormField() && fis.getName().length() > 0) {// ���˵����з��ļ���
						String fileName = fis.getName().substring(
								fis.getName().lastIndexOf("/") + 1);// ����ϴ��ļ����ļ���
						System.out.println(fileName);
						BufferedInputStream in = new BufferedInputStream(
								fis.openStream());// ����ļ�������
						BufferedOutputStream out = new BufferedOutputStream(
								new FileOutputStream(new File(saveDir
										+ File.separator + fileName)));// ����ļ������
						Streams.copy(in, out, true);// ��ʼ���ļ�д����ָ�����ϴ��ļ���
					}
				}
				response.getWriter().println("File upload successfully!!!");// ���ڳɹ���,����������ϴ��ļ��п���,��Ҫ�Ķ�������������
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void init() throws ServletException {
		/* ���ϴ��ļ��к���ʱ�ļ��н��г�ʼ�� */
		super.init();
		String tmpPath = "d:/tmpdir";
		String savePath = "d:/updir";
		tmpDir = new File(tmpPath);
		saveDir = new File(savePath);
		if (!tmpDir.isDirectory())
			tmpDir.mkdir();
		if (!saveDir.isDirectory())
			saveDir.mkdir();
	}
}