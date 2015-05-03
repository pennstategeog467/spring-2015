# Project: Designing a campus web map
**Student Name:** Braden Crowell: 


## BRIEF OVERVIEW:

This project consisted of updating the data for the Blue & White golf courses at Penn State within OSM. Research was conducted in order to ensure standard practices were used and appropriate symbology was maintained. Models (Augusta National/Royal Ancients) were used to aid in ensuring this occured. Fairways and putting greens were updated to proper feature types. Dogleg and hole number were collected and added. Par for each hole was listed as a tag within each hole's layer as well as the yardage for blue tees. Possible future updates could involve adding additional tee boxes and associated yardage, digitizing cart paths and trees that may obstruct play. Research needs to be conducted regarding how to go about this.



## FILES INCLUDED:

All files that are included with this README are screen shots representing the progression of the project and documenting the models that were observed. Most of the information is now stored with OSM and can be accessed there on demand.



## ADDITIONAL RESOURCES:

http://wiki.openstreetmap.org/wiki/Tag:leisure%3Dgolf_course

https://www.mapbox.com/blog/golf-mapping-demo/

http://weait.com/content/golf-course-style-openstreetmap



## FULL SYNOPSIS:


I was tasked with updating the information within Open Street Map (OSM) for both the blue and white golf courses at Penn State. The OSM community is very particular about adhering to standards that have been set when representing certain features so there was preliminary research that needed to be done before any data could be collected. Once that was completed I needed to decide what information, given the time constraints, would be the most pertinent and therefore added to the map. The final step in this process would be to develop a strategy for collecting this data and then using the standardized methods of representation to display them properly within OSM. There were several challenges posed along the way and there is still potentially some work that could be done in the future to ensure a more comprehensive database is created for these golf courses.

The first thing I noticed was the lack of documentation surrounding this particular area when it came to proper digitizing tactics in OSM. I was able to find a table listing several different feature descriptions for items that can be found in a golf course (Wiki). This, however, didn't answer all of the questions I had about certain information I wanted to include but, rather, enabled me to make small changes to visible features within the course. For example, the fairways on the blue and white courses had initially been categorized under the generic term `area` which was a grey polygon, when there was in fact a more suitable ìfairwaysî option listed in the table that, when enabled, changed them to a more appropriate shade of green. At this point I realized I was most likely entering uncharted waters but I decided that a possible approach would be to observe other well-known golf courses to get an idea of how they had been constructed. 

Augusta National Golf course is where the Masters tournament is played every year during the second week of April. This is one of four tournaments that encompass what are referred to as "The Majors." Because of its notoriety, I decided this would serve as the main model for my research. In addition to this, to ensure Augusta wasn't an outlier in the way it was represented, I also investigated the Royal and Ancients Golf club at St. Andrews in Ireland, which is also home to a major tournament every so many years. There were several features both of these courses had that the blue and white course did not. The most prominent of which was a white line running from the tee box of each hole ending at approximately where the hole was located within the green. The line itself was drawn in a way which depicted the dogleg of the hole (the point at which the hole turns right or left abruptly) following the direction the fairway takes on its path to the green. In the middle of each line was a label telling the user which hole they were looking at. These lines were given the distinction `golf hole` which was pre-programmed into OSM's database. As previously mentioned the fairways were also properly designated as such and colored in green as opposed to the current state of the B&W courses which were gray and simply deemed `area`. The last two noticeable differences involved the tee boxes and putting greens. The B&W courses simply did not have the tee boxes digitized and the greens were under the category ìsport pitchî when in fact there was a more applicable `putting green` classification used in both of the models observed. Neither model had any mention of the yardage distances for any of the holes but this was something that I felt could be of use to an avid or amateur golfer that wanted to familiarize themselves with the course, so I decided it would be added.

The acquisition of the data itself was the most challenging part of the project. I had these aerial images of the courses with the fairways digitized on them but I had no way of knowing which hole belonged to the blue or white course and furthermore which hole was which. The approach I took was to print out the aerial images and go directly to the courses where I hoped I could use a golf cart to manually document which hole was which by using the pro shop as a reference point. I was actually given a map of the course by one of the employees but was warned it was somewhat out of date and it lacked detail. I decided it would be best for accuracy purposes to continue with my initial plan and use the map given to clear up any questionable circumstance that may occur. 

Once this was completed I was left with the task of digitizing all of the new data into OSM. I had decided to only use blue tee yardage markers as these are the furthest back, giving users a view of the entire hole at its highest difficulty. Using the aerial imagery with notes I was able to determine which tee box I was viewing on OSM was in fact the blue tees and properly represented them. Then I was able to add the white line representing the dogleg going from the tee box to the green. Through trial and error I found that by assigning the ìcommon nameî as the number of the hole it would be labeled as such. I then added both the par of the hole and the distance using what are referred to as `tags`. I was able to locate the distances for each hole on the B&W courses website listed on a picture of the scorecards for each. The fairways and putting greens were then updated to be up to speed with the standard seen in the models.

Given that I was only able to represent the tee boxes for the blue tees, future projects could involve digitizing the white and red tees and adding their corresponding distances within the tee boxes themselves instead of in the description of the line for each hole. I also think that the cart path could be something that may be of use for properly representing everything on the course. This would most likely involve using a drone or high quality GPS device as the path itself is not visible enough within the aerial imagery to accomplish this. Although visible on the imagery, the models used in this project had some trees represented with points. Further research could be done to determine the viable of this and they could be added as needed.