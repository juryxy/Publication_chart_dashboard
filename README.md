# Publication Chart Studio

A local Streamlit dashboard for quickly producing publication-ready statistical graphics with Seaborn/Matplotlib or Plotly.

## Features

- CSV upload with automatic comma/semicolon/tab delimiter and encoding detection
- Data preview kept separate from variable metadata and observed values
- Editable plotting-oriented type for every column (continuous, categorical, datetime, identifier, or text)
- Selected-variable inspector showing recognized values, counts, missingness, ranges, and summary information
- Cross-sectional and longitudinal workflows
- Multi-layer figure composer with add/delete/select layer controls and independent per-layer configuration
- Layered plots: line, points, scatter/jitter, box, violin, bar, area, histogram, density, strip, swarm, subject trajectories, summaries and confidence intervals
- Mean or median summaries
- Parametric or bootstrap confidence intervals at configurable confidence levels
- Dynamic titles, labels, dimensions, fonts, line styles, marker styles, opacity, grids, legends, palettes and per-group colors
- Independent multi-select **Group by** and **Color by** controls
- Per-layer left/right Y-axis placement and automatic cross-layer axis/legend synchronization
- Bold heading and axis-label controls, custom legend titles and entries, adjustable grid and axis/spine thickness, and selectable regression statistics
- PNG/JPEG/TIFF/PDF/SVG export for Matplotlib; PNG/JPEG/PDF/SVG/WebP export for Plotly when Kaleido is available
- Export the plotting configuration, a reproducible Python script, and a complete project containing the data
- Reload saved projects
- also read the docs: https://publication-chart-dashboard.readthedocs.io/en/latest/

## Requirements

- Python 3.10 or newer is recommended
- Internet access is required during the first installation of Python packages
- A modern browser such as Chrome, Edge, Firefox, or Safari
- Chrome or Chromium may be needed for Plotly static image export through Kaleido

The application runs locally. Uploaded data is processed by the local Streamlit process and is not automatically sent to an external server.

## Quick start

Importantly, when starting first time the browser web site may take a minute to load (or if loading is still too slow please simply refresh the loading website).

### Windows

Extract the repository and double-click `Launch_Dashboard.bat`.

### macOS

```bash
chmod +x Launch_Dashboard.command
./Launch_Dashboard.command
```

### Linux

```bash
chmod +x Launch_Dashboard.sh
./Launch_Dashboard.sh
```

The launchers create a local `.venv`, install dependencies, start Streamlit, wait until the server is ready, and then open the browser. To disable automatic browser opening on Linux or macOS, set `DASHBOARD_NO_BROWSER=1`.

When launching the first time the browser may take about a minute to show the loaded dashboard.

## Manual installation

```bash
python3 -m venv .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m streamlit run app.py
```

## Main capabilities

- Numeric X/Y filters, custom rule filters, group selection, and subject selection
- Layered Seaborn/Matplotlib and Plotly charts
- Multi-layer overlays with independent Variables & layers, Statistics & labels, and Appearance tabs for each selected figure layer
- Cross-layer settings for shared canvas properties, grid/frame behavior, automatic long-label rotation, and matching-legend merging
- Publication palettes, continuous gradients, density coloring, and Jet
- Overall and grouped linear, quadratic, and cubic regression with confidence intervals
- Optional Pearson/Spearman correlation, p-values, R-squared, and sample sizes below the legend or in an in-plot panel when no legend is shown
- Project save/reload, figure export, filtered-data export, and reproducible Python-code export
- Sphinx/Read the Docs documentation in `readthedocs/`
- A custom legend-title field
- Per-entry legend display-name controls that do not alter the source data
- Grid-thickness and axis/spine-thickness controls independent of plotted line width
- Selectable regression annotations: `r`/`rho`, `p`, `r2`, and `n`

## Multi-layer figure composer

Use **Add layer**, **Delete layer**, and **Select figure layer** above the chart editor to manage independent overlays. The selected layer retains the full **Variables & layers**, **Statistics & labels**, and **Appearance** tabs. A fourth **Cross-layer settings** tab contains only settings that belong to the combined canvas.

Each layer can independently select X and Y variables, grouping and coloring variables, plot elements, statistics, labels, axis ranges, palette/gradient settings, legend settings, filters, left/right Y-axis placement, and other layer-specific controls.

Cross-layer synchronization is semantic: matching categorical X variables share category order and scale; matching numeric X variables share a physical scale; matching Y variables on the same side share a Y scale; and matching Color-by definitions reuse category colors and legend ordering. Matching legends can be merged or kept separate. Plotly can overlay layers with different X variables. The current Matplotlib combined renderer intentionally requires a shared X variable and raises an explicit error rather than silently misaligning incompatible X coordinate systems.

## Independent grouping and coloring

**Group by** and **Color by** are separate multi-select controls. Either role can contain one or several variables.

**Group by** defines statistical and positional grouping. **Color by** is a visual role: it controls the colors of observations and compatible plot objects, but it does not create artificial `group × color` statistical categories. When both roles are selected, grouping, filtering, summaries, box/violin positioning and grouped regression scopes remain based on **Group by**, while the color mapping and color legend are based on **Color by**.

When **Color by** is used without **Group by**, the color categories are used as rendering partitions so colored points, boxes, violins, distributions and summaries remain visible in both rendering engines without promoting the color variable into the statistical grouping role.

Older saved projects that contain the former single grouping/color variable are loaded compatibly.

## Renderer parity audit

The current multi-layer release was reviewed for integration across both Seaborn/Matplotlib and Plotly. The audit covers all 14 exposed plot-layer types in both engines (28 renderer smoke cases), shared grid behavior, independent grid and axis/spine thickness, legend visibility and merging, Group-by/Color-by semantics, left/right Y axes, labels/ticks/limits/log scales, filtering, gradients/colorbars, regression statistics, and long outside Matplotlib legends. See `RENDERER_AUDIT.md` for the detailed checklist and the remaining explicit Matplotlib X-axis limitation.

## Documentation
Dashboard example: 
<img width="1798" height="871" alt="image" src="https://github.com/user-attachments/assets/edc75ab2-7425-4a74-b27c-1d312eb83731" />

Examples:
<img width="1200" height="800" alt="publication_chart" src="https://github.com/user-attachments/assets/fdf7af60-4169-4ae9-8006-69f53a26915e" />
<img width="2575" height="1602" alt="publication_chart (4)" src="https://github.com/user-attachments/assets/ea65bb3d-7bc3-4fb8-b3f7-49068e8228b6" />
<img width="2652" height="1602" alt="publication_chart (3)" src="https://github.com/user-attachments/assets/83339c0e-ab6c-42ef-994e-97ca9f1b7bf8" />

Build locally with:

```bash
python -m pip install -r readthedocs/requirements-docs.txt
python -m sphinx -b html readthedocs readthedocs/_build/html
```

Then open `readthedocs/_build/html/index.html`.

## Credits

Designed by **Juergen Dukart**, written by **ChatGPT 5.6 Sol**.

## License

MIT License. See `LICENSE`.
