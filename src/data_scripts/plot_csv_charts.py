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

# Read the data from the CSV file
columns = ["BASE_BRL", f"PRICE_{target_currency}", "DATE"]
df = pd.read_csv(file_path, delimiter=";", usecols=columns)

# Add axis labels and subplot labels
fig, ax = plt.subplots(figsize=(10, 6))

ax.set(
    xlabel="Date",
    ylabel=f"Exchange rate to 1 BRL",
    title=f"Exchange rate of {currency_pair}"
)

plt.setp(ax.get_xticklabels(), rotation=90, fontsize=8)

# Create chart and save the plot
ax.plot(df["DATE"], df[f"PRICE_{target_currency}"])
plt.savefig(
    saving_path,
    dpi=300,
    bbox_inches="tight"
)

print(
    f"Graph for BRL_{target_currency} updated and generated | Saved to {saving_path}"
)
