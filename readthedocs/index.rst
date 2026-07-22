Publication Chart Studio
========================

Publication Chart Studio is a local Streamlit toolbox for creating publication-ready statistical graphics with Seaborn/Matplotlib and Plotly.

The application supports cross-sectional and longitudinal data, layered chart construction, configurable summaries and confidence intervals, grouped regression, correlation statistics, continuous gradients, extensive styling, reproducible export, and project save/reload.

.. note::

   Designed by **Juergen Dukart**, written by **ChatGPT 5.6 Sol**.

Documentation
-------------

.. toctree::
   :maxdepth: 2
   :caption: User guide

   installation
   workflow
   plotting
   regression
   export_projects
   troubleshooting
   deployment

Core capabilities
-----------------

* Automatic CSV delimiter and encoding detection.
* Editable plotting-oriented variable types: continuous, categorical, datetime, identifier, and text.
* Cross-sectional and longitudinal workflows with optional subject trajectories.
* Layered points, lines, boxes, violins, bars, areas, histograms, densities, strips, swarms, summaries, and confidence intervals.
* Linear, quadratic, and cubic regression, either overall, by group, or both.
* Group-matched regression colors and confidence bands.
* Optional Pearson or Spearman correlation, p-values, R-squared, and sample sizes beneath the legend.
* Discrete palettes and continuous gradients driven by X, Y, combined X/Y, or local point density.
* PNG, JPEG, TIFF, PDF, SVG, WebP, interactive HTML, filtered-data, configuration, project, and Python-code export.

Privacy
-------

The dashboard runs locally. Uploaded datasets are processed by the local Streamlit process and are not automatically sent to an external server.
