using NBInclude
nbinclude("../MBAM.ipynb")
nbinclude("BK_functions.ipynb")

using Iterators
Ca=([0.0, 0.7, 4.0, 12.0, 22.0, 55.0, 70.0, 95.0]*1e-6)
V=collect(150:25:200)*1e-3
Ca = float(Ca)
V = float(V)

x_grid = Array(Any, (length(Ca)*length(V),))
iterind = 0;
for j1 in product(Ca, V)
    iterind += 1;
    x_grid[iterind] = collect(j1)
end
size(x_grid[1])

phi0 = [2.2e-6, 0.42, 0.1026, 0.58, 39*1e-6, 6.16,30.4,2.0];
