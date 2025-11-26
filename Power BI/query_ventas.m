let
    Source = Csv.Document(File.Contents("datos/ventas.csv"), [Delimiter=",", Columns=4, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
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
