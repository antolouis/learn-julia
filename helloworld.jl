#hello world example
using VegaDatasets, Queryverse, IndexedTables
println("I am excited to learn Julia Queryverse")
#create dataset from VegaDatasets samples

#filter cars by column values
cars |> @filter(_.Origin == "USA")

#save filtered dataset to a file
cars |> @filter(_.Origin == "USA") |> save("cars_usa.csv")
