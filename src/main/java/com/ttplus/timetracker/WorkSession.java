package com.ttplus.timetracker;


public class WorkSession {
	
	private int id;
	private int timeDuration;
	private String date;
	private int coffeeCount;
	

	public WorkSession(int id, int timeDuration, String date, int coffeeCount) {
		super();
		this.id = id;
		this.timeDuration = timeDuration;
		this.date = date;
		this.coffeeCount = coffeeCount;
	}

	@Override
	public String toString() {
		return "WorkSession [id=" + id + ", timeDuration=" + timeDuration + ", date=" + date + ", coffeeCount="
				+ coffeeCount + "]";
	}

	public int getId() {
		return id;
	}

	public int getTimeDuration() {
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

	public void setTimeDuration(int timeDuration) {
		this.timeDuration = timeDuration;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setCoffeeCount(int coffeeCount) {
		this.coffeeCount = coffeeCount;
	}
	

}