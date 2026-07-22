# Publication Chart Studio

A local Streamlit dashboard for quickly producing publication-ready statistical graphics with Seaborn/Matplotlib or Plotly.
Examples:
<img width="2652" height="1602" alt="publication_chart" src="https://github.com/user-attachments/assets/fdf7af60-4169-4ae9-8006-69f53a26915e" />
<img width="2554" height="1602" alt="publication_chart (1)" src="https://github.com/user-attachments/assets/0875bb52-1d88-490a-8874-8d43b3ea4205" />
<img width="2558" height="1602" alt="publication_chart (2)" src="https://github.com/user-attachments/assets/44738314-bf23-42aa-9816-e4bdb586bfb3" />

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
- PNG/JPEG/TIFF/PDF/SVG export for Matplotlib; PNG/JPEG/PDF/SVG/WebP export for Plotly when Kaleido is available
- Export the plotting configuration, a reproducible Python script, and a complete project containing the data
- Reload saved projects

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
- Optional Pearson/Spearman correlation, p-values, R-squared, and sample sizes below the legend
- Project save/reload, figure export, filtered-data export, and reproducible Python-code export
- Sphinx/Read the Docs documentation in `readthedocs/`

## Documentation

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
