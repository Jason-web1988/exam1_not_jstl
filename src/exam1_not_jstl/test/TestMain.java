package exam1_not_jstl.test;

import java.util.List;

import exam1_not_jstl.dao.MemberDao;
import exam1_not_jstl.dto.Member;

public class TestMain {

	public static void main(String[] args) {
		MemberDao dao = MemberDao.getInstance();
		
		System.out.println(dao);
		
		List<Member> list = dao.selectMemberByAll();
		for(Member m : list) {
			System.out.println(m);
		}
	}
}
