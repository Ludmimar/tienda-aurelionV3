# Layout e instrucciones para reconstruir el dashboard (completa)

A continuación tenés un paso a paso para recrear las 4 páginas solicitadas: **Overview (General)**, **Análisis de Productos**, **Proveedores**, y **Ventas y Clientes** ⭐ NUEVO.

---

## Preparación previa
1. Asegurate de tener Power BI Desktop actualizado.
2. Coloca los 4 archivos CSV en `datos/`:
   - `productos.csv`
   - `clientes.csv`
   - `ventas.csv`
   - `detalle_ventas.csv`
3. Abrí Power BI Desktop.

---

## 1) Cargar datos (usar query.m actualizado)

### Paso 1.1: Cargar tabla Productos
1. Home → Get Data → Blank Query
2. Advanced Editor → pegar el contenido de `query_productos.m`
3. Rename query a `Productos`
4. Close & Apply

### Paso 1.2: Cargar tabla Clientes
1. Home → Get Data → Blank Query
2. Advanced Editor → pegar el contenido de `query_clientes.m`
3. Rename query a `Clientes`
4. Close & Apply

### Paso 1.3: Cargar tabla Ventas
1. Home → Get Data → Blank Query
2. Advanced Editor → pegar el contenido de `query_ventas.m`
3. Rename query a `Ventas`
4. Close & Apply

### Paso 1.4: Cargar tabla Detalle_Ventas
1. Home → Get Data → Blank Query
2. Advanced Editor → pegar el contenido de `query_detalle_ventas.m`
3. Rename query a `Detalle_Ventas`
4. Close & Apply

### Paso 1.5: Crear relaciones entre tablas
1. View → Model View
2. Power BI debería detectar automáticamente las relaciones, pero si no:
   - Arrastra `Clientes[id]` → `Ventas[id_cliente]` (1 a muchos)
   - Arrastra `Ventas[id_venta]` → `Detalle_Ventas[id_venta]` (1 a muchos)
   - Arrastra `Productos[id]` → `Detalle_Ventas[id_producto]` (1 a muchos)
3. Verifica que las relaciones están activas (línea continua)

---

## 2) Importar tema
1. View → Themes → Browse for themes
2. Seleccioná `theme.json`

---

## 3) Crear Measures
1. Modeling → New Measure
2. Copiá las medidas desde `measures.dax` (ahora incluye medidas de ventas y clientes)
3. Verifica nombres y referencias a las tablas:
   - `Productos` (para medidas de productos)
   - `Ventas` (para medidas de ventas)
   - `Clientes` (para medidas de clientes)
   - `Detalle_Ventas` (para medidas combinadas)

---

## 4) Página 1 — Overview (Overview General)
- Layout: 1 fila superior con 5 tarjetas KPI, zona media con 2 gráficos (Categorias y Top 10), zona inferior con anillo + dispersión y tabla de stock bajo.
- KPIs (usar Card visual):
  - Total de Productos: `COUNTROWS(Productos)` o `COUNT(Productos[id])`
  - Valor Total Inventario: `[Valor Total Inventario]`
  - Stock Total: `[Stock Total]`
  - Categorías Únicas: `DISTINCTCOUNT(Productos[categoria])`
  - Productos con Stock Bajo: `[Productos Stock Bajo]`
- Gráfico de barras: Eje Y = `categoria`, Eje X = `COUNTROWS` o `SUM(Productos[stock])`
- Top 10: Column chart con `nombre` y `Valor por Producto`, aplicar filtro Top N = 10
- Donut: Legend = `categoria`, Value = `SUM(Productos[stock])`
- Scatter: X = `precio`, Y = `stock`, Details = `nombre`, Size = `valor_inventario`
- Tabla: columnas `nombre`, `categoria`, `stock`, `proveedor` con filtro `[stock] <= 20` y formato condicional.

---

## 5) Página 2 — Análisis de Productos
- Top 10 productos más valiosos (Column chart)
- Top 10 productos con más stock (Column chart)
- Scatter detalle precio vs stock con línea de referencia si querés
- Slicers: Rango de precio, Estado de stock, Categoría

---

## 6) Página 3 — Proveedores
- Stacked bar: Eje Y = `proveedor`, Eje X = `COUNT(id)`, Legend = `categoria`
- Tabla por proveedor con `valor_inventario` y `COUNT(id)`
- KPI: Proveedor Líder (medida que devuelve el proveedor con más productos)

---

## 7) Página 4 — Ventas y Clientes ⭐ NUEVO

### Visualizaciones de Ventas:
- **Tarjetas KPI:**
  - Total de Ventas: `[Total Ventas]`
  - Ingresos Totales: `[Ingresos Totales]`
  - Ticket Promedio: `[Ticket Promedio]`
  - Total Productos Vendidos: `[Total Productos Vendidos]`

- **Gráfico de Línea:** Evolución de ventas por fecha
  - Eje X: `Ventas[fecha]`
  - Eje Y: `[Ingresos Totales]`
  - Marca: Línea con marcadores

- **Gráfico de Barras:** Top 5 productos más vendidos
  - Eje X: `Productos[nombre]`
  - Eje Y: `SUM(Detalle_Ventas[cantidad])`
  - Filtro: Top 5

- **Tabla de Ventas:** Columnas `id_venta`, `fecha`, `total`, `Clientes[nombre]`
  - Ordenar por fecha descendente

### Visualizaciones de Clientes:
- **Tarjeta KPI:** Total de Clientes: `[Total Clientes]`
- **Gráfico de Barras:** Clientes por ciudad
  - Eje X: `Clientes[ciudad]`
  - Eje Y: `COUNT(Clientes[id])`
- **Tabla de Clientes:** Columnas `nombre`, `email`, `ciudad`, `fecha_registro`

### Slicers:
- Rango de fechas (Ventas)
- Ciudad (Clientes)
- Categoría de producto

---

## 8) Formateo y accesibilidad
- Ordená visuales con suficientes márgenes.
- Aplicá formato condicional en tablas (stock crítico en rojo, ventas altas en verde).
- Agregá tooltips personalizados (Fields → Tooltips; podés crear una página de tooltip y asignarla).
- Añadí una tarjeta con la fecha de última actualización usando `MAX(Ventas[fecha])` para mostrar la última venta.

---

## 9) Exportar plantilla (.pbit)
1. File → Export → Power BI template
2. Guardá `Tienda_Aurelion_Dashboard.pbit`
3. Acompañá el .pbit con la carpeta `datos` que contenga los 4 archivos CSV:
   - `productos.csv`
   - `clientes.csv`
   - `ventas.csv`
   - `detalle_ventas.csv`
   
   Para que al abrir la plantilla Power BI pida los archivos relativos.

---

## 📊 Nuevas Funcionalidades Sprint 2

Con la nueva estructura de base de datos normalizada podés:
- ✅ Analizar ventas por cliente
- ✅ Ver productos más vendidos
- ✅ Analizar ingresos por fecha
- ✅ Identificar clientes más importantes
- ✅ Cross-filtering entre productos, ventas y clientes
- ✅ Análisis combinado de inventario y ventas

---

¡Listo! Con esto tenés todo para generar la plantilla completa en tu Power BI Desktop con análisis de productos, ventas y clientes. ⚔️📊
