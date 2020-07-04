settings.outformat="pdf";
settings.prc=false;
settings.render = 16;
size(800);

import three;
import solids;
currentprojection=perspective(5,4,2);
//real cylinder_radius=.25;
//real cylinder_height=2;
//revolution r=shift(1-cylinder_radius,0,0)*cylinder((0,0,-cylinder_height/2),cylinder_radius,cylinder_height,Z);
draw(sphere((0,0,0),1.1),invisible+opacity(0));
draw(unitsphere,
material(diffusepen=gray(0.5), emissivepen=gray(0.4), specularpen=black)
//lightgray
);
//draw(surface(r),
//material(diffusepen=gray(0.5), emissivepen=gray(0.4), specularpen=black)
//lightgray
//);
//draw(r,
//material(diffusepen=gray(0.5), emissivepen=gray(0.4), specularpen=black)
//lightgray
//);



shipout(scale(4.0)*currentpicture.fit());



