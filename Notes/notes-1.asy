if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="notes-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(5cm);
draw((25, 30) -- (0, 0), arrow = Arrow(HookHead));
draw((25, 30) -- (50, 25), arrow = Arrow(HookHead));
draw((50, 25) -- (0, 0), arrow = Arrow(HookHead));

label("$\bm{x}$", (10, 15), NE);
label("$\bm{y}$", (39, 27.5), NW);
label("$\bm{x} - \bm{y}$", (25, 12.5), SE);
label("$\theta$", (25, 30), S);
