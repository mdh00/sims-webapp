package sims.pkg;

public class Clazz {
	private String id;
	private String grade;
	private String clz;
	private String subject;
	private String lesson;
	private String date;
	private String start_time;
	private String end_time;
	private String venue;
	
	
	
	public Clazz() {
		// TODO Auto-generated constructor stub
	}

	public Clazz(String id, String grade, String clz, String subject, String lesson, String date, String start_time,
			String end_time, String venue) {
		this.id = id;
		this.grade = grade;
		this.clz = clz;
		this.subject = subject;
		this.lesson = lesson;
		this.date = date;
		this.start_time = start_time;
		this.end_time = end_time;
		this.venue = venue;
	}

	public String getId() {
		return id;
	}

	public String getGrade() {
		return grade;
	}

	public String getClz() {
		return clz;
	}

	public String getSubject() {
		return subject;
	}

	public String getLesson() {
		return lesson;
	}

	public String getDate() {
		return date;
	}

	public String getStart_time() {
		return start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public String getVenue() {
		return venue;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public void setClz(String clz) {
		this.clz = clz;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public void setLesson(String lesson) {
		this.lesson = lesson;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}

	
	

}

