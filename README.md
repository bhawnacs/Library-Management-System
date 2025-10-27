# Library-Management-System
A SQL-based Library Management System designed to manage and analyze book, author, and publisher data efficiently. Includes queries and Power BI visualizations for data insights.

---

## 🧠 Overview

The goal of this project is to create a database system that helps manage books, authors, publishers in a library.  
The system also analyzes data using SQL queries and visualizes results in Power BI dashboards.

---

## 🗂️ Database Details

### 🧾 Table: `Books`
| Column | Description |
|---------|-------------|
| Book_ID | Unique identifier for each book |
| Title | Name of the book |
| AuthorID | AuthorID for Authors |
| CategoryID | CategoryID for genres |
| PublishedYear | In the year book is published |
| Price | Price of the book |

### 🧾 Table: `Authors`
| Column | Description |
|---------|-------------|
| Author_ID | Unique ID for each author |
| Author_Name | Name of the author |
| Country | Author’s country |

### 🧾 Table: `Publishers`
| Column | Description |
|---------|-------------|
| Publisher_ID | Unique ID for each publisher |
| Publisher_Name | Name of the publisher |
| City | Publisher location |

### 🧾 Table: `Borrow_Records`
| Column | Description |
|--------|-------------|
| BookID | 
| MemberID |
| Borrow ID |

### 🧾 Table: `Categories`
| Column | Description |
|--------|-------------|
| CategoryID |
| Category Name |

### 🧾 Table: `Members`
| Column | Description |
|--------|-------------|
| MemberID |
| Member Name |
| Email |
| Phone |

---

## ⚙️ SQL Features Implemented

- Created tables and established relationships between Books, Authors, Publishers, Members, Categories, BorrwoRecords.  
- Inserted sample data for analysis  
- Wrote SQL queries and views to extract insights such as:  
  - 📕 Books with Details  
  - 💰 Books by Category 
  - 📊 Average Price by Category
  - 🧾 Top 5 most expensive books  
  - 🔍 Search/filter functionality using SQL WHERE conditions  

---

## 📊 Power BI Dashboard

To visualize the SQL data, a Power BI dashboard was created with the following features:
- Donut chart showing Average price by category  
- Bar chart showing publisher performance  
- Filters (slicers) by Author and Publisher  
- Summary cards displaying total books and total value  
- Clean and interactive visual layout  

---

## 🧰 Tools and Technologies

| Tool | Purpose |
|------|----------|
| **MySQL** | Database creation and querying |
| **Power BI** | Data visualization and dashboards |
| **Excel** | Used for importing and managing sample data |
| **GitHub** | Version control and project documentation |

---

## 📈 Insights & Learnings

- Learned how to design normalized relational databases  
- Practiced writing SQL queries and creating views for analysis  
- Understood how to connect Power BI with SQL for visualization  
- Improved data presentation and dashboard design skills  

---

## 📫 Contact

**👩‍💻 Bhawna**  

📧 bhawnaa.066@gmail.com  

---

⭐ *If you liked this project, feel free to star the repository or connect with me !*
