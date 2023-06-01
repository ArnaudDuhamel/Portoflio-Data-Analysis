# Data analysis report
## Task
I was given a list of univeristy course codes and names. 

The list contained many duplicates

My task was to collect the following information for each course:
- If it was thought in the fall 2023 semester
- If it was thought in the campus of Gjøvik, in Norway
- If it was thought in english
- What was the study level of the course (bachelor, master, etc)

This list contained the courses chosen by the exchanges students that would be attending the university in the fall 2023 semester.

## Data sources

<details>
  <summary>Uncleaned course list</summary>

|#| Courses |
|--| ------ |
| 1 | IMT4123 - System Security |
| 2 | MT4113 - Introduction to Cyber and Information Security Technology |
| 3 | IMT4114 - Introduction to Digital Forensics |
| 4 | IMT4887 - Specialisation in Web Technology |
| 5 | NFUT0030 - Norwegian for foreigners, online short course |
| 6 | TØL4018 – Renewable Energy Technology  |
| 7 | TØL4023 – Energy system analysis project course |
| 8 | TØL4012 – Sustainability Assessment    |
| 9 | TØL4014 – Sustainable Manufacturing Systems |
| 10 | IDG2003 - Back-end web development |
| 11 | IMT4889 - Specialisation in Decentralised Technologies |
| 12 | PROG2007 - Mobile Programming |
| 13 | TTM4165 - Digital Economics |
| 14 | IMT4887 - Specialisation in Web Technology |
| 15 | IIKG2001 - Software Security |
| 16 | IIKG3005 - Infrastructure as Code |
| 17 | TPD4156 Design 7- Service Design |
| 18 | IMT4312 Quantitative Methods and Use of Eyetrackers |
| 19 | IMT4316 Information Architecture |
| 20 | IMT4316 Information Architecture |
| 21 | IMT4898 Specialisation in Interaction Design |
| 22 | IMT4309 Usability and Human Factors in Interaction Design  |
| 23 | IDG4112 Research by Design and Tangible Interaction |
| 24 | TPD4156 Design 7 - Service Design |
| 25 | IMT4392 - Deep Learning for Visual Computing |
| 26 | IDIG4002 - Computer Graphics Fundamentals and Applications |
| 27 | PROG2002 - Graphics Programming |
| 28 | IMT4895 - Specialisation in Colour Imaging |
| 29 | IMT4304 : Cross-media Color Reproduction |
| 30 | IMT4884 : Colour management  |
| 31 | SMF1212 : Project management |
| 32 | SMF3084F : Organizational Behavior |
| 33 | NFUT0030 : Norwegian for foreigners, online short course |
| 34 | IMT3603 - Game Programming |
| 35 | PROG2002 - Graphics  Programming |
| 36 | IIK3100 - Ethical Hacking and Penetration Testing |
| 37 | NFUT0060 - Norwegian for foreigners, short course |
| 38 | IMT3603 - Game Programming |
| 39 | PROG2007 - Mobile Programming |
| 40 | PROG2053 - Web Technologies |
| 41 | NFUT0030 - Norwegian for foreigners, online short course |
| 42 | IDIG4002 - Computer Graphics Fundamentals and Applications  |
| 43 | IMT3603 - Game Programming |
| 44 | PROG2002 - Graphics Programming |
| 45 | NFUT0030 - Norwegian for foreigners, online short course |
| 46 | FENG2020 - Energy system analysis |
| 47 | FENG2022 - Bioenergy |
| 48 | TEK2002 - EcoDesign |
| 49 | TØL4018 - Renewable Energy Technology |
| 50 | TØL4015 - Project work |
| 51 | TØL4082 - Project Work for Exchange Students |
| 52 | PROG2007 Mobile Programming |
| 53 | IMT4316 Information Architecture |
| 54 | IDG2012 Web Accessibility, Usability and Ethics |
| 55 | PROG2053 Web Technologies |
| 56 | IDG2009 - Communication |
| 57 | IDG1006 - Physical Prototyping |
| 58 | IDG1362 - Introduction to User-Centered Design |
| 59 | IDG1100 - Web Fundamentals |
| 60 | Intrusion Detection in Physical and Virtual Networks (IMT4204) |
| 61 | Advanced Ethical Hacking - Information Security, Specialization Course (TTM4536) |
| 62 | Norwegian for foreigners, online short course - Campus Ålesund og Campus Gjøvik (NFUT0031) |
| 63 | IMT4392 Deep Learning for Visual Computing |
| 64 | IDIG4002 Computer Graphics Fundamentals and Applications |
| 65 | IDIG4321 Introduction to Color Image Processing |
| 66 | IMT4884 Advanced Colour Management |
| 67 | IIK3100 – Ethical Hacking and Penetration Testing |
| 68 | IIK1001 – Cyber security and computer networks  |
| 69 | PROG2053 – WWW technologies  |
| 70 | IMT3104 – Artificial Intelligence  |
| 71 | IIKG2001 - Software Security |
| 72 | NFUT0030 – Norwegian for foreigners |
| 73 | TPD4156 Design 7- Service Design |
| 74 | IMT4312 Quantitative Methods and Use of Eyetrackers |
| 75 | IMT4316 Information Architecture |
| 76 | TPD4156 Design 7- Service Design |
| 77 | IMT4312 Quantitative Methods and Use of Eyetrackers |
| 78 | IMT4316 Information Architecture |
| 79 | IMT4304 : Cross-Media Color Reproduction |
| 80 | SMF1200 : Introduction to Logistics Management |
| 81 | TØL4014 : Sustainable Manufacturing Systems |
| 82 | NFUT0031 : Norwegian for foreigners, online short course - Campus Ålesund og Campus Gjøvik |
| 83 | PROG2007 - Mobile Programming |
| 84 | IMT3603 - Game Programming |
| 85 | IIK3100 - Ethical Hacking and Penetration Testing |
| 86 | Praksis |
| 87 | IIKG1001 - Cybersecurity and computer networks |
| 88 | IDG2004 - Information Structures and Database Systems  |
| 89 | PROG2007 - Mobile Programming |
| 90 | IIK3100 - Ethical Hacking and Penetration Testing |
| 91 | NFUT0030 - Norwegian for foreigners, online short course |
| 92 | IMT4204 - Intrusion Detection in Physical and Virtual Networks |
| 93 | IIKG2001 - Software Security |
| 94 | IMT4123 - System Security |
| 95 | TTM4536 - Advanced Ethical Hacking  - Information Security, Specialization Course |
| 96 | IIKG3005 - Infrastructure as Code |
| 97 | IMT4113 - Introduction to Cyber and Information Security Technology |
| 98 | IMT4203 - Critical Infrastructure Security |
| 99 | IMT4115 - Introduction to Information Security Management |
| 100 | TPD4156 Design 7- Service Design |
| 101 | IMT4312 Quantitative Methods and Use of Eyetrackers |
| 102 | IMT4316 Information Architecture |
| 103 | IMT4392 Deep Learning for visual computing |
| 104 | IDIG4002 Computer Graphics Fundamentals and Applications |
| 105 | IMT4305 Image Processing and Analysis |
| 106 | IMT4895 Specialising in Colour Imaging |
| 107 | IMT4392 - Deep Learning for Visual Computing |
| 108 | IDIG4002 - Computer Graphics Fundamentals and Applications |
| 109 | IMT4895 - Specialisation in Colour Imaging |
| 110 | PROG2002 - Graphics Programming |
| 111 | PROG2007 - Mobile Programming |
| 112 | IMT3603 - Game Programming |
| 113 | IMT4134 - Specialisation in Software Engingeering |
| 114 | IMT4887 - Specialisation in Web Technology |
| 115 | TPD4156 Design 7- Service Design |
| 116 | IMT4312 Quantitative Methods and Use of Eyetrackers |
| 117 | IMT4316 Information Architecture |
| 118 | IDG1362 - Introduction to User-Centered Design |
| 119 | IDG1292 - Web Coding |
| 120 | IDG2012 - Web Accessibility, Usability and Ethics |
| 121 | IDIG4002 - Computer Graphics Fundamentals and Applications |
| 122 | IMT4884 Advanced Colour Management |
| 123 | IMT4890: Specialisation in Video Processing  |
| 124 | IMT4135: Introduction to Research on Colour and Visual Computing  |
| 125 | IMT4217 - Introduction to Data Privacy |
| 126 | IMT4114 - Introduction to Digital Forensics |
| 127 | IIK500 - Digital Law and Business |
| 128 | IIKG6503 - Introduction to Information Security Management |
| 129 | IMT4114 - Introduction to Digital Forensics |
| 130 | IMT4204 Intrusion Detection in Physical and Virtual Networks |
| 131 | IIKG2001 - Software Security |
| 132 | NFUT0031 - Norwegian for foreigners, online short course |
| 133 | TØL4018 – Renewable Energy Technology  |
| 134 | TØL4023 – Energy system analysis project course |
| 135 | TØL4012 – Sustainability Assessment    |
| 136 | TØL4014 – Sustainable Manufacturing Systems |
| 137 | PROG2002 - Graphics Programming |
| 138 | IMT3603 - Game Programming |
| 139 | IDG1362 - Introduction to User-Centered Design |
| 140 | NFUT0030 - Norwegian for foreigners, online short course |
  
</details>

The course information at the following URL:
www.ntnu.edu/studies/courses/<strong>[course code]</strong>/2023#tab=omEmnet</div>

## Data cleaning
1. Removed the term "praksis" (which means internship)
2. Manually converted # 60 61 and 62 to a format similar to the other entries
3. Extracted course codes with the "text to column" wizard. The separator was the space characters
4. Kept the course codes
5. Trimmed the coures codes
6. Removed duplicates
7. Used concat function to turn the course codes in the following format to easily create a list data structure, then used for scraping :

  |#| Courses |
  |--| ------ |
  | 1 | "IMT4123", |
  | 2 | "MT4113",|
  | ... | ... |
  
8. Scraped the relevant course information with the program in this repository
9. In the course of scraping, the following corrections to the data were made: 

- course codes "MT4113" were replaced by "IMT4113"
- course codes "IIK1001" were replaced by "IIKG1001"
- the course codes "IMT3104" were replaced by code "PROG2051" because the website mentioned that "PROG2051" was now replacing "IMT3104"
- the course codes "IIK500" were replaced by code "IIK5000"

Because every failed http request was manually checked, along with scrapes that returned "Info not available" values.

10. The program output a csv file in the following format: 

```
"
""course_code",""semester"",""language"",""location"",""level""
""IMT4123",""AUTUMN 2023"",""English"",""Gjovik,Trondheim"",""Second degree level""
""IMT4113",""AUTUMN 2023"",""English"",""Gjovik,Trondheim"",""Second degree level""
"
```
11. The "find and replace" function of VS Code was used to replace "" by ". The first and last quotes were also removed.
12. The Ø and Å characters were replaced by O and A to allow for seamless import in a MySQL database. 

Final csv format: 

```
"course_code","semester","language","location","level"
"IMT4123","AUTUMN 2023","English","Gjovik,Trondheim","Second degree level"
"IMT4113","AUTUMN 2023","English","Gjovik,Trondheim","Second degree level"
```

<details>
  <summary>Final csv file:</summary>
  
```
"course_code","semester","language","location","level"
"IMT4123","AUTUMN 2023","English","Gjovik,Trondheim","Second degree level"
"IMT4113","AUTUMN 2023","English","Gjovik,Trondheim","Second degree level"
"IMT4114","AUTUMN 2023","English","Gjovik","Second degree level"
"IMT4887","AUTUMN 2023","English","Gjovik","Second degree level"
"NFUT0030","Info not available","Norwegian","Alesund,Gjovik","Norwegian for international students"
"TOL4018","AUTUMN 2023","English","Gjovik","Second degree level"
"TOL4023","AUTUMN 2023","English","Gjovik","Second degree level"
"TOL4012","AUTUMN 2023","English","Gjovik","Second degree level"
"TOL4014","AUTUMN 2023","English","Gjovik","Second degree level"
"IDG2003","AUTUMN 2023","English","Gjovik","Intermediate course, level II"
"IMT4889","AUTUMN 2023","English","Gjovik","Second degree level"
"PROG2007","AUTUMN 2023","English","Gjovik","Intermediate course, level II"
"TTM4165","AUTUMN 2023","English","Alesund,Gjovik","Second degree level"
"IIKG2001","AUTUMN 2023","English","Gjovik","Third-year courses, level III"
"IIKG3005","AUTUMN 2023","English","Gjovik,Trondheim","Third-year courses, level III"
"TPD4156","AUTUMN 2023","Norwegian","Trondheim","Third-year courses, level III"
"IMT4312","AUTUMN 2023","English","Gjovik","Second degree level"
"IMT4316","AUTUMN 2023","English","Gjovik","Second degree level"
"IMT4898","Info not available","English","Gjovik","Second degree level"
"IMT4309","AUTUMN 2023","English","Gjovik","Second degree level"
"IDG4112","Info not available","English","Gjovik","Second degree level"
"IMT4392","AUTUMN 2023","English","Gjovik","Second degree level"
"IDIG4002","AUTUMN 2023","English","Gjovik","Second degree level"
"PROG2002","AUTUMN 2023","English","Gjovik","Third-year courses, level III"
"IMT4895","AUTUMN 2023","English","Gjovik","Second degree level"
"IMT4304","AUTUMN 2023","English","Gjovik","Second degree level"
"IMT4884","AUTUMN 2023","English","Gjovik","Second degree level"
"SMF1212","Info not available","Info not available","Info not available","Info not available"
"SMF3084F","AUTUMN 2023","Norwegian","Gjovik","Third-year courses, level III"
"IMT3603","AUTUMN 2023","English","Gjovik","Third-year courses, level III"
"IIK3100","AUTUMN 2023","English","Gjovik,Trondheim","Third-year courses, level III"
"NFUT0060","AUTUMN 2023","Norwegian","Trondheim,Gjovik","Norwegian for international students"
"PROG2053","AUTUMN 2023","English","Gjovik","Intermediate course, level II"
"FENG2020","AUTUMN 2023","English, Norwegian","Gjovik","Intermediate course, level II"
"FENG2022","SPRING 2024","English, Norwegian","Gjovik","Intermediate course, level II"
"TEK2002","AUTUMN 2023","English","Gjovik","Intermediate course, level II"
"TOL4015","AUTUMN 2023","English","Gjovik","Second degree level"
"TOL4082","AUTUMN 2023","English","Gjovik","Second degree level"
"IDG2012","AUTUMN 2023","English","Gjovik","Intermediate course, level II"
"IDG2009","AUTUMN 2023","English","Gjovik","Intermediate course, level II"
"IDG1006","AUTUMN 2023","English, Norwegian","Gjovik","Foundation courses, level I"
"IDG1362","AUTUMN 2023","English","Gjovik,Trondheim","Foundation courses, level I"
"IDG1100","AUTUMN 2023","English","Gjovik","Foundation courses, level I"
"IMT4204","AUTUMN 2023","English","Gjovik,Trondheim","Second degree level"
"TTM4536","AUTUMN 2023","English","Gjovik,Trondheim","Second degree level"
"NFUT0031","Info not available","Info not available","Info not available","Info not available"
"IDIG4321","AUTUMN 2023","English","Gjovik","Second degree level"
"PROG2051","SPRING 2024","English","Gjovik","Third-year courses, level III"
"SMF1200","AUTUMN 2023","English, Norwegian","Gjovik","Foundation courses, level I"
"IIKG1001","AUTUMN 2023","English","Gjovik","Foundation courses, level I"
"IDG2004","AUTUMN 2023","English","Gjovik","Intermediate course, level II"
"IMT4203","AUTUMN 2023","English","Gjovik,Trondheim","Second degree level"
"IMT4115","AUTUMN 2023","English","Gjovik,Trondheim","Second degree level"
"IMT4305","Info not available","Info not available","Info not available","Info not available"
"IMT4134","SPRING 2024","English","Gjovik","Second degree level"
"IDG1292","AUTUMN 2023","English","Gjovik","Foundation courses, level I"
"IMT4890","AUTUMN 2023","English","Gjovik","Second degree level"
"IMT4135","AUTUMN 2023","English","Gjovik","Second degree level"
"IMT4217","AUTUMN 2023","English","Gjovik,Trondheim","Second degree level"
"IIK5000","AUTUMN 2023","English, Norwegian","Gjovik,Trondheim","Second degree level"
"IIKG6503","SPRING 2024","Norwegian","Gjovik","Further education, higher degree level"
```
  
</details>

## Data analysis

1. The csv file was imported in a MySQL database
2. The following SQL querry was performed: 

```sql
SELECT 
*
FROM 
course_data
WHERE 
(course_data.language NOT LIKE '%English%' AND course_data.level != "Norwegian for international students")
OR
course_data.location NOT LIKE '%Gjovik%'
OR
course_data.semester != "AUTUMN 2023";
```
The querry retrieved each course that did not meet the requirements.

3. The resulting table was exported
4. Ø and Å characters were reinserted in the table for finale presentation

## Final product presented to the stakeholder

| course_code | semester | language | location | level |
| ----- | ----- | ----- | ----- | ----- |
| NFUT0030 | Info not available | Norwegian | Alesund,Gjovik | Norwegian for international students |
| TPD4156 | AUTUMN 2023 | Norwegian | Trondheim | Third-year courses, level III |
| IMT4898 | Info not available | English | Gjovik | Second degree level |
| IDG4112 | Info not available | English | Gjovik | Second degree level |
| SMF1212 | Info not available | Info not available | Info not available | Info not available |
| SMF3084F | AUTUMN 2023 | Norwegian | Gjovik | Third-year courses, level III |
| FENG2022 | SPRING 2024 | English, Norwegian | Gjovik | Intermediate course, level II |
| NFUT0031 | Info not available | Info not available | Info not available | Info not available |
| PROG2051 | SPRING 2024 | English | Gjovik | Third-year courses, level III |
| IMT4305 | Info not available | Info not available | Info not available | Info not available |
| IMT4134 | SPRING 2024 | English | Gjovik | Second degree level |
| IIKG6503 | SPRING 2024 | Norwegian | Gjovik | Further education, higher degree level |

## Actions to take

The stakeholder will notify each exchange student that selected one of those courses to select other courses.
