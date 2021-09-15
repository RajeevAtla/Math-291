if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="notes-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import three;

size(100);
draw(O--Z,red+dashed,Arrow3);
draw(((-1,-1,0)--(1,-1,0)--(1,1,0)--(-1,1,0)--cycle), blue);
