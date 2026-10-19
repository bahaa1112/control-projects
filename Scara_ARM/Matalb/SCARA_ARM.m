%  ⁄—Ì› √ÿÊ«· «·Ê’·« 
l1 = 0.45;
l2 = 0.35;
l3_max = 0.5; 

%   [theta, d, a, alpha, sigma]



L(1) = Link([0, 0, l1, 0, 0]); 
L(2) = Link([0, 0, l2, pi, 0]); 
L(3) = Link([0, 0, 0, 0, 1]); 


L(1).qlim = [-pi, pi];       
L(2).qlim = [-pi*0.8, pi*0.8];
L(3).qlim = [0, l3_max];       


scara = SerialLink(L, 'name', 'SCARA 3-DOF');

q_initial = [pi/4, -pi/4, 0.45]; 
scara.plot(q_initial, 'workspace', [-1 1 -1 1 -0.5 0.5]);
