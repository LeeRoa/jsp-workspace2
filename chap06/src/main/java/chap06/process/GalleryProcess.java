package chap06.process;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GalleryProcess implements RequestProcess {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		// 이미지 경로들은 DB에서 꺼냈다고 가정한다.
		List<String> paths = new ArrayList<>();
		
		paths.add("https://search.pstatic.net/common/?src=http%3A%2F%2Fshopping.phinf.naver.net%2Fmain_3570278%2F35702783590.20221108083413.jpg&type=sc960_832");
		paths.add("https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAyMDA2MjlfMjk1%2FMDAxNTkzNDQyMjA4NzA2.-H1z9-NIPjLQxJbE-mD9K2YhVMZhslfHoo5uZpnCIxAg.RJOqiaBcV_aYBgYZxsZTYB20YqGjcFx7Qro5FionTegg.JPEG%2FexternalFile-126.jpg&type=sc960_832");
		paths.add("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzAzMjFfMTE4%2FMDAxNjc5NDA1NDAzNjY1.ZgNZUC9d5C_N3YR7nz-rmxGIj_okkUgkPozxQfl9mPwg.jkPfkGQhM8ciyiGeB0e7K3YuWRwVQn-kwc1QRlxNacUg.JPEG.gustmd1231%2F18704039e5d4c57fa.jpg&type=sc960_832");
		
		paths.add(request.getContextPath() + "/resources/img/animal/bear1.jpg");
		paths.add(request.getContextPath() + "/resources/img/animal/bear2.jpg");
		paths.add(request.getContextPath() + "/resources/img/animal/dog1.jpg");

		paths.add(request.getContextPath() + "/resources/img/animal/bear1.jpg");
		paths.add(request.getContextPath() + "/resources/img/animal/bear2.jpg");
		paths.add(request.getContextPath() + "/resources/img/animal/dog1.jpg");
		
		request.setAttribute("img_paths", paths);
		
		return "/gallery";
	}

}
