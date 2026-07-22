Export and projects
===================

Figure export
-------------

Matplotlib figures can be exported as PNG, JPEG, TIFF, PDF, or SVG. Plotly figures support interactive HTML and, when Kaleido is available, common static formats such as PNG, JPEG, PDF, SVG, and WebP. Use sufficient dimensions and DPI for the intended journal or presentation.

Data and configuration export
-----------------------------

The filtered row-level dataset can be downloaded for audit and reuse. Configuration export records variable assignments, filters, plot layers, statistical options, colors, dimensions, legends, and other appearance settings.

Generated Python code
---------------------

The code exporter produces a reproducible Python script reflecting the selected data-processing and plotting configuration. Review generated scripts before using them in a production analysis, particularly when custom data types or unusual combinations of layers are used.

Projects
--------

A project file stores the plotting configuration together with the dataset so the workspace can be restored later. Project files may contain the full uploaded data and should therefore be handled according to the same privacy and information-security requirements as the source dataset.

Recommended publication workflow
--------------------------------

#. Apply filters and verify the displayed row count.
#. Inspect raw observations before relying on summaries.
#. Confirm group order, colors, axis labels, units, and confidence-interval method.
#. Export the filtered data and configuration alongside the final figure.
#. Save a project and generated script to preserve reproducibility.
