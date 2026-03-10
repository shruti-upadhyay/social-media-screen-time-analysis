CREATE DATABASE screen_time;

USE screen_time;

CREATE TABLE screen_time (
User_ID INT,
Age INT,
Gender VARCHAR(20),
Country VARCHAR(50),
App VARCHAR(50),
Date DATE,
Screen_Time_Min INT,
Notifications INT,
Opens INT
);

SELECT * FROM clean_screen_time_data LIMIT 10;

SELECT * FROM clean_screen_time_data;

SELECT SUM(Screen_Time_Min) FROM clean_screen_time_data;

SELECT App, SUM(Screen_Time_Min) AS total_time FROM clean_screen_time_data GROUP BY App ORDER BY total_time DESC;

SELECT Age, AVG(Screen_Time_Min) AS avg_time FROM clean_screen_time_data GROUP BY Age ORDER BY avg_time DESC;

SELECT App, AVG(Notifications) AS avg_notifications FROM clean_screen_time_data GROUP BY App;

SELECT App, AVG(Opens) AS avg_opens FROM clean_screen_time_data GROUP BY App ORDER BY avg_opens DESC;

SELECT Date, SUM(Screen_Time_Min) AS total_time FROM clean_screen_time_data  GROUP BY Date ORDER BY Date;

