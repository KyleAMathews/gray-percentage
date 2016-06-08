# gray-percentage
Convenience function to get a gray value by percentage e.g. gray(60) -> "hsl(0,0%,60%)"

The function takes a required "lightness" value from 0-100 and an
optional second parameter to mixin color to the gray value. The second
parameter can either be a "hue" value from 0-360 or one of three named
hues, "cool", "slate", and "warm".

We use color theory to choose an appropriate saturation value. Basically
the darker the gray, the higher the saturation value that is choosen.

## Install
`npm install gray-percentage`

## Usage

```javascript
var gray = require('gray-percentage');

var textColor = gray(30);
// textColor = "hsl(0,0%,30%)"

// Get a "cool" gray.
var background = gray(93, "cool")
// background = "hsl(237,0.9935851860000025%,93%)"

// Mixin arbitrary hues e.g. Red.
var sidebarBg = gray(15, 360)
// sidebarBg = "hsl(360,14.84301465%,15%)"
```
