import os
import math
import numpy as np
import pandas as pd
import statsmodels.api as sm
from statsmodels.formula.api import ols

# load Stata auto dataset (i.e. `sysuse auto` in Stata)
url = "https://tyleransom.github.io/teaching/MetricsLabs/auto.csv"
auto = pd.read_csv(url)

# since `rep78` is categorical, wrap it in `C()` [capitalized]
est = ols("price ~ mpg + foreign + headroom + C(rep78)", data=auto)
results = est.fit()
print(results.summary())
