SELECT *
FROM {{ ref('stg_customer') }}
WHERE customer_industry='Tech'
  AND customer_email='contact@acme.com'