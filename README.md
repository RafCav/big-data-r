# Analyzing the Average Temperature in Brazilian Cities

The objective of this project was to create a simple R script that demonstrates how to read and load a dataset, process its data, and display graphs. The dataset used in this analysis was downloaded from http://berkeleyearth.org/data

# About the Project

Climate change is a pressing global concern that has garnered significant attention in recent decades. The rise in global temperatures and its potential implications have sparked extensive research and analysis worldwide. In this project, I focus on studying the average temperatures in three Brazilian cities: Palmas, Recife, and Curitiba. By examining temperature data collected at specific intervals (1796, 1846, 1896, 1946, 1996, and 2012), my aim to explore the long-term trends and identify any noticeable changes in average temperatures over time.

# Explaining the Code

To read the dataset, I tried three different functions while monitoring the time and memory consumed.

![image](https://github.com/RafCav/big-data-r/assets/76668402/8f4f228c-6922-4459-9f62-e693292235d0)

Ultimately, I opted to use the fread() function, as it proved to be the most optimized.

Since the focus was on Brazilian cities, I subsetted the dataset, omitting blank lines, and reducing it from over 8.5 million rows to a new dataset with 450k rows.

![image](https://github.com/RafCav/big-data-r/assets/76668402/a746a877-47af-4a82-a720-78d44fc0b8ca)

For plotting, it was necessary to parse the date as a date object and create fields for month and year.

![image](https://github.com/RafCav/big-data-r/assets/76668402/8656c7ff-bbcc-4fab-9339-2ee232359908)

I then selected subsets of data for each city, filtering by city name and a specific range of years to avoid overcrowding the plot.

![image](https://github.com/RafCav/big-data-r/assets/76668402/eb12265f-f20d-4990-9b51-8d4bde6cc2d5)

After obtaining separate datasets for each city, I constructed a plot to visualize the average temperature over the years.

![image](https://github.com/RafCav/big-data-r/assets/76668402/db80ce02-edc2-4e47-8bf5-4ac624259c7b)

Finally, the plot was displayed.

![image](https://github.com/RafCav/big-data-r/assets/76668402/94c7471f-de01-461e-9a5a-5fb73af16a60)

![image](https://github.com/RafCav/big-data-r/assets/76668402/df6b496a-353b-4b63-85bc-8c34402064ee)

![image](https://github.com/RafCav/big-data-r/assets/76668402/012791b6-814b-442b-ae1e-6dbdf84cf55c)

![image](https://github.com/RafCav/big-data-r/assets/76668402/647f997b-2709-4a38-9060-01b22fc90bcf)


# Conclusion

The analysis revealed an increase in average temperatures over the years in Palmas, Recife, and Curitiba. The collected data indicated a consistent rise in average temperatures in these cities, suggesting a gradual warming process.

These preliminary results suggest that climate change has impacted the temperatures in these specific regions. It is important to note that this project was conducted for testing purposes and does not encompass all the relevant variables required for a comprehensive climate analysis. Therefore, drawing more robust final conclusions would necessitate a more in-depth analysis, considering additional factors such as long-term climate data, sophisticated statistical analyses, and other climate indicators.

However, based on the available data and the observed trends, it can be concluded that the cities experienced an increase in average temperatures over the analyzed years. This conclusion underscores the importance of monitoring and understanding climate changes for effective planning and the adoption of appropriate mitigation and adaptation measures.
