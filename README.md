# tes
 1. Companies get bad reviews because customers feel disappointed because the stock on the website / application is mismatched with those in the warehouse so that their orders have to be canceled. This can occur due to several factors, such as: there is a bug in the company's website / application cart system, which does not reduce the stock in the database when a customer orders and pays for the product.
 2. The solution is to immediately reduce stock every time an order comes in, and return stock when an order is canceled before being shipped.
 3. For PoC, I tried to automate reduce stock every transaction added.

 For add product 
 {
"name": "XXXX",
"description": "XXXX",
"price":"XXXX",
"category_id":"XXXX",
"quantity":"XXXX",
"created": "XXXX"
}

For update product 
 {
 "id": "XXXX",
"name": "XXXX",
"description": "XXXX",
"price":"XXXX",
"category_id":"XXXX",
"quantity":"XXXX",
"created": "XXXX"
}

For add transaction
{
"date_added": "XXXX",
"id_item" :"XXXX",
"quantity":"XXXX"
}