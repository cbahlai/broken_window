#########################################################################################

#image captions script
#pull in all the functions we wrote before
source("broken_window_script.R")

#here's most of the objects we go on to create- pretty much all info for the caption 
#templates is contained in them:

df<-test



output_frame<-multiple_breakups(df)
output_frame
pyramid_plot(df, rsq_points=TRUE)
stability_time(df, min_percent = 95, error_multiplyer = 1)
relative_range(df)
relative_range_after_stability(df)
proportion_significant(df)
proportion_wrong(df)
proportion_wrong_before_stability(df)

#other functions- abs_range, proportion_wrong_series, broken_stick_plot

# 
# Pyramid Plot Image Description Template Draft
# 
# This graph is referred to as a pyramid plot, entitled “[TITLE].” The horizontal X axis is labeled “[Slope]” and shows the slope ranging from [Negative Number] to [Positive Number] measured  in units of standard deviation from the data’s mean (z-scores). The vertical Y axis is labeled “[Number of Years in Window]” and shows a range from zero to [maximum number] years. There is a black, dashed vertical at [X axis value of central tendency] that represents the central tendency of the longest slope. There are two other dashed vertical lines that are fainter than the central one. These lines are plotted at one standard deviation in both the positive and negative direction from the central tendency. 
# 
# The graph has [Number] red X’s scattered along the red lines that represent analyses with non-significant results. There are [Number] black O’s signifying analyses with significant results. The sizes of the X’s and O’s represent the R-squared value. 
# 
# [Need to describe the distribution of the red Xs on the plot - specific to the results. For example: these X’s are larger at the bottom and decrease in size as the axes increase.]   [Then need to describe the distribution of the black Os on the plot - specific to the results. For example - the black O’s are concentrated around X years and a slope of X.] 
# 
# There are [Number] horizontal lines representing the standard error of each slope, ranging from [Number] to [Number] in increments of [Number]. They are relatively centered at the [location] and decrease in length as they go towards the top of the graph, aligning in a “pyramid” like shape. 
# 
# 
# 
# 
# 
# Wrongness Plot Image Description Template Draft
# 
# 
# The graph is referred to as a wrongness plot, entitled “[TITLE]” The horizontal X axis is labeled “Number of years in window” and shows the number of years in the window ranging from [minimum number] to [maximum number] with intervals of [interval number]. 
# 
# The vertical Y axis is labeled “Average value” and ranges from 0 to 1 in increments of [interval number]. Average value refers to two different data plotted on this graph indicated in the key, named “[proportion wrong]” and “[average R-squared].”  Proportion wrong refers to the proportion of windows of that length producing results that differ from the true slope of the longest series.. Average R-squared refers to the numerical average of the R- squared as computed for each of the segments in the regression at a given window length. 
# 
# There are [number] solid black circles representing the proportion wrong by series length. Below the black dots, there are [number] solid orange triangles representing the average R-squared value for each data point. 
# 
# There are two lines on the graph, both made using a smoothing function (specifically geom_smooth in R) to show trends across the data. There is a solid blue line showing the trends for proportion wrong, and a red dashed line showing the trends for the average R-squared. [Describe the shapes of the smoothing lines, specifics vary by the results] The blue line starts at [value] and angles [direction] [up/down] towards the lower right of the graph with a minimum of [x] [after/before] peaking with a maximum of [X] before ending on a [downward slope] at [value]. The red dashed line has [descriptor] shape starting at [number] and then curving [up/down] toward the X-axis to [value].
# 
# 
# 
# 
# 
# Broken Stick Plot Image Description Template
# 
# 
# This is a GIF of a broken stick plot entitled “[TITLE].” The horizontal X is labeled “[TITLE]” and  shows the Z-scaled response ranging from [minimum] to [maximum] in increments of [number].  The vertical Y axis  is labeled “[TITLE]” and ranges from  [minimum] to [maximum] with dashes at [interval numbers]. 
# 
# Data are plotted as black dots throughout the graph, representing the raw data of the year and Z-scaled response. The dashed lines represent the trends calculated using a linear regression on each window. The red dashed lines are deemed statistically significant while the black dotted lines are deemed not significant. 
# 
# There is a solid black line with a slope of [number] that represents the best fit line of the entire dataset, or the ‘true slope’. Surrounding the black line, there is blue shading that represents the confidence interval around the longest time series. [Number] of the points fall within this range, which represents [how to best describe what being in that means? Do we want to keep the word “right?”]
