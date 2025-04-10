
class Functions{



  static int divisionSliderSteps(int max,min,steps){
   int divisions = ((max - min) / steps).round();
    return divisions;
  }

}