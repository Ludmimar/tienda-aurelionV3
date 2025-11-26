let
    // IMPORTANTE: Cambia esta ruta por la ruta completa en tu computadora
    // Ejemplo Windows: "D:/IBM/IBM-Inteligencia-Artificial/Sprint-2/datos/detalle_ventas.csv"
    // Usa "/" (forward slash) en lugar de "\" (backslash)
    
    Source = Csv.Document(File.Contents("D:/IBM/IBM-Inteligencia-Artificial/Sprint-2/datos/detalle_ventas.csv"), [Delimiter=",", Columns=6, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    PromotedHeaders = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    ChangedTypes = Table.TransformColumnTypes(PromotedHeaders, {
        {"id_detalle", Int64.Type},
        {"id_venta", Int64.Type},
        {"id_producto", Int64.Type},
        {"cantidad", Int64.Type},
        {"precio_unitario", Int64.Type},
        {"subtotal", Int64.Type}
    }),
    Ordenado = Table.Sort(ChangedTypes, {{"id_detalle", Order.Ascending}})
in
    Ordenado



