# Project: Integrating Building Plans into a Campus Map
**Student Name:** David Zubenko

### Overview

For my final project I looked at how to integrate building plans into an online, interactive campus map.   The original goal of the project was to simplify each plan and convert it into a GeoJSON file that could be added as an overlay to the class campus map.  To delineate between floors of a multi-story building each overlay would be coded to appear at a specific zoom level.  Ultimately I was unable to complete the project in its entirety, however, I learned a great deal and obtained some preliminary results that future students can build upon.
  
#### OPP Data - Formatting

OPP was kind enough to provide .dwg (AutoCAD) files for Willard and Findlay buildings.  As such this was that data that was used for the project.  The first step in manipulating the data was to convert it from a .dwg to a shapefile.  This process was done twice; once for the polylines that composed the layout of the building and once for the room labels in each building.  Unfortunately no further progress could be made in regard to the room labels, so the remaining steps of the project are for the polylines only.
  
#### OPP Data - Simplification

Once the polylines had been converted to a shapefile the next step was to simplify them.  This step is necessary for two reasons.  The first is that it makes the map easier to read and understand (see Ken Kato, University of Oregon).  The second is that it makes the GeoJSON file smaller and prevents it from crashing when it is loaded into the map.   Unfortunately, I was unable to determine an effective way to simplify the data.  This process is something that future students could look at in more detail.  For purposes of this project I traced the outline of each building and used these files as the basis of the GeoJSON files that became the building overlays.

#### OPP Data – Projections

At this point in the project the shapefiles did not have a projection, so one needed to be defined.  The appropriate projection for University Park is NAD 1983 State Plane Pennsylvania North FIPS 3701 (Feet), so this is the coordinate system that was assigned by way of the Define Projection tool in ArcToolbox.  However, online maps are in the WGS 1984 coordinate system, so all of the data was then re-projected to this standard.  Once this was done the data was ready to be converted into a GeoJSON.

#### OPP Data - GeoJSON  

As the name implies, GeoJSONs are a geographically defined JSON file.  There are tools in ArcGIS and QGIS to create GeoJSONs, however, I found them to be ineffective.  As a result I used the website http://ogre.adc4gis.com to convert the shapefiles into GeoJSONs.  The resulting textfiles were then put into the tester at http://geojson.io to make sure the conversion process had been done properly.  Once this was done the data was added to GitHub before being reformatted at www.rawgit.com for inclusion into the JSFiddle.  I was able to add the GeoJSON files as overlays to the JSFiddle, however, this was as far as I was able to get with the project.  In addition I was unable to define the zoom levels so the layers would appear at certain points.  This is something future students can look at in more detail.

### Google Indoor Maps

Although not connected to our class project, another possible solution for this type of project is Google Indoor Maps.  This is a service Google provides that allows users to upload floor plans of public places to Google Maps.  These plans then appear as you zoom into the building.  There are currently no schools in the United States on Google Indoor Maps, so Penn State would be the first if the university elected to pursue this path.   I considered uploading some plans for this project, however, I ultimately decided that I did not have the legal authority to do so. 

### Problems and Recommendations

Many of the problems I encountered were related to converting data between different data types.  In addition this was the first time I have worked with certain file types (GeoJSONs) and programming languages (JavaScript), so there was a bit of a learning curve.   Therefore, I would recommend that any future student who tries this project have a strong programming background.

### Description of Files

There a five subfolders within the Building_Plan_Files folder.  The first one is the original, unaltered .dwg (AutoCAD) files from OPP.  The second is the GeoJSON files I was able to create for each level of Willard and Findlay.  These GeoJSONs are of just the outline of the building, since I was having trouble with more detailed files.  The third folder contains shapefiles of the building plans with no coordinate system.  The fourth folder are the labels in the correct coordinate system (WGS 1984), and the fifth is the plans in WGS 1984.


