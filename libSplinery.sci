//Splinery Example 1
//By GigaG



function [listOut] = splinery_circle(R,theta0,theta_arc,x0,y0,D,n,s0)

t=linspace(0,theta_arc*(%pi/180),n);

x_points = (D)*((R.*(cos(t)-1)).*cosd(theta0) - (R.*sin(t)).*sind(theta0))+ x0;
y_points = ((R.*(cos(t)-1)).*sind(theta0) + (R.*sin(t)).*cosd(theta0))+ y0;

s_vec = ((theta_arc)*(%pi/180)*t)+s0;
s=((theta_arc)*(%pi/180)*t(n));
x1=x_points(n);
y1=y_points(n);

theta_vec=linspace(theta0,(theta0+(D)*theta_arc),n);

listOut=list(x_points,y_points,s_vec,s,theta_vec,x1,y1);


endfunction


function [listOut] = splinery_line(theta0,len,x0,y0,n,s0)

t=linspace(0,len,n);

x_points = (-t.*sind(theta0)+x0);
y_points = ( t.*cosd(theta0)+y0);

s_vec = t+s0;
s=len;
x1=x_points(n);
y1=y_points(n);

theta_vec=linspace(theta0, theta0, n);

listOut=list(x_points,y_points,s_vec,s,theta_vec,x1,y1);


endfunction


function [listOut] = splinery_Zcircle(R,theta0,theta_arc,x0,y0,D,n,s0)

//Up is positive direction, down is negative direction, angle is measured from 
//the positive X axis.
//y_points can be taken to mean "z points" here
t=linspace(0,theta_arc*(%pi/180),n);

x_points = ((R.*(cos(t)-1)).*cosd(theta0-90) - (R.*sin(t)).*sind(theta0-90))+ x0;
y_points = (D)*)((R.*(cos(t)-1)).*sind(theta0-90) + (R.*sin(t)).*cosd(theta0-90))+ y0;

s_vec = ((theta_arc)*(%pi/180)*t)+s0;
s=((theta_arc)*(%pi/180)*t(n));
x1=x_points(n);
y1=y_points(n);

theta_vec=linspace(theta0,(theta0+(D)*theta_arc),n);

listOut=list(x_points,y_points,s_vec,s,theta_vec,x1,y1);


endfunction


function [listOut] = splinery_Zline(theta0,len,x0,y0,n,s0)
//Up is positive direction, down is negative direction, angle is measured from 
//the positive X axis.
//y_points can be taken to mean "z points" here
t=linspace(0,len,n);

x_points = (-t.*sind(theta0-90)+x0);
y_points = ( t.*cosd(theta0-90)+y0);

s_vec = t+s0;
s=len;
x1=x_points(n);
y1=y_points(n);

theta_vec=linspace(theta0, theta0, n);

listOut=list(x_points,y_points,s_vec,s,theta_vec,x1,y1);


endfunction
