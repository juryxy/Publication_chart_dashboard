# Publication Chart Studio

A local Streamlit dashboard for quickly producing publication-ready statistical graphics with Seaborn/Matplotlib or Plotly.

## Features

- CSV upload with automatic comma/semicolon/tab delimiter and encoding detection
- Data preview kept separate from variable metadata and observed values
- Editable plotting-oriented type for every column (continuous, categorical, datetime, identifier, or text)
- Selected-variable inspector showing recognized values, counts, missingness, ranges, and summary information
- Cross-sectional and longitudinal workflows
- Layered plots: line, points, scatter/jitter, box, violin, bar, area, histogram, density, strip, swarm, subject trajectories, summaries and confidence intervals
- Mean or median summaries
- Parametric or bootstrap confidence intervals at configurable confidence levels
- Dynamic titles, labels, dimensions, fonts, line styles, marker styles, opacity, grids, legends, palettes and per-group colors
- Bold heading and axis-label controls, custom legend titles and entries, adjustable grid thickness, and selectable regression statistics
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
- Publication palettes, continuous gradients, density coloring, and Jet
- Overall and grouped linear, quadratic, and cubic regression with confidence intervals
- Optional Pearson/Spearman correlation, p-values, R-squared, and sample sizes below the legend or in an in-plot panel when no legend is shown
- Project save/reload, figure export, filtered-data export, and reproducible Python-code export
- Sphinx/Read the Docs documentation in `readthedocs/`
- A custom legend-title field
- Per-entry legend display-name controls that do not alter the source data
- A grid-thickness control independent of plotted line width
- Selectable regression annotations: `r`/`rho`, `p`, `r2`, and `n`

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
