import urllib
import xml.etree.ElementTree as ET
import base64
import json
from xml.dom.minidom import parseString
import urllib2
import shapefile

import fileinput, os

import os.path
import time




def creatShapefile(noBrackets,route):  # puts into shape file
    export = shapefile.Writer(shapefile.POINT)
#counters
    m=0
    n=1
    k=1

#creating feilds to be filled
    export.field('FIRST_FLD')
    export.field('SECOND_FLD','C','40')

    while n<len(noBrackets):

        export.point(float(noBrackets[n]), float(noBrackets[m]))
        export.record(k,'Point')#exports point
        m=m+2
        n=n+2
        k=k+1

    export.save(os.path.join('shapefiles/busLocations', route))#saves

    
    
def find_values(id, json_repr):#finds values by ID
    results = []

    def _decode_dict(a_dict):
        try: results.append(a_dict[id])
        except KeyError: pass
        return a_dict

    json.loads(json_repr, object_hook=_decode_dict)  # return value ignored
    return results




def getLocation(routeName):
    if routeName == 'WhiteLoop':
        k = 57#bus id from XML
    if routeName == 'BlueLoop':
        k = 55
    if routeName == 'RedLink':
        k = 51
    if routeName == 'GreenLink':
        k = 53
    with open("updatingLiveInfo.json") as json_file:
        rawFile = json.load(json_file)
    
    i = 0
    j = 0
    
    gotLatLong = []

    while i<len(rawFile):
        organized = json.dumps(rawFile[i],sort_keys=True,indent=2)
        if find_values('RouteId', organized) == [k]:
            gotLatLong.append(find_values('Latitude', organized))
            gotLatLong.append(find_values('Longitude', organized)) 
        i = i+1

    noBrackets = [l[0] for l in gotLatLong] #gets rid of brackets


    creatShapefile(noBrackets,routeName)


while True:
#gets info from cata and creates temp file
    url = "http://realtime.catabus.com/InfoPoint/rest/vehicles/getallvehicles"
    s = urllib2.urlopen(url)
    contents = s.read()
    file = open("updatingLiveInfo.json", 'w')
    file.write(contents)
    file.close()
#call bus locations based on route           
    getLocation('WhiteLoop')
    getLocation('RedLink')
    getLocation('BlueLoop')
    time.sleep(20)
    print "Refreshed"










    


