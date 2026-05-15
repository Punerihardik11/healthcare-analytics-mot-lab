import pandas as pd

merged_df = pd.merge(
    claims_df,
    providers_df,
    on="provider_id",
    how="inner"
)

left_join_df = pd.merge(
    claims_df,
    providers_df,
    on="provider_id",
    how="left"
)

print(merged_df)

print(left_join_df)
