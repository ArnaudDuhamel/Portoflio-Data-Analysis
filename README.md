# Data Analysis Portofolio

This repository contains all my data analysis projects.

Here is a brief description of each project: 

## Course info collector (real world task)

In the course of working part time for the international office of the Norwegian University of Science and Technology in Gjøvik, I was tasked to gather information about courses selected by incoming exchange students. 

Courses had to:
- be thought in the fall semester of 2023
- be thought at the campus of Gjøvik
- be thought in english

The study level of each course also had to be collected to verify that the study level of the course matched the study level of the student.

A Golang script was used to scrape the course data, the collected data was cleaned in a csv format, imported in a SQL database and queried for all the courses that did not respect the requirements.

## Chicago bike rides

The task was to analyze the data of the bike sharing company Divvy Bikes for 2022 to gather insights for a marketing campaigned aimed at converting non-member users to members.

The data appeared to reveal a group of non-members interested in sightseeing and tourism. It was therefore recommended to offer membership benefits related to sightseeing and tourism.

## CC3 to CC2 map

This project shows how I used the data from this website:

```
https://www.iban.com/country-codes
```

And then used Excel to create a map structure that could be used in Golang to easily convert a CC3 code to a CC2 code.

## Country name collector

This project is a small program that collects the country names from this API: 

```
https://restcountries.com/v3.1/all
```
And then creates a Golang file containing a list data structure containing the country names.

## Financial analysis

This part of the portfolio contains projects related to financial data: 

### 1. Profitable companies

The data related to the financial statements submitted to the American Securities and Exchange Commmission by publicly listed companies were manipulated with the R programming language to obtain a rough indication of companies that had a profit margin of at least 20% or higher for the fiscal year 2022.

This list is intended to narrow the list of companies to subject to a thorough financial analysis by a financial analyst.

### 2. Amount of profitable companies

The data related to the financial statements submitted to the American Securities and Exchange Commmission by publicly listed companies were manipulated with the R programming language to obtain the number of companies that made a profit in 2022 and those that had a loss.

## Reference group report of the fall 2022 edition of the Computer Graphics course at NTNU

As part of the quality assurance system at NTNU, students are invited to form a reference group in every course to provide feedback to the professor and to write a final report at the end of every semester.

- For the fall 2022 edition of the Computer Graphics course, the failing rate of the course has been compared to that of every other course that I had so far in the programming bachelor. The failing rate of this course was significantly higher then any other course.

- At the same time, tt was the course that had the least amount of weekly teaching hours, by a significant margin, at 3 hours per week.

Those two points were demonstrated through the use of data. 

As a result, the fall 2023 edition of the course will increase the weekly teaching time to 8 hours, among other changes.
