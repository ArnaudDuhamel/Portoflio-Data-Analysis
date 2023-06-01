package main

import (
	"NTNU_courses/utils"
	"encoding/csv"
	"log"
	"os"
)

func main() {
	//list of course structs
	var course_list []utils.CourseInfo
	// course stuct in which the collected data for each course will be stored
	var course_struct utils.CourseInfo

	//loops through every course code and collected their related data
	//on the NTNU website
	for _, course := range utils.COURSECODES {
		course_struct = utils.GetCourseInfo(course)
		course_list = append(course_list, course_struct)
	}

	//Creates the string that will be written to a csv file
	var csv_string []string
	csv_string = append(csv_string, "")

	// Frist row of the csv file Column titles
	csv_string[0] += `"course_code","semester","language","location","level"` + "\n"
	var course_string string
	// Creates the rows of the csv file. One row for each course
	for _, course := range course_list {
		course_string = "\"" + course.Course_Code + "\",\"" + course.Teaching_semester + "\",\"" + course.Instruction_language + "\",\"" + course.Location + "\",\"" + course.Study_level + "\"\n"
		csv_string[0] += course_string
	}

	// creates the csv file
	file, err := os.Create("course_data.csv")
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	// Create a CSV writer
	writer := csv.NewWriter(file)

	// Write the csv_string to the file
	err = writer.Write(csv_string)
	if err != nil {
		log.Fatal(err)
	}

	// Flush any buffered data to the underlying writer (the file)
	writer.Flush()

	// Check for any errors that occurred during the write
	if err := writer.Error(); err != nil {
		log.Fatal(err)
	}
}
