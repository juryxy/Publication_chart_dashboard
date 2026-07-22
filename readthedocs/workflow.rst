Data and workflow
=================

Importing data
--------------

Upload a CSV file from the data panel. The toolbox checks UTF-8, Windows-1252, and Latin-1 encodings and detects comma, semicolon, tab, or pipe delimiters. Review the preview before selecting variables.

Variable types
--------------

Each column can be treated as continuous, categorical, datetime, identifier, or text. These plotting-oriented types do not modify the source data. Use the value inspector to review unique values, counts, missingness, ranges, and summary statistics.

Cross-sectional workflow
------------------------

Select the X and Y variables, optionally choose a grouping variable, then combine plot layers. Categorical X variables support aligned boxes, violins, bars, points, summaries, and confidence intervals. Groups are dodged only when multiple groups occur within the same X category.

Longitudinal workflow
---------------------

Choose a subject identifier and an ordered X variable such as time. Subject trajectories connect repeated observations. A grouping variable may color subjects and summaries while the legend remains consolidated to one entry per group.

Filtering
---------

Numeric X and Y range filters remove rows before summaries and inferential calculations. Group and subject selectors restrict displayed observations. Additional rules support numeric comparisons, equality, inequality, and text contains/not-contains operations. Visible axis limits only zoom the chart and do not alter calculations.
