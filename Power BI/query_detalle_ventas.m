let
    Source = Csv.Document(File.Contents("datos/detalle_ventas.csv"), [Delimiter=",", Columns=6, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
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
