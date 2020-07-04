settings.outformat="pdf";
settings.render=16;
import three;
import graph3;
size(15cm,0);
currentprojection=perspective(0,5,2);
currentlight=(6,5,5);

real xo=pi/6;
real xi=pi/3;



for(int i=2; i<7; ++i){
	real cc=i;

//	surface pln=scale3(2)*unitplane;
//	pln=rotate(angle=90,u=(0,0,0),v=X)*pln;
//	pln=rotate(angle=140+cc*30,u=(0,0,0),v=Z)*pln;
//	draw (pln,surfacepen=white);
	
	triple f(real t) {
		return (t, 0, acosh(cc/cos(t)));
	}
	path3 first_curve = graph(f, xo, xi, operator ..);
	//draw(first_curve);


	//create surface of revolution
	surface first_revolve = surface(first_curve, c=O, axis=Z,angle1=140,angle2=140+180);
	//draw surface
	draw(first_revolve,white);
	triple g(real t) {
		return (t, 0, asinh(cc/sin(t)));
	}
	path3 second_curve = graph(g, xo, xi, operator ..);
	//create surface of revolution
	surface second_revolve = surface(second_curve, c=O, axis=Z,angle1=140,angle2=140+180);
	//draw surface
	draw(second_revolve,white);
}

