//appSkinColor
// true = pink;
// null = white;
// false = blue;

class Settings {
  final bool? appSkinColor;
  final String language;
  final String location;
  final bool splashscreen;
  final int startOfDay;
  final int startOfWeek;
  
  Settings(this.appSkinColor, 
           this.language,
           this.location,
           this.splashscreen,
           this.startOfDay,
           this.startOfWeek
          );
}