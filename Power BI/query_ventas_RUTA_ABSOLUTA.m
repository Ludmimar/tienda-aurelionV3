let
    // IMPORTANTE: Cambia esta ruta por la ruta completa en tu computadora
    // Ejemplo Windows: "D:/IBM/IBM-Inteligencia-Artificial/Sprint-2/datos/ventas.csv"
    // Usa "/" (forward slash) en lugar de "\" (backslash)
    
    Source = Csv.Document(File.Contents("D:/IBM/IBM-Inteligencia-Artificial/Sprint-2/datos/ventas.csv"), [Delimiter=",", Columns=4, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    PromotedHeaders = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    ChangedTypes = Table.TransformColumnTypes(PromotedHeaders, {
        {"id_venta", Int64.Type},
        {"id_cliente", Int64.Type},
        {"fecha", type date},
        {"total", Int64.Type}
    }),
    Ordenado = Table.Sort(ChangedTypes, {{"id_venta", Order.Ascending}})
in
    Ordenado



