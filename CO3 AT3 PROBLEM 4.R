# Problem 4: Pie Chart Consistency

# Sales data
departments <- c("HR", "IT", "Marketing", "Sales")

sales_2019 <- c(20, 30, 25, 25)
sales_2020 <- c(25, 35, 20, 20)

# 2019 - alphabetical order
pie(sales_2019,
    labels = departments,
    main = "2019 Sales by Department")

# 2020 - random order
random_order <- c(3, 1, 4, 2)

pie(sales_2020[random_order],
    labels = departments[random_order],
    main = "2020 Sales by Department - Random Order")

# Corrected 2020 chart
pie(sales_2020,
    labels = departments,
    main = "2020 Sales by Department - Corrected Order")