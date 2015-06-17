/*var s = function( p ) {

  var x = 100; 
  var y = 100;
  var value = 0;

  p.setup = function() {
    p.createCanvas(700, 410);
  };
    
  p.draw = function()
        {
            if(value===0){
                p.background(0);
                p.fill(255);
                p.ellipse(x,y,50,50);
                value = 255;
            } else {
            value = 0;
        }
  };
};*/
/*
var playing = false;
var fingers;
var button;


function setup() {
  // specify multiple formats for different browsers
  fingers = createVideo(['video/cc-rscan.mp4',
                         'video/cc-rscan.mov']);
  button = createButton('play');
  button.mousePressed(toggleVid); // attach button listener
}

// plays or pauses the video depending on current state
function toggleVid() {
  if (playing) {
    fingers.pause();
    button.html('play');
  } else {
    fingers.loop();
    button.html('pause');
  }
  playing = !playing;
}*/