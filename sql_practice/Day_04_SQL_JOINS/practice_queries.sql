-- INNER JOIN example

SELECT
claims.patient,
providers.provider_name,
claims.payment

FROM claims

INNER JOIN providers
ON claims.provider_id = providers.provider_id;

-- LEFT JOIN example

SELECT
claims.patient,
providers.provider_name

FROM claims

LEFT JOIN providers
ON claims.provider_id = providers.provider_id;
