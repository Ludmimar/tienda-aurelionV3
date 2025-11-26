# Tienda Aurelion — Power BI Template Helper (Completa)

Este paquete contiene los recursos necesarios para **crear rápidamente una plantilla Power BI (.pbit)** con todas las páginas y visuales solicitados (Overview, Análisis de Productos, Proveedores, Ventas). No se incluye un .pbit porque requiere Power BI Desktop para generarlo, pero con estos archivos lo vas a poder armar en minutos.

## Contenido del paquete
- `query.m` — Script Power Query (M) principal con todas las queries comentadas
- `query_productos.m` — Query individual para tabla Productos (usar este para empezar)
- `query_clientes.m` — Query individual para tabla Clientes
- `query_ventas.m` — Query individual para tabla Ventas
- `query_detalle_ventas.m` — Query individual para tabla Detalle_Ventas
- `measures.dax` — Medidas DAX listas para pegar en Power BI (Modeling → New Measure), incluyendo medidas para análisis de ventas y clientes.
- `theme.json` — Tema (colores y tipografías) que podés importar en Power BI: View → Themes → Browse for themes.
- `layout_instructions.md` — Instrucciones paso a paso para construir las páginas y visuales exactamente como la guía.
- `README.md` — (este archivo)

## Flujo recomendado (resumen rápido)
1. Abrir Power BI Desktop.
2. Colocar los 4 archivos CSV en la carpeta `datos/`:
   - `productos.csv`
   - `clientes.csv`
   - `ventas.csv`
   - `detalle_ventas.csv`
3. Cargar cada tabla usando las queries individuales:
   - Obtener datos → Blank Query → Advanced Editor → pegar `query_productos.m` → Rename a "Productos"
   - Repetir para `query_clientes.m` → Rename a "Clientes"
   - Repetir para `query_ventas.m` → Rename a "Ventas"
   - Repetir para `query_detalle_ventas.m` → Rename a "Detalle_Ventas"
4. Crear relaciones entre tablas (View → Model View):
   - Clientes[id] → Ventas[id_cliente]
   - Ventas[id_venta] → Detalle_Ventas[id_venta]
   - Productos[id] → Detalle_Ventas[id_producto]
5. En Report view: importar `theme.json`.
6. Crear las medidas pegando `measures.dax` (Modeling → New Measure).
7. Seguir `layout_instructions.md` para recrear las páginas (Overview, Productos, Proveedores, Ventas).
8. Archivo → Export → Power BI template → guardar `.pbit`.
