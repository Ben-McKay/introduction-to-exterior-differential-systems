settings.outformat="pdf";
settings.render=8;
import three;
import graph3;
size(14cm,0);
currentprojection=perspective(0,20,20);
currentlight=(16,15,25);

int mini=1;
int maxi=10;

int angleo=-115;
int anglei=-25;


for(int i=1; i<maxi; ++i){
	real lambda=1+2*((i-mini+1)/(maxi-mini+2));
	real xs=sqrt(lambda);
	real ys=sqrt(lambda-1);

//	surface pln=scale3(2)*unitplane;
//	pln=rotate(angle=90,u=(0,0,0),v=X)*pln;
//	pln=rotate(angle=140+cc*30,u=(0,0,0),v=Z)*pln;
//	draw (pln,surfacepen=white);
	
	triple f(real t) {
		return (xs*cos(t), 0, ys*sin(t));
	}
	path3 first_curve = graph(f, -pi/2, pi/2, operator ..);
	//draw(first_curve);


	//create surface of revolution
	surface first_revolve = surface(first_curve, c=O, axis=Z,angle1=angleo,angle2=anglei);
	//draw surface
	draw(first_revolve,white);

	real lambda=((i-mini+1)/(maxi-mini+2));	
	real xs=sqrt(lambda);
	real ys=sqrt(1-lambda);
	triple g(real t) {
		return (xs*cosh(t), 0, ys*sinh(t));
	}
	path3 second_curve = graph(g, -1, 1, operator ..);
	//create surface of revolution
	surface second_revolve = surface(second_curve, c=O, axis=Z,angle1=angleo,angle2=anglei);
	//draw surface
	draw(second_revolve,white);
}

