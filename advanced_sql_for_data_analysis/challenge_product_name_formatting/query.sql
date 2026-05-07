select product_id,
    product_name,
    upper(product_name) as product_name_upper,
    substring(product_name, 1, 3) as product_name_first3
from products
