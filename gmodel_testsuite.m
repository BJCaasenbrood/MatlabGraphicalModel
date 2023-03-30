obj = Gmodel('Bunny.stl');
obj.bake.render();
view(10,30);
obj.update();

view(10,30); pause(1);
obj.Texture = matcap_copper;
obj.update();
% 
% obj.set('Texture',matcap_grey,'AO',true,'AOPower',5.0,'AORadius',0.2);
% obj.bake.render();