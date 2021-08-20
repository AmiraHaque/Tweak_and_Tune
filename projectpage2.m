

function retval = projectpage2 ()
% create figure and panel on it
f = figure;
%p = uipanel ("title", "DSP PROJECT","position", [.15 .15 0.5 0.5]);
p = uipanel ("BackgroundColor",[0.6350 0.0780 0.1840])

% left bottom width height
b1 = uicontrol ("parent", p, "string", "Add Echo Effect", "position",[170 40 200 50],'callback',@echoeffect,"ForegroundColor","black","BackgroundColor","white","FontName","Berlin Sans FB");
b2 = uicontrol ("parent", p, "string", "Low Pass Filter", "position",[170 110 200 50],'callback',@filtereffect,"BackgroundColor","white","ForegroundColor","black","FontName","Berlin Sans FB");
b3 = uicontrol ("parent", p, "string", "Add Tremolo Effect", "position",[170 180 200 50],'callback',@tremoloeffect,"BackgroundColor","white","ForegroundColor","black","FontName","Berlin Sans FB");
b4 = uicontrol ("parent", p, "string", "Pitch Correction", "position",[170 250 200 50],'callback',@pitchcorrection,"BackgroundColor","white","ForegroundColor","black","FontName","Berlin Sans FB");
b5 = uicontrol ("parent", p, "string", "Slow Motion Effect", "position",[170 320 200 50],'callback',@slowmoeffect,"BackgroundColor","white","ForegroundColor","black","FontName","Berlin Sans FB");


endfunction
