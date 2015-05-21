# Project: A Campus at Night: Streetlights and Emergency Phones
**Student Name:** William Chittester

## Goals 

My goals for this campus mapping project were to produce a version of our collaborative Penn State Campus map that is best suited for use in low light environments, primarily at night. Next I wanted to find a way to graphically display information about safe paths of travel, so a user might be able to see which paths are well lit, while being able to avoid areas that are not as well illuminated.  Finally I wanted my map to provide basic emergency resources available to those who are walking on campus, including building which are staffed 24 hours every day, and the locations of emergency phones with a direct connection to University Police.  These were the initial goals I was attempting to achieve.

## Methods

I started with the street line shape files that were provided to us by the University’s Office of Physical Plant.  I soon determined however, that these files were missing a number of streetlights around campus.  In order to correct this I contacted our OPP rep and he provided me with the original CAD files for all of the streetlights around campus.  The CAD files however were in a raw DWG format, which needed to be converted to a shapefile, in order to be read by Mapbox Studio.  This was simply solved by exporting the selected streetlights using ArcMap which does the conversion automatically. I simply needed to define the coordinate system.  
Next, using QGIS, I created a shapefile of 50ft buffers around every streetlight.  The radius of the buffer was a standard number I determined based on my approximate calculation of the distance at which the light from a streetlight is cast. This was determined by the point at which my shadow was no longer visible.  Along with the emergency phone shapefile, I loaded the buffers and streetlights into Mapbox Studio, and uploaded them as a vector tile source with which I could them add them into our Campus Base map.

Once my data was in Mapbox’s storage, I then edited the Campus Map project XML and YML provided to us by Aaron.  In the XML, I added my data source ID to the list of sources ID’s and in the YML I added my source ID to the list, and added my layers into the list of layers.  The streetlights and buffers were placed so that they would be below the buildings layer, and the emergency phones were placed toward the top just under the labels.  This was done to allow the phones to be completely visible and not blocked by any other layer.  Once the XML and YML files were edited, I reloaded the campus map to see if my layers had been added to the list, from there I then began to work on visualization.

To meet my first goal, which was to create a map that was aesthetically pleasing to look at in low light environments, I needed to decrease the contrast between the element you are looking at and the surrounding environment.  The initial map contained many light colors, the main base color of the campus was an extremely light hue of green, and areas just off campus having an equally light and very bright hue of yellow.  The combination of these light and very bright hues, causes the initial map to have a high contrast in low light. To decrease this contrast I first changed the primary base color to a dark grey.  From there I worked through each of the layers until I found a lightness of their initial hue that complemented the grey background. 

After altering the base map, I created code to add in all of the layers I created.  For streetlight buffers I decided used a hue that related to the type of light, blue/white for Metal Hydride, and yellow for High Pressure Sodium.  These hues are then overlaid on top of the base colors and blurred to give a diminishing effect.  Streetlight points are a simple yellow point which is only visible at the maximum zoom level.  Buildings which are staffed 24 hours a day are shown in a lighter more saturated blue hue, versus the normal unsaturated blue for buildings which provides contrast and helps these buildings stand out against the others.  Finally the emergency phones use a Mapbox Maki symbol that is red in color and draws in the user. This is the only time red is used in the Night Map. 

## Challenges

For the Night Map project everything went smoothly except a few minor initial conversion errors.  The first streetlight data I received was already in a shapefile however upon closer inspection I determined it was missing multiple lights stemming from a CAD to SHP conversion error.  OPP provided the raw CAD files and I was able to fix this problem.  Secondly I had issues with building labels when an emergency phone was in close proximity.  The labels would not be displayed unless viewed at the maximum zoom level. This issue remains unresolved.  

## Remaining Work 

Moving forward, the majority of the remaining work that was not completed this semester includes integrating the Night Map into the current Campus base map.  I foresee two different ways of achieving this integration.  The first being a JavaScript based button that would cycle the Night Map on or off, based on the user's preference.  The second option would be to create a time related code that would automatically turns on the Night Map after dusk, and then switch back to the standard map after dawn.  I would personally prefer the second of the two options.

## File Information

**campus-night-map.tm2** This folder contains the Mapbox project, used to created the nightmap.  It in the edited project XML and YML files, plus the emergency-phones .SVG symbol.

**Emergency_Phones** Folder contains the Emergency Phones shapefile and its related files.

**light.tm2source** Source project used to create a source containing the streetlight points and streetlight buffer polygons.

**phones.tm2source** Source project used to creat a source containing the emergency phone points.

**StreetLights** This folder contains both the streetlight points shapfile and the streetlight buffer shapefile, plus their associated additional files.