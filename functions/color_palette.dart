String? ColorPalette(String? userInput) {
  Map<String, String> colorMap = {
    'basic bitch black' : '#111111',
    'basic bitch white' : '#EEEEEE',
    'field bg' : '#988F8F',
    'peasant grey 1' : '#4A4848',
    'peasant grey 2' : '#656565',
    'radial glow' : '#EEEEEE + #988F8FBF 75%',
    'dark teal' : '#00313E',
    'light teal' : '#017B9A',
    'linear' : '#017B9A + #002A34',
    'mediocre blue' : '#001AFF',
    'monarch purple 1' : '#4B2C4F',
    'monarch purple 2' : '#653A6A',
    'faded green' : '#159A0E',
    'neon green' : '#19D60F',
    'neon light blue' : '#00FFFB',
    'neon pink' : '#E200FF',
    'neon purple' : '#6600FF',
    'neon red' : '#FF0004',
  };
return colorMap[userInput];
}


// void main() {
  
//   String? x;
//   x = ColorPalette('field bg');
//   print(x);

// }