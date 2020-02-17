package com.cdac.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cdac.Idao.IAdminDao;
import com.cdac.models.AssignExam;
import com.cdac.models.Candidate;
import com.cdac.models.ExamScheduler;
import com.cdac.models.Question;
import com.cdac.models.Subject;
import com.cdac.models.Test;
import com.cdac.models.TestQuestion;


@Repository("AdminDao")
@Transactional
@Component
public class AdminDaoImpl implements IAdminDao {

	
	@Autowired
	SessionFactory sessionFactory;
	
	public boolean AddSubject(Subject obj) {
		
		try {
			Session session= sessionFactory.getCurrentSession();
			List<Subject> list=getAllSubjects(obj.getEmail());
			String name=obj.getSub_name();
			//String email=obj.getEmail();
			if(list!=null) {
				for(Subject i : list){
					if(i.getSub_name().equals(name)) {
						return false;
					}
				}
				session.save(obj);
				return true;
			}
			else {
				session.save(obj);
				return true;	
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<Subject> getAllSubjects(String email) {
		try {
			Session session=sessionFactory.getCurrentSession();
			
			Query query= session.createQuery("from com.cdac.models.Subject where email=:email");
			query.setParameter("email",email);
			List<Subject> ls= new ArrayList<>();
			ls=query.list();
			for( Subject s : ls) {
				System.out.println(s);
			}
			if(query.list().size()!=0) {
				return query.list();
			}
			else {
				return null;
			}
			
		    }catch(Exception e) {
		    	e.printStackTrace();
		    }
			return null;
	}

	@Override
	public Subject getSubjectId(int id) {
		try {
			Session session= sessionFactory.getCurrentSession();
			Subject sub= session.get(Subject.class, id);
			return sub;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean DeleteSubject(Subject obj) {
		try {
			Session session=sessionFactory.getCurrentSession();
			session.delete(obj);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
			return false;
	}

	@Override
	public boolean AddQuestion(Question obj) {
		try {
			
			Session session=sessionFactory.getCurrentSession();
			session.save(obj);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Question> GetAllQuestion(String email, int subject_id) {
		try {
			Session session=sessionFactory.getCurrentSession();
			
			Query query= session.createQuery("from com.cdac.models.Question where email=:email and subject_id=:subject_id");
			query.setParameter("email", email);
			query.setParameter("subject_id",subject_id);
			List<Question> ls= new ArrayList<>();
			ls=query.list();
			for(Question l : ls) {
				System.out.println(l);
			}
			if(ls!=null) {
				return query.list();
			}else {
				
				return null;
			}
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
		return null;

    }

	@Override
	public boolean AddTest(Test obj) {
		try {
			
			Session session=sessionFactory.getCurrentSession();
			session.save(obj);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Test> GetAllTest(String email) {
		try {
			Session session=sessionFactory.getCurrentSession();
			
			Query query= session.createQuery("from com.cdac.models.Test where email=:email");
			query.setParameter("email", email);
			List<Test> ls= new ArrayList<>();
			ls=query.list();
			for(Test l : ls) {
				System.out.println(l);
			}
			if(ls!=null) {
				return query.list();
			}else {
				
				return null;
			}
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
		return null;

    }

	@Override
	public Subject getSubject(String email, int subject_id) {
		try {
			Session session=sessionFactory.getCurrentSession();
			
			Query query= session.createQuery("from com.cdac.models.Subject where email=:email and subject_id=:subject_id");
			query.setParameter("email",email);
			query.setParameter("subject_id", subject_id);
			Subject sub= (Subject) query;
			return sub;
			
		    }catch(Exception e) {
		    	e.printStackTrace();
		    }
			return null;
	}

	@Override
	public Test getTestId(int tId) {
		try {
			Session session= sessionFactory.getCurrentSession();
			Test test= session.get(Test.class, tId);
			return test;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean DeleteTest(Test obj) {
		try {
			Session session=sessionFactory.getCurrentSession();
			session.delete(obj);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
			return false;
	}

	@Override
	public List<Question> ShowQuestions(String email, int subject_id) {
		try {
			Session session=sessionFactory.getCurrentSession();
			
			Query query= session.createQuery("from com.cdac.models.Question where email=:email and subject_id=:subject_id");
			query.setParameter("email", email);
			query.setParameter("subject_id",subject_id);
			List<Question> ls= new ArrayList<>();
			ls=query.list();
			for(Question l : ls) {
				System.out.println(l);
			}
			if(ls!=null) {
				return query.list();
			}else {
				
				return null;
			}
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
		return null;
	}

	@Override
	public boolean SaveTestQuestion(TestQuestion obj) {
       try {
			Session session=sessionFactory.getCurrentSession();
			session.save(obj);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean AddExamScheduler(ExamScheduler eschedulerObj) {
		try {
			Session session=sessionFactory.getCurrentSession();
			session.save(eschedulerObj);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
}

	@Override
	public List<ExamScheduler> GetAllSchedulesTests(String email,int test_id) {
		try {
			Session session=sessionFactory.getCurrentSession();
			
			Query query= session.createQuery("from com.cdac.models.ExamScheduler where email=:email and test_id=:test_id");
			query.setParameter("email", email);
			query.setParameter("test_id", test_id);
			List<ExamScheduler> ls= new ArrayList<>();
			ls=query.list();
			for(ExamScheduler l : ls) {
				System.out.println(l);
			}
			if(ls!=null) {
				return query.list();
			}else {
				
				return null;
			}
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
		return null;

	}

	/*
	 * @Override public ExamScheduler GetExamScheduler(int id) { try { Session
	 * session= sessionFactory.getCurrentSession(); ExamScheduler esObj=
	 * session.get(ExamScheduler.class, id); return esObj;
	 * 
	 * }catch(Exception e) { e.printStackTrace(); } return null; }
	 */

	@Override
	public List<ExamScheduler> GetAllExamScheduler(int id,String exam_status,String email) {
		try {
			Session session=sessionFactory.getCurrentSession();
			ExamScheduler obj=session.get(ExamScheduler.class, id);
			obj.setExam_status(exam_status);
			session.update(obj);
			Query query=session.createQuery("from com.cdac.models.ExamScheduler where email=:email");
			query.setParameter("email", email);
			return query.list();
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
		return null;
		
	}

	@Override
	public boolean AddCandidate(Candidate canObj) {
		try {
			Session session=sessionFactory.getCurrentSession();
			session.save(canObj);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Candidate> GetAllCandidate(String email) {
		try {
			Session session=sessionFactory.getCurrentSession();
			
			Query query= session.createQuery("from com.cdac.models.Candidate where email=:email");
			query.setParameter("email", email);
			List<Candidate> ls= new ArrayList<>();
			ls=query.list();
//			for(Candidate l : ls) {
//				System.out.println(l);
//			}
			if(ls!=null) {
				return query.list();
			}else {
				
				return null;
			}
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
		return null;
	}

	@Override
	public boolean AddAssignSchedule(AssignExam assignexam) {
		try {
			Session session=sessionFactory.getCurrentSession();
		     session.save(assignexam);
		return true;
	}catch(Exception e) {
		e.printStackTrace();
	}
		return false;
	}
}
