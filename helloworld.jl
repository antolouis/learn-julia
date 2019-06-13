#hello world example
using VegaDatasets, Queryverse, IndexedTables
println("I am excited to learn Julia Queryverse")
#create dataset from VegaDatasets samples
cars = dataset("cars")
#filter cars by column values
cars |> @filter(_.Origin == "USA")

#save filtered dataset to a file
cars |> @filter(_.Origin == "USA") |> save("cars_usa.csv")

#load data from a file
load("cars_usa.csv")

#plotting of datasets
load("cars_usa.csv") |> @vlplot(:point, x=:Miles_per_Gallon, y=:weight_in_lbs, color="Cylinders:n")

#saving and loading excel files
cars |> save("cars_all.xls")
load("cars_all.xls", index:1)
