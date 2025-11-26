// ================================================
// Power Query (M) - Tienda Aurelion
// Carga los 4 archivos CSV y crea relaciones
// Sprint 2 - Base de Datos Normalizada
// ================================================

// QUERY 1: PRODUCTOS
let
    Source = Csv.Document(File.Contents("datos/productos.csv"), [Delimiter=",", Columns=7, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
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

// ================================================
// QUERY 2: CLIENTES
// ================================================
// Instrucciones: Crear nueva query Blank Query → Advanced Editor → pegar esto:
/*
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
*/

// ================================================
// QUERY 3: VENTAS
// ================================================
// Instrucciones: Crear nueva query Blank Query → Advanced Editor → pegar esto:
/*
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
*/

// ================================================
// QUERY 4: DETALLE_VENTAS
// ================================================
// Instrucciones: Crear nueva query Blank Query → Advanced Editor → pegar esto:
/*
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
*/

// ================================================
// INSTRUCCIONES PARA CREAR RELACIONES:
// ================================================
// 1. Model View → Verás las 4 tablas
// 2. Arrastra y suelta para crear relaciones:
//    - Clientes[id] → Ventas[id_cliente] (1 a muchos)
//    - Ventas[id_venta] → Detalle_Ventas[id_venta] (1 a muchos)
//    - Productos[id] → Detalle_Ventas[id_producto] (1 a muchos)
// 3. Power BI debería detectar automáticamente las relaciones
//    pero si no, créalas manualmente haciendo clic en el botón de relación