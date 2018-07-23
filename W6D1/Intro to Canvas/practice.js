document.addEventListener("DOMContentLoaded", function(){
  let canvas = document.getElementById('myCanvas'); // in your HTML this element appears as <canvas id="myCanvas"></canvas>
  canvas.width = 500;
  canvas.height = 500;

  var ctx = canvas.getContext('2d');
  ctx.fillStyle = 'rgb(200,0,0)'; // sets the color to fill in the rectangle with
  ctx.fillRect(10, 10, 55, 50); // draws the rectangle at position 10, 10 with a width of 55 and a height of 50

  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "green";
  ctx.lineWidth = 10;
  ctx.stroke();

  ctx.fillStyle = "yellow";
  ctx.fill();
});
