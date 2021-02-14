package net.wannago.admin.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;

public class FileUtils {

	public static String uploadFile(
			String originalFilename, //원본파일이름
			String uploadFolder, 		//파일경로	
			byte[] bytes,
			int pk) throws Exception {				//파일 데이터
		
		String uploadFileName ="";
		String formatName = originalFilename.substring(originalFilename.lastIndexOf(".")+1);
		System.out.println("formatname : "+formatName);
		
		String savedName = new DecimalFormat("00000").format(pk+1)+"."+formatName;
		System.out.println("savedName : "+savedName);
		
		String path = clacPath(uploadFolder, pk);
		
		File file = new File(uploadFolder+path, savedName);
		FileCopyUtils.copy(bytes, file);
		
		
		if(MediaUtils.getMediaType(formatName) != null) {
			//key값으로 이미지 인지 아닌지 확인
			System.out.println("이미지파일");
			
			uploadFileName = makeThumnail(uploadFolder, path, savedName);
			
		}else {
			System.out.println("일반파일은 noImage 리턴");
			uploadFileName = "noImage";
			
		}
		return uploadFileName;
	}
	
	
	public static String makeThumnail(
			String uploadFolder,
			String path,
			String savedName) throws Exception {
			
			File file = new File(uploadFolder+path,savedName); //원본파일에 대한 정보 가져옴 경로가 같음
			
			System.out.println(file.getParent());
			
			BufferedImage image = ImageIO.read(file);
			//이미지 정보를 파일객체 정보를 이용하여 읽어온다음 , gui환경에서 사용 할 수있음. 읽어올수 있는것이 이미지여야한다
			BufferedImage sourceImage = Scalr.resize(image, 300, 700);
			//TODO 화면 비율 규격 설정해야함.
			
			//썸네일과 원본 이미지를 구분 할 방법
			String thumnailImage = uploadFolder+path+File.separator+"s_"+savedName;
			
			File file1 = new File(thumnailImage);
			
			String formatName = savedName.substring(savedName.lastIndexOf(".")+1);
				
			//sourceimage를 file1위치에 해당되는 이름으로 formatName 형식으로 
			ImageIO.write(sourceImage, formatName, file1);
			
			String name = thumnailImage
					.substring(uploadFolder.length())
					.replace(File.separatorChar,'/');
			System.out.println("name"+name);
			
			return name;
		}
	
	public static String clacPath(String uploadPath, int pk) {
		String datePath="";
		Calendar cal = Calendar.getInstance();
		//현재 시간에 대한 정보
		String yearPath = File.separator+cal.get(Calendar.YEAR);
		String monthPath = yearPath
				+File.separator
				+new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1); //1~9월 앞 숫자 0 붙여줌
		datePath = monthPath+File.separator
				+new DecimalFormat("00").format(cal.get(Calendar.DATE));
		System.out.println("datePath : "+datePath);
		
		String pkPath =datePath+File.separator
				+ new DecimalFormat("00000").format(pk+1);
		
		mkDir(uploadPath,yearPath,monthPath,datePath,pkPath);
		
		return pkPath;
		
		
	}
	
	//가변형 인자는 배열형태로 날라옴
	public static void mkDir(String uploadPath, String... path) {
		
		
		 //path가 현재 3개 날라올꺼니까 ymd d만 꺼내서 사용하기 위해서 uploadpath + datePath 
		if(new File(uploadPath+path[path.length-1]).exists()) {
			System.out.println("경로존재");
			return;
		}
		//경로에 폴더 만들기  년, 월, 일 확인하면서 폴더 존재하지않으면 폴더 생성
		for(String p : path) {
			File file = new File(uploadPath+p);
			if(!file.exists()) {
				file.mkdir();
			}
		}
		
		
		
	}
	

}
