# Project: Building information database
**Student Name:** Jake Simon

*I worked on creating a detailed excel document of all the building services on the University Park campus. This was then used for manipulation of the search bar and building information pop-ups. My final excel document is seen in the folder as well as the powerpoint that I gave as a summary of my project. Below is the written report, describing in detail my goals, intentions and outcomes of the project*

Going into this project, I knew that all of the data would be easy to find, but collecting and managing the information would be the hardest part. My project focused on creating a detailed database on building information for the campus map pop-up. Working with other students who were only focused on the pop-up design, I was able to come up with a very specific excel form that encompassed all the possible information that we wanted to incorporate into the pop-up dialog box.  My major goal for the database was to include as many links as possible so that the campus map will have up-to-date information of every building. 

In this final report, I plan to give a detailed outline on how I accomplished the building information database along with the challenges that I encountered along the way and the possible improvements that can be made in the future. A closer look into each category in the database can help to showcase how exactly I created the massive database. 

I first started the database by designing an excel document that would house all of the information I wanted to include in a simple and visually pleasing way. I made specific columns for every piece of information that I wanted to eventually include. Columns were separated based on:
	
- Picture ID				
- Dining
- Building Name
- Building Function
- College
- Services
- Residence
- Computer Labs
- Rescom

`Picture ID` - With the help of Penn State’s Office of Physical Plant, there already exists a massive folder with pictures of every building on campus. The photos are named as their corresponding building number and so, for the pop-up feature, the photo ID for each building is also its building number. 

`Building Name` - In order to get accurate building names that were current, I accessed the existing OPP data that was found on Penn State’s Facilities and Information Services website. I downloaded the entire shape file, unzipped it and accessed the building information dataset. I then copied all of the building names that included about 873 buildings across the Penn State University Park campus. Described later in the improvements section, the building names were sometimes too descriptive, which is a possible future improvement for the database.

`Building Function` - Along with the building name information that I downloaded off of the Facilities and Information Services website, I also downloaded each building’s function. After discussing with other students in the class who were only focusing on the building pop-up, we realized that the building functions that OPP provided were way too specific. With the help of Will Coughlin and Brittany Eckerstrom, we created new building functions that were less specific so that the buildings would be separated into more general functionalities, making it easier for campus map users to separate the buildings based on simple functions, such as: 

- Academic			
- Maintenance Building
- Administration			
- Parking
- Athletic			
- Residential
- Dining				
- Student Services

`College` - This was by far the most difficult category to manage. Since each of the 12 colleges has its own webpage, I first needed to create links to each college. Also, a majority of colleges do not have a list of all of the buildings that are associated with them, forcing me to look up each individual building and what college is housed in them. Using both the Facilities and Information Services website along with Google, I was able to search for each building to determine what college each building was associated with. Along with the 12 normal colleges, I have also included specific links to Athletic buildings, Penn State Law buildings and specific colleges such as the Graduate School and Schreyer Honors College. 

`Services` - After realizing what college each building was associated with, I was able to further investigate if the building had any additional services. These services varied and included specific labs such as the Applied Research and Forensic Science Labs and also included specific institutes, such as the Energy Institute and the Huck Life Sciences Institute. What made this so time consuming was that each service also includes a direct hyperlink to the webpage describing that service. 

`Dining` - There are about 17 buildings on campus that serve food and with the help of the Penn State food service website, I was able to create links to each dining option location. Along with the dining options available at each building, I was also able to add a link to current menus at each of the dining commons, which I thought was a great feature to have as a pop-up. Besides from the dining commons, there exist other buildings across campus that have dining options such as the Business Building, the HUB, the Kern and IST Buildings.

`Computer Labs` - Penn State has an Information Technology Service that has an interactive map showing all computer lab locations across campus. By interpreting this map, I was able to add computer labs as a service to all buildings on campus that have computer labs accessible to students. I did not include major-specific computer labs, which some buildings do contain. Having this feature on the campus map will be super helpful in order to find available computer labs in specific buildings across campus.

`Rescom` - Although all residential commons buildings contain RESCOM services, there are many other buildings that also have RESidential COMputing services. By using Penn States’ Rescom website, I was able to find all buildings that have these services and then added them as a service to those specific buildings.  

`Residence` - Penn State’s housing website contains information on all the residence areas across campus (East, West, Pollock, South, West, Eastview Terrance, Nittany Apartments and White-Course Apartments). After researching each residence area, I was able to figure out which buildings were in each area and then added a direct link to the specific residential area website. 

### Challenges encountered:

Over the course of the project, I have encountered some problems while collecting and saving the data. When acquiring the data, Penn State’s Office of Physical Plant took some time getting back to me about the photo information. Relying mostly the Facilities and Information Service website also proved itself to be a challenge since the website is difficult to navigate and sometimes did not load properly because of the software used. 

Another major challenge I encountered was with saving the excel data. I continuously saved the excel data onto my thumb drive throughout the semester and with less than two weeks before the end of the semester, my flash drive broke. Since I was lucky enough to have sent a previous version of the massive dataset to a classmate, I was able to get back about half of the data. I worked tirelessly towards the end of the semester to make up the work that was lost. 

### Improvements for the future:

There exist some possible improvements towards the massive database of building information that can help make it better to navigate.  Since I was bound to my excel knowledge, I was not able to add multiple hyperlinks in one cell. If a building had multiple services, I was only able to create one hyperlink per cell. In the future, if we are able to add multiple hyperlinks, the database will contain more information and thus, be more accurate. 

Another improvement would be with regards to the building names, since the OPP building data was very descriptive. If a building was named after someone, the building name would be it’s official name. An example is the Walker Building, which is officially named the Walker Building (Eric A.). Since users of the campus map will not be aware of the official building names, it is not necessary to have such descriptive names. In the future, a new column for less descriptive building names can help users navigate buildings by their commonly used names. Another column for building name abbreviations can also help users search the campus map for specific buildings, using only their abbreviations. 

### Reflection:

I have had a lot of fun constructing this massive database of building information. It is funny that I have gained a lot of knowledge of the buildings across campus, just in time to graduate. Since this database is an excel file, it will be easy to manipulate and change the data in the future, adding new services and changing hyperlinks.  I am excited that all of this information will now be accessible on the campus map as a pop-up and in the future a lot more information/ services and resources can be added to this in order to have the most up-to-date and accurate building database.
