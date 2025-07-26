package com.ttplus.timetracker;


public class WorkSession {
	
	private int id;
	private String timeDuration;
	private String date;
	private String taskName;
	

	public WorkSession(int id, String timeDuration, String date, String taskName) {
		super();
		this.id = id;
		this.timeDuration = timeDuration;
		this.date = date;
		this.taskName = taskName;
	}


	public WorkSession(String timeDuration, String date, String taskName) {
		super();
		this.timeDuration = timeDuration;
		this.date = date;
		this.taskName = taskName;
	}


	@Override
	public String toString() {
		return "WorkSession [id=" + id + ", timeDuration=" + timeDuration + ", date=" + date + ", taskName=" + taskName
				+ "]";
	}


	public String getTaskName() {
		return taskName;
	}


	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}


	public int getId() {
		return id;
	}

	public String getTimeDuration() {
		return timeDuration;
	}

	public String getDate() {
		return date;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTimeDuration(String timeDuration) {
		this.timeDuration = timeDuration;
	}

	public void setDate(String date) {
		this.date = date;
	}


}