package cn.lynu.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.lynu.model.Project;
import cn.lynu.model.Student;
import cn.lynu.model.User;
import cn.lynu.service.ProjectService;
import cn.lynu.service.StudentService;

@Controller
@RequestMapping("/studentController")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	@Autowired
	private ProjectService projectService;
	
	@ResponseBody
	@RequestMapping("/hasChooseProject")
	public Student hasChooseProject(HttpSession session,HttpServletResponse response) {
		response.setContentType("application/json;charset=utf-8");
		User user=(User) session.getAttribute("user");
		if(user!=null) {
			Student student = studentService.getStudentByUserId(user.getUserId());
			if(student!=null) {
				Project project = projectService.getProjectByStudentId(student.getStudentId());
				if(project!=null) {
					return student;
				}
			}
			return null;
		}
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value="/updateProjectByStudentId/{projectId}",method=RequestMethod.PUT)
	public boolean updateProjectByStudentId(HttpSession session,@PathVariable("projectId")String projectId) {
		User user=(User) session.getAttribute("user");
		if(user!=null) {
			Student student = studentService.getStudentByUserId(user.getUserId());
			if(student!=null) {
				if(!student.getStudentId().isEmpty()) {
					return projectService.updateStudentIdByProjectId(student.getStudentId(), projectId);
				}
			}
		}
		return false;
	}
	
	@ResponseBody
	@RequestMapping(value="/updateTeacherId")
	public boolean updateTeacherId(HttpSession session,String teacherId) {
		User user=(User) session.getAttribute("user");
		if(user!=null) {
			Student student = studentService.getStudentByUserId(user.getUserId());
			if(student!=null) {
				return studentService.updateTeacherId(teacherId,student.getStudentId());
			}
		}
		return false;
	}
	
	@ResponseBody
	@RequestMapping("/getUserByStudentId")
	public User getUserByStudentId(String studentId) {
		return studentService.getUserByStudentId(studentId);
	}
	
	@ResponseBody
	@RequestMapping(value="/updateProjectNum",method=RequestMethod.PUT)
	public boolean updateProjectNum(String studentId,String teacherId,String projectId) {
		return studentService.updateProjectNum(studentId,teacherId,projectId);
	}
	
	@ResponseBody
	@RequestMapping("/projectNum")
	public boolean projectNum(String studentId) {
		Student student=studentService.projectNum(studentId);
		if(student!=null) {
			if(student.getProjectNum()==1) {
				return true;
			}
		}
		return false;
	}
	
	@ResponseBody
	@RequestMapping(value="/updateNoProjectNum",method=RequestMethod.PUT)
	public boolean updateNoProjectNum(String studentId,String projectId) {
		boolean status1 = studentService.updateNoProjectNum(studentId);
		boolean status2 = projectService.updateNoStudent(projectId);
		if(status1&&status2) {
			return true;
		}
		return false;
	}
	
	@ResponseBody
	@RequestMapping("/getStuAndProject")
	public Student getStuAndProject(HttpSession session,HttpServletResponse response,String studentId) {
		if(studentId!=null&&studentId!="") {
			return studentService.getStuAndProject(studentId);
		}
		User user=(User) session.getAttribute("user");
		if(user!=null) {
			Student student = studentService.getStudentByUserId(user.getUserId());
			if(student!=null) {
				if(student.getProjectId()!=null&&student.getProjectId()!=0) {
					Student newStu = studentService.getStuAndProject(student.getStudentId());
					return newStu;
				}
			}
		}
		return new Student();
	}
	
	@ResponseBody
	@RequestMapping("/getStuAndProjectAndTeacher")
	public Student getStuAndProjectAndTeacher(HttpSession session,HttpServletResponse response) {
		User user=(User) session.getAttribute("user");
		if(user!=null) {
			Student student = studentService.getStudentByUserId(user.getUserId());
			if(student!=null) {
				if(student.getProjectId()!=null&&student.getProjectId()!=0) {
					Student newStu = studentService.getStuAndProjectAndTeacher(student.getStudentId());
					return newStu;
				}
			}
		}
		return new Student();
	}
	
	@ResponseBody
	@RequestMapping("/getStudentAndKtbgBySid")
	public Student getStudentAndKtbgBySid(String studentId) {
		return studentService.getStudentAndKtbgBySid(studentId);
	}
	
	@ResponseBody
	@RequestMapping("/getStudentAndZqjcBySid")
	public Student getStudentAndZqjcBySid(String studentId) {
		return studentService.getStudentAndZqjcBySid(studentId);
	}
	
	@ResponseBody
	@RequestMapping("/findStudent")
	public Student findStudent(HttpSession session) {
		User user=(User) session.getAttribute("user");
		if(user!=null) {
			Student student = studentService.getStudentByUserId(user.getUserId());
			if(student!=null) {
				return student;
			}
		}
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value="/updateStudentInfo",method=RequestMethod.PUT)
	public boolean updateStudentInfo(Student student) {
		return studentService.updateStudentInfo(student);
	}
	
	@RequestMapping("/gotoTstudentscore")
	public ModelAndView gotoTstudentscore(@RequestParam(required=true)String studentId) {
		return new ModelAndView("/teacher/tstudentscore.html?studentId="+studentId);
	}
	
	@ResponseBody
	@RequestMapping(value="/updateScore",method=RequestMethod.PUT)
	public boolean updateScore(Student student) {
		return studentService.updateStudent(student);
	}
	
	@ResponseBody
	@RequestMapping("/getThisStudentScore")
	public Integer getThisStudentScore(HttpSession session) {
		User user=(User) session.getAttribute("user");
		if(user!=null) {
			Student student = studentService.getStudentByUserId(user.getUserId());
			if(student!=null) {
				return studentService.getThisStudentScore(student.getStudentId());
			}
		}
		return -1;
	}
	
}
