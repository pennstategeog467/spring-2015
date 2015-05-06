Map {
  background-color: #302f2f;
  ::pattern { 
    background-image:url("grass.png");
    background-image-comp-op: multiply;
    background-image-opacity: 0.2;
  }
    
}

#Emergency_Phones {
  marker-file: url("emergency-telephone-24.svg");
  marker-fill: #df1010;
}

#All_StreetLights [zoom=19] {
  marker-width:5;
  marker-fill: #e2d415;
  marker-opacity: 0.9;
}

#StreetLightBuffer {
  [Layer="C-LITE-HPS"]{
    ::fill { 
    polygon-fill: #fffca8;
    polygon-opacity: 0.5;
    comp-op: overlay;
    image-filters: agg-stack-blur(10,10); /*x,y distance it blurs*/
    image-filters-inflate: true;
    }
  }
  [Layer="C-LITE-MH"]{
    ::fill { 
    polygon-fill: #a5fbff;
    polygon-opacity: 0.5;
    comp-op: overlay;
    image-filters: agg-stack-blur(10,10); /*x,y distance it blurs*/
    image-filters-inflate: true;
    }
   }
  ::fill { 
    polygon-fill: #f5ff9d;
    polygon-opacity: 0.5;
    comp-op: overlay;
    image-filters: agg-stack-blur(10,10); /*x,y distance it blurs*/
    image-filters-inflate: true;
    }
} 

#PSU_OPP_Boundary201402 {
  polygon-fill: #292929;
  polygon-opacity: 0.3;
}


#PSU_OPP_Roads_unpaved201402,
#PSU_OPP_Misc_paved201402,
#PSU_OPP_Parking201402,
#PSU_OPP_Roads_major201402,
#PSU_OPP_Roads_minor201402 {
  polygon-fill: #393939;
  image-filters: agg-stack-blur(2,2);
  image-filters-inflate: true;
}

#PSU_OPP_Parking_Stripes201402,
#PSU_OPP_Crosswalks_ln201402,
#PSU_OPP_Crosswalks_poly201402, {
  [zoom>=18] {
    line-width: 0.8;
    line-color: #fff;
    line-opacity: 0.9;
  }
  [zoom=17] {
    line-width: 0.4;
    line-color: #fff;
    line-opacity: 0.6;
  }
  comp-op: lighten;
}

#PSU_OPP_Recreation201402 [LAYER!='L-SITE-SPRT-GOLF'] [zoom>16] {
  line-width: 0.7;
  line-color: #7a7a7a;
}

#PSU_OPP_Planting_Beds201402 {
  polygon-fill: #393939;
}

#PSU_OPP_Sidewalks201402 {
    ::shadow {
    line-color: #000;
    line-width: 1;
    line-opacity: 0.5;
    image-filters: agg-stack-blur(3,3);
    image-filters-inflate: true;
    comp-op: darken;
  }
  ::fill {
    polygon-fill: #938a78;
    ["LAYER" = "L-SITE-WALK-PAVER"] {
      ::fill { polygon-fill: #584343; }
      ::pattern {
        polygon-pattern-file: url("pavers.png");
        polygon-pattern-alignment: local;
        polygon-pattern-opacity: 0.2;
        comp-op: multiply;
        image-filters: agg-stack-blur(1,1);
      }
    }
    ["LAYER" = "L-SITE-WALK-BITUM"] {
      polygon-fill: #888888;
    }
    ["LAYER" = "L-SITE-WALK-STEPS"] {
      line-color: black;
      line-width: 2;
      line-opacity: 0.2;
      image-filters: agg-stack-blur(1,1);
    }
  }
}

#PSU_OPP_Walls201402 {
  building-height: 0.3;
  building-fill: #888484;
}

#PSU_OPP_Buildings201402 {
  ::outline [zoom>=18] {
    line-color: #000;
    line-width: 3;
    image-filters: agg-stack-blur(5,5);
    ["BLDG_ABBR" = "SWM"] { line-width: 1; }
  }
  ::box {
    ["BLDG_ABBR" = "SWM"] {
      building-fill-opacity: 0;
      ::fill {
        polygon-fill: #3e5663; 
      }
      ::pattern {
        polygon-pattern-file: url("grass.png");
        polygon-pattern-alignment: local;
        polygon-pattern-opacity: 0.8;
        comp-op: screen;
        image-filters: agg-stack-blur(3,3);
        building-fill-opacity: 0;
      }
    }
    ["BLDG_NAME_" = "Waring Hall"],["BLDG_NAME_" = "HUB-Robeson Cultural Ctr"],
      ["BLDG_NAME_" = "Nittany Lion Inn"],["BLDG_NAME_" = "Warnock Hall"],
      ["BLDG_NAME_" = "Eisenhower Parking Deck"],["BLDG_NAME_" = "Pollock Hall"],
      ["BLDG_NAME_" = "Redifer Hall"],["BLDG_NAME_" = "Findlay Hall"],
      ["BLDG_NAME_" = "Johnston Hall"]{
      building-fill-opacity: 0;
      ::fill {
        building-height: 2;
        building-fill: #2008fa;
        }
      }
    building-height: 2;
    building-fill: #3d508a;
  }
}

