if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="notes-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(5cm);
draw((0, 0) -- (15, 15), arrow = Arrow(HookHead));
draw((0, 0) -- (15, -15), arrow = Arrow(HookHead));
draw((15, 15) -- (30, 0), arrow = Arrow(HookHead), dashed);
draw((15, -15) -- (30, 0), arrow = Arrow(HookHead), dashed);

label("$\bm{a}$", (7.5, 7.5), NW);
label("$\bm{b}$", (7.5, -7.5), SW);
label("$\theta$", (0, 0), E);
