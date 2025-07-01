package com.ttplus.timetracker;


public class WorkSession {
	
	private int id;
	private String timeDuration;
	private String date;
	private int coffeeCount;
	private String taskName;
	

	public WorkSession(int id, String timeDuration, String date, int coffeeCount, String taskName) {
		super();
		this.id = id;
		this.timeDuration = timeDuration;
		this.date = date;
		this.coffeeCount = coffeeCount;
		this.taskName = taskName;
	}


	public WorkSession(String timeDuration, String date, int coffeeCount, String taskName) {
		super();
		this.timeDuration = timeDuration;
		this.date = date;
		this.coffeeCount = coffeeCount;
		this.taskName = taskName;
	}


	@Override
	public String toString() {
		return "WorkSession [id=" + id + ", timeDuration=" + timeDuration + ", date=" + date + ", coffeeCount="
				+ coffeeCount + ", taskName=" + taskName + "]";
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

	public int getCoffeeCount() {
		return coffeeCount;
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

	public void setCoffeeCount(int coffeeCount) {
		this.coffeeCount = coffeeCount;
	}
	

}