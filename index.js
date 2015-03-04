module.exports = function(value) {
  if (value > 100) {
    value = 100;
  }
  if (value < 0) {
    value = 0;
  }
  var scaled = value * 255 / 100;
  return "rgb(" + scaled + "," + scaled + "," + scaled + ")";
};
