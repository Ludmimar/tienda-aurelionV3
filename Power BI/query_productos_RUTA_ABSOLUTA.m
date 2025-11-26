let
    // IMPORTANTE: Cambia esta ruta por la ruta completa en tu computadora
    // Ejemplo Windows: "D:/IBM/IBM-Inteligencia-Artificial/Sprint-2/datos/productos.csv"
    // Usa "/" (forward slash) en lugar de "\" (backslash)
    
    Source = Csv.Document(File.Contents("D:/IBM/IBM-Inteligencia-Artificial/Sprint-2/datos/productos.csv"), [Delimiter=",", Columns=7, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    PromotedHeaders = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    ChangedTypes = Table.TransformColumnTypes(PromotedHeaders, {
        {"id", Int64.Type},
        {"nombre", type text},
        {"categoria", type text},
        {"precio", Int64.Type},
        {"stock", Int64.Type},
        {"descripcion", type text},
        {"proveedor", type text}
    }),
    // Columna valor_inventario = precio * stock
    AgregarValorInventario = Table.AddColumn(ChangedTypes, "valor_inventario", each [precio] * [stock], type number),
    // estado_stock: Bajo (<=20), Medio (21-50), Alto (>50)
    AgregarEstadoStock = Table.AddColumn(AgregarValorInventario, "estado_stock", each if [stock] <= 20 then "Bajo" else if [stock] <= 50 then "Medio" else "Alto", type text),
    // rango_precio: Económico (<500), Medio (<2000), Premium (>=2000)
    AgregarRangoPrecio = Table.AddColumn(AgregarEstadoStock, "rango_precio", each if [precio] < 500 then "Económico" else if [precio] < 2000 then "Medio" else "Premium", type text),
    // Orden opcional por id
    Ordenado = Table.Sort(AgregarRangoPrecio, {{"id", Order.Ascending}})
in
    Ordenado



