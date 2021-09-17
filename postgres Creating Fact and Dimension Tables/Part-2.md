### Now run the following queries on this data that utilize the Fact/Dimension and Star Schema¶

#### Query 1: Find all the customers that spent more than 30 dollars, who are they, which store they bought it from, location of the store, what they bought and if they are a rewards member.
#### Query 2: How much did Customer 2 spend

Query 1: Find all the customers that spent more than 30 dollars, who are they, which store they bought it from, location of the store, what they bought and if they are a rewards member

```
SELECT name, store.store_id, store.state, item_name, customer.rewards \
                                                FROM (((customer_transactions \
                                                JOIN customer ON customer.customer_id=customer_transactions.customer_id)\
                                                JOIN store ON \
                                                customer_transactions.store_id=store.store_id) \
                                                JOIN items_purchased ON \
                                                customer_transactions.customer_id=items_purchased.customer_id)\
                                                WHERE spent > 30 ;
```{{execute}}


Query 2: How much did Customer 2 spend?¶
```
SELECT customer_id, SUM(spent) FROM customer_transactions WHERE customer_id = 2 GROUP BY customer_id;
```{{execute}}


Summary: You can see here from this elegant schema that we were: 1) able to get "facts/metrics" from our fact table (how much each store sold), and 2) information about our customers that will allow us to do more indepth analytics to get answers to business questions by utilizing our fact and dimension tables.
