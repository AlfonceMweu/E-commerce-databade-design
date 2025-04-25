This project designs a scalable e-commerce database to manage Apple products, variations (colors/storage), and accessories. Perfect for an online store selling iPhones, AirPods, and more!

Key Features:
✔️ Handles iPhone variations (e.g., "iPhone 14 Pro in red/256GB")
✔️ Organizes products by category (Phones, Accessories, etc.)
✔️ Tracks inventory with stock quantities
✔️ Flexible attribute system (e.g., "Chipset: A16 Bionic", "Water Resistance: IP68")

🗂️ Database Structure
Core Tables
Table	Purpose	Example Data
product	Base product info	"iPhone 14 Pro", $999.99
product_item	Specific variants	"red 256GB (SKU: IP14P-DP-256)", stock: 85
brand	Manufacturer data	"Apple", logo URL
product_category	Product taxonomy	"Phones → iPhone"
iPhone Variation System
Variation Flow

Colors: red, blue

Storage: 128GB, 256GB, 512GB

Each variant links to inventory via product_item

## ERD Overview
![erd for e commerce (1)](https://github.com/user-attachments/assets/b823bda8-9766-45b3-875b-7e6c974e1a0d)


## How to Use
1. Run `ecommerce.sql` in MySQL to create the database.
2. Tables include `product`, `product_item`, `brand`, etc.
