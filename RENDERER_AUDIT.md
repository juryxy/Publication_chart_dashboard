# Multi-layer renderer audit

This release was reviewed specifically for parity between the combined Seaborn/Matplotlib and Plotly renderers.

## Fixes made in this audit

- **Show shared grid** now forcibly clears Matplotlib/Seaborn grid state before optionally enabling the requested X/Y grid. This prevents a previous `whitegrid` render from leaking into a later figure when the toggle is off.
- Added a shared **Axis / spine thickness** control, independent of grid thickness, and applied it to visible Matplotlib spines/ticks and Plotly axis lines.
- Moved **Show axis spines / frame** to Cross-layer settings because a physical frame belongs to the combined canvas and cannot truthfully be layer-specific.
- Completed the Matplotlib multi-layer drawing path for Histogram, Density, Strip, Swarm, and Subject trajectories so all 14 exposed plot-layer choices have a rendering path in both engines.
- Added missing Matplotlib support for continuous gradients/colorbars in the combined renderer, including raw points and summary-compatible layers.
- Added missing Matplotlib regression-statistics annotations in the combined renderer.
- Fixed categorical Plotly gradients, which could attempt to convert category strings directly to floats.
- Fixed a Plotly ungrouped regression-statistics/legend-key edge case that could raise `StopIteration`.
- Applied the Confidence interval color setting to ungrouped Plotly confidence bands as well as Matplotlib.
- Made categorical sort order (`Sort X values`) feed the synchronized shared X ordering rather than being hard-coded to sorted order.
- Corrected legend-entry renaming so Color-by categories own rename controls whenever Color by is selected; Group-by labels are used only when Color by is absent.
- Removed obsolete multi-layer configuration helper code that no longer participated in rendering.

## Automated checks performed

All tests below passed in the local audited build:

- Every plot layer in both engines: Summary line, Summary points, Confidence interval, Raw scatter/jitter, Subject trajectories, Box, Violin, Bar, Area, Histogram, Density, Strip, Swarm, Trend/regression (28 renderer smoke cases total).
- Shared grid OFF after deliberately enabling Seaborn `whitegrid` first.
- Shared X-only/Y-only grid selection and grid thickness.
- Axis/spine thickness in both engines.
- Per-layer Show legend in Plotly.
- Merge matching legends ON/OFF in both engines.
- Group-by + Color-by point coloring in Matplotlib.
- Color-only box rendering in both engines.
- Left/right Y-axis placement.
- Axis labels, bold labels, label sizes, tick sizes, tick intervals, numeric limits, and logarithmic Y axes.
- Automatic long categorical X-label rotation.
- Group selection, numeric range filters, and custom rule filters.
- Custom legend entry labels.
- Continuous gradients and colorbars.
- Regression statistics annotations.
- Long outside Matplotlib legends remain inside the exported figure canvas.

## Cross-layer synchronization rules

- The same categorical X variable shares one category order and scale across layers.
- The same numeric X variable shares one physical X scale.
- The same Y variable on the same side shares a Y scale.
- Color categories are synchronized across layers that use the same Color-by definition.
- Color by controls appearance; Group by controls statistical grouping.
- Matching legends can be merged or kept separate.

## Remaining explicit limitation

The current Matplotlib combined renderer still requires all layers to use the same X variable. Plotly supports overlaid layers with different X variables. The Matplotlib renderer raises an explicit error rather than silently misaligning different X coordinate systems. Supporting multiple independent Matplotlib X axes would require a separate secondary/twinned X-axis layout policy and is not silently approximated.

Histogram and Density layers retain the application's existing convention of plotting the distribution of the selected Y variable; therefore the ordinary X-variable controls are not meaningful for those two layer types.
