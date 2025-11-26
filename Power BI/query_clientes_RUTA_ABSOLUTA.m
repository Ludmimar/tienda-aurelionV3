let
    // IMPORTANTE: Cambia esta ruta por la ruta completa en tu computadora
    // Ejemplo Windows: "D:/IBM/IBM-Inteligencia-Artificial/Sprint-2/datos/clientes.csv"
    // Usa "/" (forward slash) en lugar de "\" (backslash)
    
    Source = Csv.Document(File.Contents("D:/IBM/IBM-Inteligencia-Artificial/Sprint-2/datos/clientes.csv"), [Delimiter=",", Columns=6, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    PromotedHeaders = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    ChangedTypes = Table.TransformColumnTypes(PromotedHeaders, {
        {"id", Int64.Type},
        {"nombre", type text},
        {"email", type text},
        {"telefono", type text},
        {"ciudad", type text},
        {"fecha_registro", type date}
    }),
    Ordenado = Table.Sort(ChangedTypes, {{"id", Order.Ascending}})
in
    Ordenado



