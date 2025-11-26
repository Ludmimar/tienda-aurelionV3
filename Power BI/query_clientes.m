let
    Source = Csv.Document(File.Contents("datos/clientes.csv"), [Delimiter=",", Columns=6, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
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
