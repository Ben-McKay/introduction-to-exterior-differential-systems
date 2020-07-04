if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="curve-2-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat="pdf";
settings.prc=true;
settings.render=0;

import graph3;
import solids;
//currentprojection=orthographic(1,-2,4);
//currentlight=(1,-1,1);
//size3(200,200,80,IgnoreAspect);


real f(real xx,real yy,real zz) {return xx;}
real g(real xx,real yy,real zz) {return yy;}
real h(real xx,real yy,real zz) {return zz;}
//real g(real xx,real yy,real zz) {return .5cos(xx)*yy+.5sin(xx)*zz;}
//real h(real xx,real yy,real zz) {return -.5sin(xx)*yy+.5cos(xx)*zz;}

int N=4;

//for(int i=-N+1; i < N; ++i) {
// for(int j=-N+1; j < N; ++j) {
// real x(real t) {return f(t,t+i,t+j);}
// real y(real t) {return g(t,t+i,t+j);}
// real z(real t) {return h(t,t+i,t+j);}
// path3 p=graph(x,y,z,0,3,operator ..);
// draw(p,white);
// }
//}

int i=0;
real theta=0;

triple F(pair p){
real x=f(p.x,cos(theta)*p.y,-sin(theta)*p.y);
real y=g(p.x,cos(theta)*p.y,-sin(theta)*p.y);
real z=h(p.x,cos(theta)*p.y,-sin(theta)*p.y);
return (x,y,z);
}
pen stylo = paleblue;
draw(surface(F,(0,-N),(3,N),30),stylo);


i=1;


triple G(pair p){
real x=f(p.x,cos(theta)*p.y,-sin(theta)*p.y);
real y=g(p.x,cos(theta)*p.y,-sin(theta)*p.y);
real z=h(p.x,cos(theta)*p.y,-sin(theta)*p.y);
return (x,y,z);
}
pen stylo = palered;
draw(surface(G,(0,-N),(3,N),30),stylo);


