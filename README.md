# Netflix Content Analysis

## Project Information

**Course:** STQD6324 Data Management
**Semester:** Semester 2, 2025/2026
**Name:** Yang Huan
**Matric Number:** P161796
**Tool Used:** Apache Zeppelin, Apache Hive, HDFS
**Dataset:** Netflix Movies and TV Shows Dataset

---

## 1. Project Overview

This project analyzes the Netflix Movies and TV Shows dataset in the streaming entertainment industry. Netflix is one of the major streaming platforms that provides a large collection of movies and TV shows from different countries, release years, ratings and genres.

The main purpose of this project is to demonstrate a complete data management workflow using Apache Zeppelin, HDFS and Apache Hive. The project includes dataset downloading, dataset storage in HDFS, Hive database and table creation, data cleaning, data analysis, visualization, insights, recommendations and conclusion.

The report and README are written in English because the assignment brief and GitHub submission are in English.

---

## 2. Dataset Source

The dataset used in this project is the **Netflix Movies and TV Shows Dataset** from Kaggle.

* Dataset name: Netflix Movies and TV Shows
* File used: `netflix_titles.csv`
* Source: Kaggle
* Dataset link: https://www.kaggle.com/datasets/shivamb/netflix-shows

The dataset contains information such as show ID, content type, title, director, cast, country, date added, release year, rating, duration, listed genre and description.

---

## 3. Tools and Technologies

The following tools were used in this project:

* **Apache Zeppelin**: used as the notebook environment for running commands, queries and visualizations.
* **HDFS**: used to store the raw Netflix CSV dataset.
* **Apache Hive**: used to create databases and tables, perform data cleaning and execute analytical queries.
* **GitHub**: used to publish the final project files, code and screenshots.

These tools were selected because they are related to the data management concepts learned in this course.

---

## 4. Project Workflow

The project followed these main steps:

1. Downloaded the Netflix dataset from Kaggle.
2. Uploaded the raw CSV file into HDFS.
3. Validated the dataset location in HDFS.
4. Created a Hive database named `netflix_final`.
5. Created an external Hive table named `netflix_titles`.
6. Checked the total number of records and sample records.
7. Checked missing values in important columns.
8. Created a cleaned Hive table named `netflix_titles_cleaned`.
9. Performed analytical queries using Hive.
10. Converted query results into charts in Apache Zeppelin.
11. Saved screenshots as evidence for each important step.
12. Uploaded the notebook, screenshots and README file to GitHub.

---

## 5. Data Management Process

### 5.1 HDFS Dataset Storage

The raw Netflix CSV file was uploaded into HDFS before analysis. The file was stored in the project folder:

```text
/user/maria_dev/final_report/netflix/netflix_titles.csv
```

This step ensures that the dataset is available in the Hadoop environment before being accessed through Hive.

### 5.2 Hive Database Creation

A Hive database named `netflix_final` was created to organize the tables and queries used in this project.

### 5.3 Hive External Table Creation

An external Hive table named `netflix_titles` was created to access the raw Netflix CSV file stored in HDFS.

The table includes columns such as:

* `show_id`
* `content_type`
* `title`
* `director`
* `cast_list`
* `country`
* `date_added`
* `release_year`
* `rating`
* `duration`
* `listed_in`
* `description`

The OpenCSVSerde format was used because the dataset contains text fields with commas and quotation marks.

---

## 6. Data Cleaning

Data cleaning was performed before analysis. Missing values were found in several columns, including director, cast, country, date added, rating and duration.

The missing value checking result showed:

* Total raw records: 8,809
* Missing director values: 2,637
* Missing cast values: 827
* Missing country values: 834
* Missing date added values: 13
* Missing rating values: 7
* Missing duration values: 6

In the cleaning process:

* Missing values in `director`, `cast_list` and `country` were replaced with `Unknown`.
* Records with missing important fields such as `date_added`, `rating` and `duration` were removed.
* Only valid records with content type `Movie` or `TV Show` were kept.
* A cleaned Hive table named `netflix_titles_cleaned` was created.

After cleaning, the cleaned table contained 8,789 records.

---

## 7. Data Analysis and Visualization

Several analyses were performed using Hive queries and visualized using Apache Zeppelin chart functions.

### 7.1 Content Type Distribution

The analysis showed that movies make up the majority of Netflix content.

* Movie: 6,125 titles
* TV Show: 2,664 titles

This indicates that Netflix has a stronger movie catalogue compared with TV shows. However, TV shows are still important because they can support long-term audience engagement through multiple seasons and episodes.

### 7.2 Top 10 Countries

The top 10 countries in the cleaned dataset were analyzed based on the number of Netflix titles.

The United States contributed the highest number of titles, followed by India and the United Kingdom. This shows that Netflix content is strongly concentrated in major content-producing countries, while still maintaining an international content strategy.

### 7.3 Rating Distribution

The rating distribution showed that TV-MA and TV-14 are the most common rating categories.

This suggests that a large portion of Netflix content is targeted at mature audiences and teenagers. Family-friendly ratings such as TV-Y, TV-G and G appear less frequently, which indicates that the dataset is more focused on general and mature entertainment content.

### 7.4 Release Year Trend

The release year trend showed that most Netflix titles were released after 2000, especially between 2015 and 2020.

This indicates that Netflix mainly focuses on newer and more recent content to match current audience demand and streaming market trends.

### 7.5 Top 10 Genres

The genre analysis showed that International Movies, Dramas and Comedies are among the most common categories.

This suggests that Netflix places strong emphasis on global entertainment content and broad audience appeal. The presence of documentaries, action content and family movies also shows that Netflix serves different audience groups with diverse viewing preferences.

### 7.6 Movie Duration Group Analysis

Movie duration was also analyzed by grouping movies into different running time categories.

This analysis helps to understand the general length pattern of Netflix movies. Movie duration can affect viewing behaviour and content planning because audiences may prefer different running times depending on their viewing habits.

---

## 8. Key Findings and Discussion

Based on the analysis, several important findings can be observed from the Netflix dataset.

First, movies make up a larger proportion of the dataset than TV shows. There are 6,125 movie titles and 2,664 TV shows in the cleaned dataset. This indicates that Netflix has a stronger movie catalogue, although TV shows remain important for long-term audience engagement.

Second, the United States contributes the highest number of titles, followed by India and the United Kingdom. This shows that Netflix content is strongly concentrated in major content-producing countries, while still maintaining an international content strategy.

Third, the most common ratings are TV-MA and TV-14. This suggests that much of the Netflix catalogue is targeted at mature audiences and teenagers, while children and family-friendly ratings appear less frequently.

Fourth, most titles were released after 2000, especially between 2015 and 2020. This indicates that Netflix mainly focuses on newer and more recent content to match current audience demand.

Fifth, the genre analysis shows that International Movies, Dramas and Comedies are the dominant categories. This suggests that Netflix places strong emphasis on global entertainment content and broad audience appeal.

In addition, the use of HDFS, Hive and Zeppelin helped organize the raw CSV dataset into a structured format. This made the data easier to clean, query, analyze and visualize in a repeatable way.

---

## 9. Recommendations

Based on the findings, several recommendations can be suggested for Netflix content management.

1. Netflix should continue expanding international content because global genres such as International Movies and International TV Shows are highly represented in the dataset.

2. Netflix may strengthen its TV show library further because TV shows can improve audience retention and long-term engagement.

3. Since mature ratings such as TV-MA and TV-14 dominate the dataset, Netflix could consider maintaining a better balance by increasing family-friendly and children’s content.

4. Netflix should continue investing in recently released content because newer titles are more likely to attract current viewers.

5. Netflix can use genre-based strategies to improve content recommendation, especially for popular categories such as drama, comedy, documentaries and international content.

---

## 10. Screenshot Evidence

The screenshots folder is included as supporting evidence for the full data management workflow. Each screenshot records an important step of the project process.

* `01_dataset_source.png`: shows the original open-source dataset page from Kaggle.
* `02_dataset_download_process.png`: shows the dataset download process.
* `03_downloaded_csv_file.png`: shows the downloaded `netflix_titles.csv` file.
* `04_original_csv_in_hdfs.png`: shows the CSV file stored in HDFS.
* `05_csv_moved_to_final_report_hdfs_folder.png`: shows the dataset moved into the final report project folder in HDFS.
* `06_hdfs_dataset_validation.png`: validates that the Netflix CSV file exists in the HDFS project directory.
* `07_hive_database_created.png`: shows the Hive database `netflix_final` was created successfully.
* `08_hive_table_created.png`: shows the external Hive table `netflix_titles` was created successfully.
* `09_hive_total_records.png`: shows the total number of raw records in the Hive table.
* `10_hive_sample_records.png`: shows sample records from the raw Hive table.
* `11_missing_values_check.png`: shows the missing value checking process.
* `12_cleaned_table_created.png`: shows the cleaned Hive table `netflix_titles_cleaned` was created successfully.
* `13_cleaned_table_sample.png`: shows sample records from the cleaned table.
* `14_content_type_distribution.png`: shows the visualization for Movie and TV Show distribution.
* `15_top10_countries.png`: shows the visualization for the top 10 countries.
* `16_rating_distribution.png`: shows the visualization for rating categories.
* `17_release_year_trend.png`: shows the release year trend visualization.
* `18_top10_genres.png`: shows the top 10 genres visualization.
* `19_movie_duration_group.png`: shows the movie duration group analysis.

These screenshots support the reproducibility of the project and show that the dataset was downloaded, stored, cleaned, analyzed and visualized step by step using HDFS, Hive and Apache Zeppelin.

---

## 11. Repository Structure

The GitHub repository includes the following files and folders:

```text
.
├── YANG_HUAN_Final_Report.json
├── README.md
└── screenshots/
    ├── 01_dataset_source.png
    ├── 02_dataset_download_process.png
    ├── 03_downloaded_csv_file.png
    ├── 04_original_csv_in_hdfs.png
    ├── 05_csv_moved_to_final_report_hdfs_folder.png
    ├── 06_hdfs_dataset_validation.png
    ├── 07_hive_database_created.png
    ├── 08_hive_table_created.png
    ├── 09_hive_total_records.png
    ├── 10_hive_sample_records.png
    ├── 11_missing_values_check.png
    ├── 12_cleaned_table_created.png
    ├── 13_cleaned_table_sample.png
    ├── 14_content_type_distribution.png
    ├── 15_top10_countries.png
    ├── 16_rating_distribution.png
    ├── 17_release_year_trend.png
    ├── 18_top10_genres.png
    └── 19_movie_duration_group.png
```

---

## 12. How to View the Project

To view the project:

1. Open Apache Zeppelin.
2. Import the notebook file `YANG_HUAN_Final_Report.json`.
3. Check the markdown explanations, Hive commands, query outputs and visualizations.
4. Refer to the `screenshots` folder for step-by-step evidence of the project workflow.

---

## 13. Conclusion

In conclusion, this project analyzed the Netflix Movies and TV Shows dataset using Apache Zeppelin, HDFS and Apache Hive. The project covered the full data management process, including storing the raw dataset, creating Hive tables, cleaning data, performing analysis and generating visualizations.

The findings show that Netflix content is dominated by movies, strongly influenced by countries such as the United States and India, and mainly targeted at teenage and mature audiences. The analysis also shows that Netflix focuses heavily on recent content and popular genres such as International Movies, Dramas and Comedies.

Overall, this project demonstrates how data management tools can be used to manage, clean, analyze and visualize real-world industry data in a structured and reproducible way.
