package utils

import (
	"fmt"
	"github.com/PuerkitoBio/goquery"
	"net/http"
	"regexp"
	"strings"
)

func GetCourseInfo(course_code string) CourseInfo {

	// const used when data for a course is missing
	// or there are no webpage for the course
	const NA = "Info not available"

	// course struct to be returned
	var course_struct CourseInfo

	// note here that the url retrieves data for year 2023
	// note here that the url retrieves data for year 2023
	res, err := http.Get("https://www.ntnu.edu/studies/courses/" + course_code + "/2023#tab=omEmnet")
	if err != nil {
		fmt.Println("Error in retrieving the webpage for course" + course_code)
		return course_struct
	}
	defer res.Body.Close()

	if res.StatusCode != 200 {
		fmt.Println("Error in retrieving the webpage for course" + course_code)
		return course_struct
	}

	// Turns the retrieved html file into a DOM tree
	doc, err := goquery.NewDocumentFromReader(res.Body)
	if err != nil {
		fmt.Println("Error in creating goquery for course" + course_code)
		return course_struct
	}

	// adds the course code parameter to the struct to be returned
	course_struct.Course_Code = course_code

	// This is the CSS class that contains the relevant data for a course
	docLength := doc.Find(".card-body").Length()

	// If there are not 2 of such classes, that is because there is no webpage
	// for the course for 2023
	// So a struct  with "info not available" in every field is returned
	if docLength < 2 {
		course_struct.Course_Code = course_code
		course_struct.Location = NA
		course_struct.Instruction_language = NA
		course_struct.Study_level = NA
		course_struct.Teaching_semester = NA
		return course_struct
	}

	// Retrieves the string of the first box containing the study level information
	course_level := doc.Find(".card-body").Slice(1, 2).Text()

	// notice the capture group between the ()
	reg := regexp.MustCompile("Study level:(.*?)\n")

	level_value := reg.FindStringSubmatch(course_level)
	// Gets the captured group and trims it because the string contains tabs and newline
	// characters
	trimmed_level_value := strings.TrimSpace(level_value[len(level_value)-1])

	course_struct.Study_level = trimmed_level_value

	// Gets the string of the second box containing teaching semester,
	// language of instruction and location information for each course
	course_info := doc.Find(".card-body").Slice(2, 3).Text()
	reg = regexp.MustCompile("Teaching semester:(.*?)\n")

	// There is this check because some courses do not have teaching semester
	teach_semester := reg.FindStringSubmatch(course_info)
	if len(teach_semester) > 0 {
		// If there is a teaching semester info, gets the captured group, which is at the
		// of the match array
		teach_semester_trimmed := strings.TrimSpace(teach_semester[len(teach_semester)-1])

		course_struct.Teaching_semester = teach_semester_trimmed
	} else {
		// If length is 0, there is no semester information, info not available is inserted
		course_struct.Teaching_semester = NA
	}

	// no checks for thos information because if the course has a webpage, this information is
	// there for sure
	reg = regexp.MustCompile("Language of instruction:(.*?\\n.*?)\\n")

	instruction_language := reg.FindStringSubmatch(course_info)

	instruction_language_trimmed := strings.TrimSpace(instruction_language[len(instruction_language)-1])

	course_struct.Instruction_language = instruction_language_trimmed

	reg = regexp.MustCompile("Location:.*?\\n.*?\\n(.*?\\n.*?\\n.*?\\n.*?)\\n")

	// This field can contain tab and newline characters between words, so a
	// "replaceNEwlines function was created", and trimm is also used here
	location := reg.FindStringSubmatch(course_info)
	location_trimmed := strings.TrimSpace(replaceNewlines(location[len(location)-1]))
	course_struct.Location = location_trimmed

	return course_struct

}

// replaceNewlines removes all characters that are not those
// listed in this regular expression
func replaceNewlines(input string) string {
	re := regexp.MustCompile("[^a-zA-ZÅØåø,]+")
	replaced := re.ReplaceAllString(input, "")
	return replaced
}
