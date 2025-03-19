setup = function() {
    size(400, 600); 
    background(190,198,240);
     
};

draw = function() {  
    background(144, 182, 209);
    
    //back
    fill(73, 92, 105);
    rect(130, 285, 140, 60);
    fill(145, 159, 168);
    triangle(188, 250, 212, 250, 200, 122);
    
    //middle thingy
    stroke(107, 91, 84);
    fill(186, 141, 114);
    triangle(200, 230, 140, 335, 260, 335);
    noStroke();
    rect(140, 332, 119, 205);
    stroke(107, 91, 84);
  
    var x = 0;
    while(x < 200){
        drawPillar(x, 0);
        x += 192;
    }
    
    //circle window middle
        fill(199, 172, 157);
        stroke(199, 172, 157);
        ellipse(200, 390, 85, 85);
        fill(116, 124, 130);
        ellipse(200, 390, 80, 80);
        line(180, 370, 220, 410);
        line(220, 371, 180, 410);
        line(200, 360, 200, 420);
        line(170, 390, 230, 390);
        
    for (y = 360; y < 435; y += 30){
        fill(199, 172, 157);
        ellipse(200, y, 20, 20);
    }
    for (x = 180; x < 246; x += 40){
        ellipse(x, 370, 20, 20);
        ellipse(x, 410, 20, 20);
    }
    
    for (x = 170; x < 247; x += 60){
        ellipse(x, 390, 20, 20);
    }
    
    fill(116, 124, 130);
    textSize(20);
    text("❋", 193, 367);
    text("❋", 213, 377);
    text("❋", 222, 397);
    text("❋", 213, 417);
    text("❋", 193, 427);
    text("❋", 193, 397);
    text("❋", 163, 397);
    text("❋", 173, 377);
    text("❋", 173, 416);
    fill(217, 196, 184);
    
    //triangle doors middle
    for (x = 160; x < 271; x += 40){
        stroke(107, 91, 84);
        triangle(x, 434, x - 18, 474, x + 18, 474);
        strokeWeight(6);
        point(x, 451);
        strokeWeight(3);
        ellipse(x, 476, 25, 36);
    }
    for (x = 149; x < 271; x += 41){
        fill(110, 71, 34);
        rect(x, 475, 20, 30);
    }
    
    //rect windowns middle
    stroke(107, 91, 84);
    for(x = 187; x < 220; x += 12){
    rect(x, 305, 5, 20);
    }
    
    x = 198;
    y = 245;
    while(y < 343){
      noStroke();
      fill(209, 169, 138);
      rect(x, y, 5, 15);
      x += 10;
      y += 17;
    };
    
    x = 198;
    y = 245;
    while(y < 343){
      rect(x, y, 5, 15);
      x -= 10;
      y += 17;
    };
    
    //water + bridge
    
    var blueShade = 0;
    for(var rectY = 500; rectY < 600; rectY += 8){
        fill (0,0,blueShade);
        rect(0, rectY, 400, 100);
        blueShade += 10;
    }
    
    fill(60, 89, 78);
    triangle(63, 551, 213, 500, -87, 500);
    triangle(191, 500, 341, 551, 491, 500)
    
    stroke(107, 91, 84);

    if(mousePressed){
    showXYPositions();
}
};

var drawPillar = function(pillarX, pillarY){
    translate(pillarX, pillarY);
    fill(199, 172, 157);
    rect(67, 194, 73, 366);
    fill(186, 141, 114);
    rect(85, 194, 36, 366);
    strokeWeight(3);
    stroke(107, 91, 84);
    line(85, 310, 121, 310);
    line(85, 378, 121, 378);
    line(85, 465, 121, 465);
    
    fill(144, 182, 209);
    ellipse(103, 210, 20, 20);
    rect(93, 209, 19, 88);
    line(103, 201, 103, 297);

    fill(102, 98, 97);
    ellipse(103, 330, 20, 20);
    stroke(219, 189, 118);
    line(103, 330, 112, 330);
    line(103, 330, 109, 337);
    stroke(107, 91, 84);
    rect(91, 346, 5, 23);
    rect(101, 346, 5, 23);
    rect(111, 346, 5, 23);
    
    rect(93, 397, 19, 40);
    stroke(199, 172, 157);
    line(103, 400, 103, 437);
    
    fill(217, 196, 184)
    ellipse(103, 397, 20, 20);
    fill(102, 98, 97);
    textSize(20);
    text("❋", 95, 404);
    fill(217, 196, 184);
    rect(93, 436, 19, 17);
    fill(199, 175, 161);
    ellipse(99, 445, 8, 14);
    ellipse(108, 445, 8, 14);

    stroke(107, 91, 84);
    fill(217, 196, 184);    
    ellipse(103, 480, 20, 20);
    fill(110, 71, 34);
    rect(93, 481, 19, 28);
    
    stroke(107, 91, 84);
    fill(171, 124, 96);
    triangle(67, 194, 141, 194, 103, 0);
    fill(191, 145, 117);
    triangle(87, 194, 119, 194, 103, 0);
    fill(186, 141, 114);
    triangle(85, 194, 121, 194, 103, 145);
    fill(199, 172, 157);
    triangle(85, 194, 67, 194, 76, 105);
    triangle(121, 194, 140, 194, 131, 105);
    
    translate(-1*pillarX, -1*pillarY);
};

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
};