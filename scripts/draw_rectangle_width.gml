///draw_rectangle_width(x1, y1, x2, y2, outline, width)

//init & assign variables
var x1, y1, x2, y2, aln, r;
x1 = min(argument0, argument2);
y1 = min(argument1, argument3);
x2 = max(argument0, argument2);
y2 = max(argument1, argument3);

r = (argument4/2);

//draw rectangle
draw_primitive_begin(pr_trianglestrip)
draw_vertex(x1-r, y1-r);
draw_vertex(x1+r, y1+r);
draw_vertex(x2+r, y1-r);
draw_vertex(x2-r, y1+r);
draw_vertex(x2+r, y2+r);
draw_vertex(x2-r, y2-r);
draw_vertex(x1-r, y2+r);
draw_vertex(x1+r, y2-r);
draw_vertex(x1-r, y1-r);
draw_vertex(x1+r, y1+r);
draw_primitive_end();
