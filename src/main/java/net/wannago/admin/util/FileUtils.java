package net.wannago.admin.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;



public class FileUtils {
	
	String uploadPath;
	
	private static FileUtils utils;//싱글톤 형태로 등록
	
	private FileUtils( ) {}; //기본생성자가 private라서 기본생성자로 생성불가
	
	private FileUtils(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	
	//외부에서 호출 할 수 있도록
	public static FileUtils getInstance(String uploadPath) {
		if(utils == null) {
			utils= new FileUtils(uploadPath);
		}
		return utils;
	}

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
			
			
			int dw = 750 , dh = 350;
			int ow = image.getWidth(); 
			int oh = image.getHeight();
			
			int pd = 0;
			if(ow > oh) 
			{ pd = (int)(Math.abs((dh * ow / (double)dw) - oh) / 2d); }
			else { pd = (int)(Math.abs((dw * oh / (double)dh) - ow) / 2d); }
			
			ow = image.getWidth(); 
			oh = image.getHeight();
			
			
			int nw = ow; int nh = (ow * dh) / dw; if(nh > oh) { nw = (oh * dw) / dh; nh = oh; }

			
			BufferedImage cropImg = Scalr.crop(image, (ow-nw)/2, (oh-nh)/2, nw, nh);


			BufferedImage destImg = Scalr.resize(cropImg, dw, dh);

			
			
			
			
			/* BufferedImage sourceImage = Scalr.resize(image, 300, 700); */
			//TODO 화면 비율 규격 설정해야함.
			
			//썸네일과 원본 이미지를 구분 할 방법
			String thumnailImage = uploadFolder+path+File.separator+"s_"+savedName;
			
			File file1 = new File(thumnailImage);
			
			String formatName = savedName.substring(savedName.lastIndexOf(".")+1);
				
			//sourceimage를 file1위치에 해당되는 이름으로 formatName 형식으로 
			ImageIO.write(destImg, formatName, file1);
			
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

	public List<String> uploadFileDetail(MultipartFile[] files,int pk) throws IOException {
		List<String> fileList = new ArrayList<>();
		for(MultipartFile file : files) {
			try {
				String fileName = uploadFiles(file,pk);
				fileList.add(fileName);
			} catch (Exception e) {
				e.printStackTrace();
				throw new IOException("업로드 할 수 없는 파일이 포함 되어 있습니다");
			}
			
		}
		
		return fileList;
	}

	private String uploadFiles(MultipartFile file,int pk) throws IOException {
		String pkPath = new DecimalFormat("00000").format(pk+1);
		String uploadFolder = getFolder()+File.separator+pkPath;//연월일 문자열로 받아옴
		System.out.println("uploadFolder : "+ uploadFolder);
		String originalName = file.getOriginalFilename();
		//원본파일
		
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString().replace("-", "")+"_"+originalName;
		//랜덤한 이름을 생성해줌
		
		File uploadFileFolder = new File(uploadPath,uploadFolder);
		if(!uploadFileFolder.exists()) {
			uploadFileFolder.mkdirs();
		}
		
		
		File upload = new File(uploadPath+File.separator+uploadFolder,savedName);
		//경로생성
		
		//파일에 대한 데이터를 가져옴
		byte[] bytes = file.getBytes();
		
		//경로에 파일 생성 파일정보를 가지고 반복해서 출력해 주는 역할
		FileCopyUtils.copy(bytes, upload);
		
		//브라우저가 인식 할 수 있는 경로를 알려줘야하고 만약 이미지 파일이면 섬네일 사진 만들고 섬네일경로를 알려줌
		System.out.println("섬네일 가기 전");
		return makeFileUploadName(uploadFolder, savedName);
		
	}
public String makeFileUploadName(String uploadFolder, String savedName)throws IOException{
		
		String ext = savedName.substring(savedName.lastIndexOf(".")+1);
		//파일의 확장자명을 확인
		System.out.println("섬네일 내부 uploadFolder"+uploadFolder);
		String uploadName = uploadPath+File.separator+uploadFolder+File.separator+savedName;
		System.out.println("uploadName"+uploadName);
		if(MediaUtils.getMediaType(ext) != null) {
			System.out.println("IMAGE FILE");
			
			//섬네일만들껀데 일단 원본파일을 가져와야함
			//해당되는 위치에 해당되는 파일의 정보를   가져 올수 있음
			
			File file= new File(uploadPath+File.separator+uploadFolder,savedName);
			
			BufferedImage originImage = ImageIO.read(file);
			//이미지 형태로 만들어줌
			
			int dw = 250, dh = 200;
			int ow = originImage.getWidth(); 
			int oh = originImage.getHeight();
			
			int pd = 0;
			if(ow > oh) 
			{ pd = (int)(Math.abs((dh * ow / (double)dw) - oh) / 2d); }
			else { pd = (int)(Math.abs((dw * oh / (double)dh) - ow) / 2d); }
			
			ow = originImage.getWidth(); 
			oh = originImage.getHeight();
			
			
			int nw = ow; int nh = (ow * dh) / dw; if(nh > oh) { nw = (oh * dw) / dh; nh = oh; }

			
			BufferedImage cropImg = Scalr.crop(originImage, (ow-nw)/2, (oh-nh)/2, nw, nh);


			BufferedImage destImg = Scalr.resize(cropImg, dw, dh);


			
			
			
			
			
			/*
			 * //복사본 만들기 BufferedImage sourceImage =
			 * Scalr.resize(originImage,Scalr.Method.AUTOMATIC,
			 * Scalr.Mode.FIT_TO_HEIGHT,100);
			 */
			System.out.println("여기나옴");
			
			//원본이미지와 섬네일 이미지 구분방법
			uploadName = uploadPath+File.separator+uploadFolder+File.separator+"s_"+savedName;
			file = new File(uploadName);
			//이미지 이름 + 복사본 이미지 결합
			ImageIO.write(destImg, ext, file);
			}else {
			
		}
		//브라우저가 인식할 수있는 /형태로 바꿔주는 역할
		uploadName = uploadName.substring(uploadPath.length()).replace(File.separatorChar,'/');
		System.out.println(uploadName);
		return uploadName;
	}
	
	
	
	public String getFolder() {
		//2021/02/10의 형식으로 만듬 
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str = sdf.format(new Date());
		System.out.println(" str : "+str);
		return str.replace("-", File.separator);
		
		
	}

	

}
