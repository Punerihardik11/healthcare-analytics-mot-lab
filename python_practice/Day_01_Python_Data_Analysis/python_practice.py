# Group by specialty and calculate average payment
df.groupby("specialty")["payment"].mean()

# Count rows by provider
df.groupby("provider").size()

# Sum payments by provider
df.groupby("provider")["payment"].sum()

# Multiple aggregations
df.groupby("specialty").agg({
    "payment": "mean",
    "submitted_charge": "sum"
})

# Rename columns
df.rename(columns={"payment": "paid_amount"})

# Null check
df.isnull().sum()
