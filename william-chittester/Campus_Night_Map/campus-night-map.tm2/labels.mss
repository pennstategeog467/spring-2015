#road_label [zoom>=15] {
  text-name: [name];
  text-face-name: 'Clan Offc Pro Extd Medium';
  text-size: 10;
  text-fill: #191818;
  text-transform: uppercase;
  text-halo-opacity: 0.5; 
  text-halo-fill: #a9a8a8;
  text-halo-radius: 2;
  text-placement: line;
  text-repeat-distance: 500;
  text-min-path-length: 50;
  text-margin: 4;
  text-avoid-edges: true;
}
/*#poi_label [name="Waring Commons"],[name="HUB-Robeson Cultural Center"],
[name="Nittany Lion Inn"],[name="Warnock Commons"],[name="Eisenhower Parking Deck"],
[name="Pollock Commons"],[name="Redifer Commons"],[name="Waring Commons"],[name="Findlay Commons"]{
  text-name: [name];
    text-face-name: 'Clan Offc Pro Medium';
    text-size: 12;
    [zoom=15] { text-fill: white; }
    [zoom=16] { text-fill: white; }
    [zoom=17] { text-fill: white; }
    [zoom=18] { text-fill: white; }
    [zoom=19] { text-fill: white; }
  text-wrap-width: 10;
  text-halo-opacity: 0.5; 
  text-halo-fill: #7c7c7c;
  text-halo-radius: 2;
  text-margin: 10;
  text-avoid-edges: false;
  [zoom=19] {
    text-wrap-width: 50;
    text-size: 10;
    text-margin: 5;
  }
}*/
#poi_label [zoom>=17] {
  text-name: [name];
  text-face-name: 'Clan Offc Pro Medium';
  text-size: 12;
  text-wrap-width: 10;
  text-fill: #242323;
  text-halo-opacity: 0.5; 
  text-halo-fill: #3b3b3b;
  text-halo-radius: 2;
  text-margin: 10;
  text-avoid-edges: false;
  [zoom=19] {
    text-wrap-width: 50;
    text-size: 10;
    text-margin: 5;
  }
}

#poi_label [zoom>15] [maki!='marker'] {
  marker-fill:#ffffff;
  marker-line-color: black;
  marker-file:url('icons/[maki]-18.svg');
}