Plot construction and appearance
================================

Plot layers
-----------

The layer selector can combine summary lines, summary points, confidence intervals, raw scatter or jittered observations, subject trajectories, box plots, violin plots, bars, areas, histograms, densities, strips, swarms, and regression lines. Availability depends on the selected variable types and rendering engine.

Summaries and confidence intervals
----------------------------------

Choose mean or median summaries. Parametric intervals use standard distributional approximations; bootstrap intervals resample observations and use percentile limits. The confidence level and bootstrap iteration count are configurable.

Colors
------

Discrete palettes color grouping levels or categorical X levels. Manual overrides can assign a specific color to each group. Continuous gradients may be driven by X, Y, combined normalized X and Y, or estimated point density. Available scales include Viridis, Cividis, Turbo, Jet, and other sequential or diverging scales.

Styling
-------

Controls include figure dimensions, DPI, title and subtitle, axis labels, font family and sizes, line width and style, marker shape and size, rotation, grid visibility, spines, logarithmic Y scaling, tick intervals, axis limits, and per-layer transparency.

Legends
-------

Legends can be placed inside any corner or outside the figure on the right, left, top, or bottom. Overlaid layers use one consolidated entry per group rather than duplicating entries for every layer.

Rendering engines
-----------------

Seaborn/Matplotlib is suited to static publication graphics and broad vector/raster export. Plotly provides interactive inspection and HTML export, with static export available when Kaleido and a compatible browser are installed.
