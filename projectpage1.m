% create figure and panel on it
f = figure;
p = uipanel ("BackgroundColor",[0.6350 0.0780 0.1840])



%b2 = uicontrol ("parent", p, "string", "Low Pass Filter", "position",[170 110 200 50],'callback',@testfunc,"BackgroundColor","black","ForegroundColor","white");
%b3 = uicontrol ("parent", p, "string", "Add Tremolo Effect", "position",[170 180 200 50],'callback',@tremoloeffect,"BackgroundColor","black","ForegroundColor","white");

%t1 = uicontrol(f,"style","text","string","DSP PROJECT","position",[170 320 200 50],"BackgroundColor",[0.6350 0.0780 0.1840],"ForegroundColor","white","FontSize",20);



t1 = uicontrol(f,"style","text","string","DSP PROJECT","position",[120 300 300 50],"BackgroundColor",[0.6350 0.0780 0.1840],"ForegroundColor","white","FontSize",14,"FontName","Berlin Sans FB");

t2 = uicontrol(f,"style","text","string","TWEAK AND TUNE","position",[120 250 300 50],"BackgroundColor",[0.6350 0.0780 0.1840],"ForegroundColor","white","FontSize",18,"FontName","Berlin Sans FB");

b1 = uicontrol ("parent", p, "string", "Play Song", "position",[190 190 160 50],'callback',@actualplay,"BackgroundColor","white","ForegroundColor","black","FontName","Berlin Sans FB","FontSize",12);

b2 = uicontrol ("parent", p, "string", "Tune and Add Effects", "position",[190 120 160 50],'callback',@projectpage2,"BackgroundColor","white","ForegroundColor","black","FontName","Berlin Sans FB","FontSize",12);

