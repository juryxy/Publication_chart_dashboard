Regression and statistical annotations
======================================

Regression models
-----------------

Enable ``Trend / regression line`` when X and Y are numeric. Available models are linear, quadratic, and cubic polynomial regression.

Regression scope
----------------

``Overall`` fits one model to all displayed observations. ``By group`` fits one model for every level of the selected grouping variable. With three groups, for example, the chart contains three regression lines and three confidence bands. Each line and band uses the corresponding group color. ``Overall + by group`` overlays the pooled fit and all group-specific fits.

Confidence intervals
--------------------

Regression confidence bands can be parametric or bootstrap based. The selected confidence level is shared with the other confidence-interval layers. Parametric bands describe uncertainty in the expected fitted response rather than prediction intervals for individual future observations.

Correlation and p-values
------------------------

Enable ``Show correlation and p-values below legend`` to display a compact statistics block for every fitted model. Select Pearson correlation for linear association or Spearman correlation for monotonic association.

For linear models, the displayed p-value corresponds to the correlation/slope test. For quadratic and cubic models, the p-value is the overall polynomial-model F-test. The block also reports R-squared and the number of complete observations used in each fit.

Interpretation cautions
-----------------------

Correlation does not establish causality. Group-specific estimates may be unstable when groups are small or have little X variation. Polynomial fits can behave poorly outside the observed range and should not be extrapolated without substantive justification. Repeated observations from the same subject are not independent; the displayed regression is descriptive and does not replace an appropriate mixed-effects or repeated-measures model.
