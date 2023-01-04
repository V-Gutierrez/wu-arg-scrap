#!/usr/bin/python
# -*- coding: utf-8 -*-

# python3 -u "src/data_scripts/plot_csv_charts.py" "BRL_$TARGET_CURRENCY" "$TARGET_CURRENCY"

from pathlib import Path
import matplotlib.pyplot as plt
import sys
import pandas as pd

currency_pair = sys.argv[1]
target_currency = sys.argv[2]
file_path = Path(f"src/databases/{target_currency}.csv").absolute()
saving_path = Path(f"src/data_outputs/{currency_pair}_chart.png").absolute()

PRICE_COLUMN = f"PRICE_{target_currency}"
BASE_COLUMN = "BASE_BRL"
DATE_COLUMN = "DATE"

# Read the data from the CSV file
columns = [BASE_COLUMN, PRICE_COLUMN, DATE_COLUMN]
df = pd.read_csv(file_path, delimiter=";", usecols=columns)

# Add axis labels and subplot labels
fig, ax = plt.subplots(figsize=(10, 6))

ax.set(ylabel=f"Exchange rate to 1 BRL",
    title=f"Exchange rate of {currency_pair}"
)


def set_tick_labels_size(data_len: int) -> int:
    """ Get data lenght and returns a font_size for labels.
        This was made to avoid data truncation in large datasets
    """

    if data_len <= 10:
        return 8
    elif data_len <= 12:
        return 6
    elif data_len <= 15:
        return 4
    else:
        return 2


plt.setp(ax.get_xticklabels(), rotation=90,
         fontsize=set_tick_labels_size(len(df.index)))

# Create chart and save the plot
ax.plot(df[DATE_COLUMN], df[PRICE_COLUMN].astype('float'))

plt.savefig(
    saving_path,
    dpi=300,
    bbox_inches="tight"
)

print(
    f"Chart for {currency_pair} updated and generated | Saved to {saving_path}"
)
