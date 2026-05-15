import pandas as pd
import numpy as np

# Lowercase provider names
df["provider"] = df["provider"].str.lower()

# Replace inconsistent categories
df["provider"] = df["provider"].replace({
    "apollo hospital": "apollo"
})

# Create payment ratio column
df["payment_ratio"] = df["payment"] / 1000

# Fill missing values
df["payment"] = df["payment"].fillna(0)

# Categorize claims
df["claim_category"] = np.where(
    df["payment"] > 10000,
    "High Cost",
    "Normal"
)
