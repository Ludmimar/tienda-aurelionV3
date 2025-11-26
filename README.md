# 🌟 Tienda Aurelion - Sistema de Gestión de Inventario

**Sprint 3 - Machine Learning - IBM**

> 💡 **Proyecto completo con Machine Learning:** Modelo de predicción de ventas con Random Forest, Aplicación Web Online, Consola Python, Aplicación Web Local, Jupyter Notebook y Análisis Estadístico

---

## 🌐 Acceso Directo a la Aplicación Web

**¡Prueba la aplicación directamente en tu navegador sin instalaciones!**

🔗 **[👉 Acceder a la Aplicación Web](https://tienda-aurelionv3.streamlit.app/)**

> ✨ **Incluye:** Gestión de productos, clientes y ventas | Análisis estadístico completo | Gráficos interactivos | Dashboard profesional

---

## 📋 Índice
0. [⚡ Inicio Rápido](#inicio-rápido) ← **Empieza aquí**
1. [🤖 Machine Learning](#machine-learning) ← **NUEVO - Sprint 3**
2. [Tema, Problema y Solución](#tema-problema-y-solución)
3. [Fuente de Datos](#fuente-de-datos)
4. [Definición y Estructura de Datos](#definición-y-estructura-de-datos)
5. [Tipos y Escala de Datos](#tipos-y-escala-de-datos)
6. [Desarrollo del Programa](#desarrollo-del-programa)
7. [Sugerencias de Copilot](#sugerencias-de-copilot)
8. [Instrucciones de Uso](#instrucciones-de-uso) ← **Guía completa**
9. [Información del Proyecto](#información-del-proyecto)
10. [Notas Adicionales](#notas-adicionales)


---

## ⚡ Inicio Rápido

### 🌐 Opción 1: Aplicación Web Online ⭐⭐ RECOMENDADO (Sin instalaciones)

**¡Prueba la aplicación directamente en tu navegador!**

🔗 **[Acceder a la Aplicación Web](https://tienda-aurelionv2.streamlit.app/)**

> ✨ **Ventajas:** No requiere instalación, funciona inmediatamente, siempre actualizada

---

### 🖥️ Opción 2: Programa de Consola (Sin instalaciones)
```bash
python programas/tienda_aurelion.py
```

### 🌐 Opción 3: Aplicación Web Local ⭐ RECOMENDADO
```bash
# Instalar dependencias (solo primera vez)
pip install streamlit pandas numpy matplotlib seaborn scipy

# Ejecutar la aplicación web
streamlit run programas/app_streamlit.py
```
**Se abrirá automáticamente en tu navegador:** `http://localhost:8501`

> ⚠️ **IMPORTANTE**: Ejecuta estos comandos desde la carpeta raíz del proyecto

### 📓 Opción 4: Jupyter Notebook
```bash
# Instalar Jupyter (solo primera vez)
pip install jupyter

# Abrir el notebook
jupyter notebook programas/tienda_aurelion.ipynb
```

> 📘 **Para más detalles**, consulta [Instrucciones de Uso](#instrucciones-de-uso) o `INSTRUCCIONES.md`

---

## 🤖 Machine Learning

### 🎯 Modelo de Predicción de Ventas

**NUEVO en Sprint 3**: Modelo de Machine Learning para predecir el total de ventas basado en características de productos y patrones de compra.

#### Características del Modelo

- **Tipo**: Regresión supervisada
- **Algoritmo**: Random Forest Regressor (100 árboles)
- **Objetivo**: Predecir el monto total de una venta
- **Variables de entrada**: 
  - Cantidad de productos
  - Precio promedio
  - Categorías de productos
  - Temporalidad (mes, día de la semana)
- **Métricas**: MAE, RMSE, R², MAPE

#### 🚀 Ejecutar el Modelo

```bash
# Instalar dependencias (solo primera vez)
pip install pandas numpy matplotlib seaborn scikit-learn

# Ejecutar modelo ML
python programas/modelo_ml_ventas.py
```

**Salidas generadas**:
- ✅ Métricas de evaluación en consola
- ✅ 4 gráficos profesionales en `graficos/modelo_ml_resultados.png`
  - Predicciones vs Valores Reales
  - Distribución de Errores
  - Importancia de Características
  - Residuos vs Predicciones

#### 📊 Resultados Esperados

- **R² Score**: ~0.70-0.85 (modelo explica 70-85% de variabilidad)
- **MAE**: ~300-450 monedas (error promedio)
- **MAPE**: ~20-30% (error porcentual)

#### 📚 Documentación Completa

Para información técnica detallada, consulta:
- 📄 [MODELO_ML.md](./documentacion/MODELO_ML.md) - Documentación completa del modelo
  - Objetivo y justificación del algoritmo
  - Descripción de entradas (X) y salida (y)
  - Proceso de división train/test
  - Métricas de evaluación
  - Interpretación de resultados
  - Conclusiones y recomendaciones

---


## 🎯 Tema, Problema y Solución

### Tema
**Sistema de Gestión de Inventario para Tienda de Fantasía Medieval**

La Tienda Aurelion es un comercio especializado en artículos mágicos y de aventura en un mundo de fantasía. Necesita un sistema eficiente para gestionar su inventario de productos.

### Problema
La tienda enfrenta los siguientes desafíos:
- **Gestión manual ineficiente**: El registro de productos, ventas y stock se realiza en papel, causando errores y pérdida de tiempo
- **Falta de visibilidad**: No hay forma rápida de consultar disponibilidad de productos o buscar por categorías
- **Control de stock deficiente**: No se puede identificar rápidamente qué productos tienen bajo inventario
- **Análisis limitado**: No hay capacidad para analizar tendencias de precios, categorías más populares o proveedores

### Solución
Desarrollo de un **Sistema Interactivo de Gestión de Inventario** implementado en **3 versiones diferentes**:

#### 🖥️ **Versión 1: Consola Python** (`tienda_aurelion.py`)
- Programa interactivo de línea de comandos
- Sin dependencias externas (solo Python estándar)
- 10 funcionalidades principales
- Interfaz de texto amigable con emojis

#### 🌐 **Versión 2: Aplicación Web Streamlit** (`app_streamlit.py`) ⭐
- Interfaz web profesional en el navegador
- **Disponible online:** [https://tienda-aurelionv2.streamlit.app/](https://tienda-aurelionv2.streamlit.app/) ⭐⭐
- Gráficos interactivos en tiempo real
- Filtros dinámicos (sliders, dropdowns)
- Dashboard visual completo
- Gestión de inventario desde la interfaz
- Análisis estadístico completo integrado con descripciones detalladas

#### 📓 **Versión 3: Jupyter Notebook** (`tienda_aurelion.ipynb`)
- Documentación interactiva con código ejecutable
- Explicaciones paso a paso
- Visualización de resultados en cada celda
- Ideal para presentaciones educativas

**Funcionalidades comunes a todas las versiones:**
- ✅ Consultar productos por diferentes criterios (ID, nombre, categoría, rango de precios)
- ✅ Visualizar estadísticas del inventario (productos más caros, stock total, categorías)
- ✅ Identificar productos con bajo stock para reabastecimiento
- ✅ Buscar productos por proveedor
- ✅ Agregar nuevos productos al inventario
- ✅ Actualizar stock existente
- ✅ Gestión completa de clientes (listar, estadísticas)
- ✅ Sistema de ventas (historial, detalles, estadísticas)
- ✅ Análisis estadístico completo (Sprint 2)

---

## 📊 Fuente de Datos

### Origen
Los datos provienen de la **base de datos histórica de la Tienda Aurelion**, recopilada durante los últimos 2 años de operación comercial.

### Método de Recolección
- Registro de productos ingresados al inventario
- Información proporcionada por proveedores
- Clasificación manual por categorías de producto
- Actualización continua de precios y stock

### Almacenamiento
Los datos se almacenan en formato **CSV (Comma-Separated Values)** en **4 archivos normalizados**, lo que permite:
- Fácil lectura y escritura
- Compatibilidad con múltiples herramientas (Excel, Python, bases de datos)
- Portabilidad y respaldo sencillo
- Bajo consumo de recursos
- Estructura normalizada para análisis avanzados

**Archivos de base de datos:**
- `productos.csv` - 80 productos con información completa
- `clientes.csv` - 50 clientes registrados
- `ventas.csv` - 100 ventas realizadas
- `detalle_ventas.csv` - 273 detalles de productos vendidos

---

## 🗂️ Definición y Estructura de Datos

### Estructura del Dataset

La base de datos contiene **4 tablas relacionadas** con información completa:

#### Tabla PRODUCTOS (21 registros)
Campos: id, nombre, categoria, precio, stock, descripcion, proveedor

#### Tabla CLIENTES (15 registros)
Campos: id, nombre, email, telefono, ciudad, fecha_registro

#### Tabla VENTAS (20 registros)
Campos: id_venta, id_cliente, fecha, total

#### Tabla DETALLE_VENTAS (31 registros)
Campos: id_detalle, id_venta, id_producto, cantidad, precio_unitario, subtotal

### Relaciones entre Tablas

- `ventas.id_cliente` → `clientes.id`
- `detalle_ventas.id_venta` → `ventas.id_venta`
- `detalle_ventas.id_producto` → `productos.id`

---

## 📐 Tipos y Escala de Datos

### Tipos de Datos por Campo

| Campo | Tipo de Dato | Tipo Python | Rango/Características |
|-------|--------------|-------------|----------------------|
| **id** | Numérico entero | `int` | 1 - 20 (autoincremental) |
| **nombre** | Texto/String | `str` | 10-30 caracteres |
| **categoria** | Texto categórico | `str` | 10 categorías únicas |
| **precio** | Numérico entero | `int` | 25 - 5000 monedas |
| **stock** | Numérico entero | `int` | 3 - 500 unidades |
| **descripcion** | Texto largo | `str` | 20-50 caracteres |
| **proveedor** | Texto categórico | `str` | 9 proveedores únicos |

### Escala de Datos

#### Escala Actual
- **Registros totales**: 
  - 80 productos
  - 50 clientes
  - 100 ventas
  - 273 detalles de ventas
- **Tamaño total de archivos**: ~3 KB
- **Categorías**: 10 diferentes
- **Proveedores**: 10 diferentes
- **Rango de precios**: 25 - 5000 monedas
- **Stock total**: 4,585 unidades
- **Ingresos totales**: 231,485 monedas
- **Valor inventario**: 1,909,400 monedas

#### Escalabilidad
El sistema está diseñado para escalar hasta:
- ✅ 10,000+ productos
- ✅ 100+ categorías
- ✅ 50+ proveedores
- ✅ Archivos de hasta 10 MB
- ✅ Tiempo de búsqueda < 1 segundo

### Clasificación de Variables

**Variables Cuantitativas (Numéricas)**:
- `precio` - Cuantitativa continua (discreta en práctica)
- `stock` - Cuantitativa discreta
- `id` - Cuantitativa discreta

**Variables Cualitativas (Categóricas)**:
- `nombre` - Nominal
- `categoria` - Nominal
- `descripcion` - Nominal (texto libre)
- `proveedor` - Nominal

---

## 💻 Desarrollo del Programa

### Pasos del Desarrollo

#### Paso 1: Análisis de Requisitos
- Identificar necesidades del usuario
- Definir funcionalidades principales
- Establecer estructura de datos

#### Paso 2: Diseño del Sistema
- Diseñar estructura de menú interactivo
- Planificar funciones de consulta y análisis
- Definir validaciones de entrada

#### Paso 3: Implementación
- Crear funciones de carga de datos (CSV)
- Implementar funciones de búsqueda y filtrado
- Desarrollar estadísticas y análisis
- Construir interfaz de usuario interactiva

#### Paso 4: Pruebas
- Probar cada funcionalidad
- Validar manejo de errores
- Verificar integridad de datos

#### Paso 5: Documentación
- Documentar código con comentarios
- Crear manual de usuario
- Preparar ejemplos de uso

### Pseudocódigo

```
INICIO PROGRAMA

// Cargar datos
FUNCIÓN cargar_datos(archivo_csv)
    productos = []
    ABRIR archivo_csv
    PARA cada línea en archivo
        producto = convertir_línea_a_diccionario()
        AGREGAR producto a productos
    FIN PARA
    RETORNAR productos
FIN FUNCIÓN

// Función principal de menú
FUNCIÓN mostrar_menu()
    MIENTRAS usuario_no_salga HACER
        MOSTRAR opciones de menú
        opción = LEER entrada_usuario
        
        SEGÚN opción:
            CASO 1: listar_todos_productos()
            CASO 2: buscar_por_categoria()
            CASO 3: buscar_por_id()
            CASO 4: buscar_por_nombre()
            CASO 5: buscar_por_rango_precios()
            CASO 6: productos_bajo_stock()
            CASO 7: estadisticas_inventario()
            CASO 8: buscar_por_proveedor()
            CASO 9: agregar_producto()
            CASO 10: actualizar_stock()
            CASO 0: SALIR
            OTRO: mensaje_error()
        FIN SEGÚN
    FIN MIENTRAS
FIN FUNCIÓN

// Buscar por categoría
FUNCIÓN buscar_por_categoria(productos, categoria_buscar)
    resultados = []
    PARA cada producto en productos
        SI producto.categoria == categoria_buscar ENTONCES
            AGREGAR producto a resultados
        FIN SI
    FIN PARA
    MOSTRAR resultados
FIN FUNCIÓN

// Calcular estadísticas
FUNCIÓN estadisticas_inventario(productos)
    total_productos = CONTAR(productos)
    valor_total = SUMAR(producto.precio * producto.stock)
    categorías = CONTAR_ÚNICAS(producto.categoria)
    stock_total = SUMAR(producto.stock)
    
    producto_más_caro = MÁXIMO(productos, clave=precio)
    producto_más_barato = MÍNIMO(productos, clave=precio)
    
    MOSTRAR todas_las_estadísticas
FIN FUNCIÓN

// Productos con bajo stock
FUNCIÓN productos_bajo_stock(productos, umbral=20)
    PARA cada producto en productos
        SI producto.stock <= umbral ENTONCES
            MOSTRAR producto con ALERTA
        FIN SI
    FIN PARA
FIN FUNCIÓN

// Agregar nuevo producto
FUNCIÓN agregar_producto(productos)
    LEER datos_nuevo_producto
    VALIDAR datos
    nuevo_id = MÁXIMO(producto.id) + 1
    CREAR nuevo_producto con nuevo_id
    AGREGAR nuevo_producto a productos
    GUARDAR en archivo_csv
    MENSAJE éxito
FIN FUNCIÓN

LLAMAR mostrar_menu()

FIN PROGRAMA
```

### Diagrama de Flujo

```
                    ┌─────────────┐
                    │   INICIO    │
                    └──────┬──────┘
                           │
                           ▼
                    ┌─────────────┐
                    │ Cargar CSV  │
                    └──────┬──────┘
                           │
                           ▼
              ┌────────────────────────┐
              │  Mostrar Menú         │
              │  1. Listar todos      │
              │  2. Por categoría     │
              │  3. Por ID            │
              │  4. Por nombre        │
              │  5. Por precio        │
              │  6. Bajo stock        │
              │  7. Estadísticas      │
              │  8. Por proveedor     │
              │  9. Agregar producto  │
              │ 10. Actualizar stock  │
              │  0. Salir             │
              └───────────┬────────────┘
                          │
                          ▼
              ┌───────────────────────┐
              │  Leer opción usuario  │
              └───────────┬───────────┘
                          │
        ┌─────────────────┼─────────────────┐
        │                 │                 │
        ▼                 ▼                 ▼
   ┌────────┐      ┌──────────┐      ┌──────────┐
   │Opción 1│      │Opción 2-8│      │Opción 9-10│
   │Listar  │      │Búsquedas │      │  Agregar/ │
   │        │      │Análisis  │      │Actualizar │
   └────┬───┘      └─────┬────┘      └─────┬────┘
        │                │                  │
        ▼                ▼                  ▼
   ┌────────┐      ┌──────────┐      ┌──────────┐
   │Mostrar │      │ Filtrar  │      │ Validar  │
   │Todos   │      │  Datos   │      │  Datos   │
   └────┬───┘      └─────┬────┘      └─────┬────┘
        │                │                  │
        │                ▼                  ▼
        │         ┌──────────┐      ┌──────────┐
        │         │ Mostrar  │      │ Guardar  │
        │         │Resultado │      │   CSV    │
        │         └─────┬────┘      └─────┬────┘
        │               │                  │
        └───────────────┴──────────────────┘
                        │
                        ▼
                ┌───────────────┐
                │ ¿Continuar?   │
                └───────┬───────┘
                        │
                 ┌──────┴──────┐
                 │             │
            SÍ   │             │  NO
                 ▼             ▼
         ┌────────────┐  ┌─────────┐
         │Volver Menú │  │   FIN   │
         └────────────┘  └─────────┘
```

---

## 🤖 Sugerencias de Copilot

### ✅ Sugerencias Aceptadas

1. **Uso de `csv.DictReader`**
   - **Sugerencia**: Utilizar `csv.DictReader` en lugar de `csv.reader` para acceder a columnas por nombre
   - **Razón**: Hace el código más legible y mantenible al usar nombres de columnas en lugar de índices numéricos
   - **Implementación**: Aceptada en función `cargar_datos()`

2. **Conversión de tipos de datos**
   - **Sugerencia**: Convertir 'precio' y 'stock' a `int` al cargar datos
   - **Razón**: Permite operaciones matemáticas y comparaciones correctas
   - **Implementación**: Aceptada con manejo de errores para datos inválidos

3. **Función de validación centralizada**
   - **Sugerencia**: Crear una función `validar_entrada_numerica()` reutilizable
   - **Razón**: Evita duplicación de código y centraliza validaciones
   - **Implementación**: Aceptada y usada en múltiples funciones

4. **Uso de f-strings para formateo**
   - **Sugerencia**: Usar f-strings para formateo de texto en lugar de `.format()` o `%`
   - **Razón**: Sintaxis más moderna, legible y eficiente en Python 3.6+
   - **Implementación**: Aceptada en todo el código

5. **Manejo de archivos con context manager**
   - **Sugerencia**: Usar `with open()` para manejo automático de cierre de archivos
   - **Razón**: Previene fugas de recursos y es más seguro
   - **Implementación**: Aceptada en todas las operaciones de archivo

6. **Separadores visuales en interfaz**
   - **Sugerencia**: Agregar líneas decorativas para mejorar legibilidad del menú
   - **Razón**: Mejora experiencia de usuario y organización visual
   - **Implementación**: Aceptada con caracteres Unicode

### ❌ Sugerencias Descartadas

1. **Uso de base de datos SQLite**
   - **Sugerencia**: Migrar de CSV a SQLite para mejor rendimiento
   - **Razón de descarte**: Para el tamaño actual del dataset (20 productos), CSV es suficiente y más simple. SQLite agregaría complejidad innecesaria
   - **Alternativa**: Se mantiene CSV con opción de migrar a futuro si escala

2. **Framework GUI (tkinter)**
   - **Sugerencia**: Crear interfaz gráfica con tkinter
   - **Razón de descarte**: El proyecto requiere específicamente una interfaz de consola interactiva. GUI requeriría más tiempo de desarrollo
   - **Alternativa**: Se mantiene interfaz de consola con menús claros

3. **Librería pandas para análisis**
   - **Sugerencia**: Usar pandas.DataFrame para manipulación de datos
   - **Razón de descarte**: Agrega dependencia externa innecesaria. Las operaciones requeridas se pueden hacer eficientemente con Python estándar
   - **Alternativa**: Uso de estructuras de datos nativas (listas y diccionarios)

4. **Autenticación de usuarios**
   - **Sugerencia**: Implementar sistema de login con diferentes roles (admin, vendedor)
   - **Razón de descarte**: Excede el alcance del proyecto actual. No es requisito del sprint
   - **Alternativa**: Sistema de gestión sin autenticación, enfocado en funcionalidad core

5. **Logging con módulo logging**
   - **Sugerencia**: Implementar registro de operaciones con el módulo `logging`
   - **Razón de descarte**: Para un programa educativo y de demostración, print statements son suficientes y más directos
   - **Alternativa**: Mensajes descriptivos con `print()`

6. **Expresiones regulares para validación**
   - **Sugerencia**: Usar regex para validar formatos de entrada
   - **Razón de descarte**: Las validaciones requeridas son simples (números, strings básicos). Regex agregaría complejidad innecesaria
   - **Alternativa**: Validaciones con métodos string estándar (`.isdigit()`, `.strip()`)

---

## 🚀 Instrucciones de Uso

> ⚠️ **IMPORTANTE**: Todos los comandos se ejecutan desde la carpeta raíz `Entregable/`

### 📁 Estructura del Proyecto

```
Entregable/
├── 📄 README.md                (este archivo)
├── 📄 INSTRUCCIONES.md         (guía detallada)
├── 📄 requirements.txt         (dependencias)
├── 📁 datos/
│   ├── productos.csv
│   ├── clientes.csv
│   ├── ventas.csv
│   ├── detalle_ventas.csv
│   └── tienda_aurelion.pbix (opcional - dashboard Power BI)
├── 📁 programas/
│   ├── tienda_aurelion.py      (consola)
│   ├── app_streamlit.py        (web)
│   ├── tienda_aurelion.ipynb    (notebook)
│   ├── analisis_estadistico.py  (análisis estadístico) ⭐
│   └── analisis_estadistico.ipynb  (notebook análisis estadístico) ⭐⭐
├── 📁 graficos/ ⭐
│   └── (gráficos generados automáticamente)
└── 📁 documentacion/
    └── (archivos de documentación)
```

---

### Opción 1: Programa de Consola (Básico)

**Requisitos:**
- Python 3.6 o superior

**Ejecución desde raíz:**
```bash
python programas/tienda_aurelion.py
```

**Ventajas:**
- ✅ Sin dependencias externas
- ✅ Rápido y simple
- ✅ Funciona en cualquier sistema con Python

---

### Opción 2: Aplicación Web Online ⭐⭐ RECOMENDADO (Sin instalaciones)

**Acceso directo:**
🔗 **[Acceder a la Aplicación Web Online](https://tienda-aurelionv2.streamlit.app/)**

**Ventajas:**
- ✅ Sin instalación requerida
- ✅ Funciona inmediatamente en cualquier navegador
- ✅ Siempre actualizada con la última versión
- ✅ Interfaz web profesional y moderna
- ✅ Gráficos interactivos en tiempo real
- ✅ Análisis estadístico completo integrado

---

### Opción 3: Aplicación Web Streamlit Local ⭐ RECOMENDADO

**Requisitos:**
- Python 3.6 o superior
- Streamlit y dependencias

**Instalación (solo primera vez):**
```bash
pip install streamlit pandas numpy matplotlib seaborn scipy
```

**Ejecución desde raíz:**
```bash
streamlit run programas/app_streamlit.py
```

La aplicación se abrirá automáticamente en tu navegador en `http://localhost:8501`

**Ventajas:**
- ✅ Interfaz web profesional y moderna
- ✅ Gráficos interactivos en tiempo real
- ✅ Control total del código y datos
- ✅ Filtros dinámicos (sliders, dropdowns)
- ✅ Dashboard visual completo
- ✅ No requiere conocimientos técnicos para usar
- ✅ Ideal para presentaciones y demos

**Características de la App Web:**
- 🏠 **Página Inicio**: Dashboard con métricas y gráficos
- 🔍 **Explorar Productos**: Filtros avanzados y búsqueda
- 📊 **Estadísticas**: Análisis detallado por categoría/proveedor
- ✏️ **Gestionar**: Agregar productos y actualizar stock desde la interfaz

---

### Opción 4: Jupyter Notebook

**Requisitos:**
- Python 3.6 o superior
- Jupyter

**Instalación (solo primera vez):**
```bash
pip install jupyter
```

**Ejecución desde raíz:**
```bash
jupyter notebook programas/tienda_aurelion.ipynb
```

**Ventajas:**
- ✅ Documentación interactiva
- ✅ Código ejecutable paso a paso
- ✅ Explicaciones integradas
- ✅ Ideal para aprendizaje y presentaciones educativas

### Opción 4: Análisis Estadístico en Jupyter Notebook ⭐ NUEVO RECOMENDADO

**Requisitos:**
- Python 3.6 o superior
- Librerías científicas: pandas, numpy, matplotlib, seaborn, scipy

**Instalación (solo primera vez):**
```bash
pip install pandas numpy matplotlib seaborn scipy jupyter
```

**Ejecución desde raíz:**
```bash
jupyter notebook programas/analisis_estadistico.ipynb
```

**Ventajas:**
- ✅ Ejecución celda por celda (interactivo)
- ✅ Visualización de resultados integrada
- ✅ Gráficos integrados en el documento
- ✅ Documentación completa del análisis
- ✅ Ideal para presentaciones y reportes

**Contenido del Notebook:**
1. Carga de datos desde los 4 archivos CSV
2. Estadísticas descriptivas básicas
3. Identificación de distribuciones
4. Análisis de correlaciones
5. Detección de outliers
6. 3 gráficos representativos
7. Resumen ejecutivo e interpretación

---

Si quieres instalar todo de una vez:
```bash
pip install -r requirements.txt
```

---

### Características Principales (Todas las Versiones)
- 🔍 Búsqueda por múltiples criterios
- 📊 Análisis estadístico del inventario
- ➕ Agregar nuevos productos
- 🔄 Actualizar stock existente
- ⚠️ Alertas de bajo stock
- 💾 Persistencia de datos en CSV

---

### 📚 Archivos de Documentación

Para más información, consulta:
- 📄 `INSTRUCCIONES.md` - Guía completa de uso
- 📄 `INICIO_RAPIDO.md` - Guía rápida
- 📄 `RESUMEN_FINAL.md` - Resumen del proyecto
- 📁 `documentacion/INSTRUCCIONES_STREAMLIT.md` - Guía de la app web
- 📁 `documentacion/GUIA_PRESENTACION.md` - Guía para presentar
- 📁 `documentacion/` - Toda la documentación técnica

---

## 👨‍💻 Información del Proyecto

**Proyecto**: Sprint 3 - Machine Learning  
**Institución**: IBM  
**Tema**: Sistema de Gestión de Inventario con Python + Machine Learning  
**Autor**: Martos Ludmila  
**DNI**: 34811650  
**Fecha**: 2025  
**Versión**: 3.0

### 🌐 Enlaces del Proyecto

- 🔗 **[Aplicación Web Online](https://tienda-aurelionv2.streamlit.app/)** ⭐⭐ - Acceso directo sin instalaciones

---

## 📝 Notas Adicionales

Este proyecto demuestra conceptos fundamentales de:
- Estructuras de datos
- Algoritmos de búsqueda y filtrado
- Manejo de archivos CSV
- Interfaces de usuario (consola, web, notebook)
- Validación de datos
- Análisis estadístico completo (Sprint 2)
- Base de datos normalizada (4 tablas relacionadas)
- Gestión de ventas y clientes
- Generación automática de gráficos profesionales

### Archivos del Proyecto

**📁 Raíz (Entregable/):**
| Archivo | Descripción |
|---------|-------------|
| `README.md` | Este archivo - Documentación completa ⭐ |
| `INSTRUCCIONES.md` | Guía completa de uso |
| `INICIO_RAPIDO.md` | Guía de inicio rápido |
| `RESUMEN_FINAL.md` | Resumen ejecutivo del proyecto |
| `requirements.txt` | Dependencias Python |

**📁 datos/:**
| Archivo | Descripción |
|---------|-------------|
| `productos.csv` | Base de datos de productos (80 productos) |
| `clientes.csv` | Base de datos de clientes (50 clientes) |
| `ventas.csv` | Base de datos de ventas (100 ventas) |
| `detalle_ventas.csv` | Detalles de ventas (273 registros) |

**📁 programas/:**
| Archivo | Descripción |
|---------|-------------|
| `tienda_aurelion.py` | Programa de consola Python (mejorado con ventas y clientes) |
| `app_streamlit.py` | Aplicación web Streamlit mejorada ⭐ |
| `tienda_aurelion.ipynb` | Jupyter Notebook interactivo |
| `analisis_estadistico.py` | Script de análisis estadístico completo ⭐ |
| `analisis_estadistico.ipynb` | Notebook de análisis estadístico completo ⭐⭐ |

**📁 documentacion/:**
| Archivo | Descripción |
|---------|-------------|
| `INDICE_PROYECTO.md` | Índice general de navegación |
| `ANALISIS_ESTADISTICO.md` | Análisis estadístico completo ⭐ |
| `PSEUDOCODIGO_Y_DIAGRAMAS.md` | Algoritmos y 6 diagramas de flujo |
| `SUGERENCIAS_COPILOT.md` | 20 sugerencias de IA evaluadas |
| `GUIA_POWER_BI.md` | Guía para crear dashboard |
| `GUIA_PRESENTACION.md` | Estructura para presentación oral |
| `INSTRUCCIONES_STREAMLIT.md` | Guía de uso de la app web |

**📁 Power BI/:**
| Archivo | Descripción |
|---------|-------------|
| `query_productos.m` | Query Power Query para tabla Productos |
| `query_clientes.m` | Query Power Query para tabla Clientes |
| `query_ventas.m` | Query Power Query para tabla Ventas |
| `query_detalle_ventas.m` | Query Power Query para tabla Detalle_Ventas |
| `measures.dax` | Medidas DAX para KPIs y análisis |
| `theme.json` | Tema visual medieval para dashboard |
| `layout_instructions.md` | Instrucciones detalladas de layout |
| `README.md` | Guía del paquete Power BI |

**📄 Guías Dashboard Power BI:**
| Archivo | Descripción |
|---------|-------------|
| `COMO_CREAR_DASHBOARD_POWERBI.md` | 🎯 Guía maestra con índice completo ⭐⭐ |
| `GUIA_RAPIDA_DASHBOARD_POWERBI.md` | 🚀 Instrucciones paso a paso (20-30 min) ⭐ |
| `CHECKLIST_DASHBOARD.md` | ✅ Lista de verificación completa |
| `LAYOUT_VISUAL_DASHBOARD.md` | 🎨 Vista previa visual del dashboard |

El código está completamente documentado y diseñado para ser educativo y fácil de entender.

### Comparación de Versiones

| Aspecto | Consola | Jupyter | Streamlit |
|---------|---------|---------|-----------|
| Instalación | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| Interfaz | Texto | Mixta | Web profesional |
| Gráficos | ASCII | Estáticos | Interactivos |
| Para presentar | ⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| Documentación | ⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |
| Interactividad | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

**Recomendación:** Usa **Streamlit** para presentaciones impactantes, **Jupyter** para documentación educativa, y **Consola** para uso rápido sin instalaciones.

---

## 📊 Dashboard Power BI

### 🎯 Crear Dashboard en Power BI Desktop

El proyecto incluye **todos los recursos necesarios** para crear un dashboard profesional en Power BI Desktop en **20-30 minutos**.

#### 🚀 Inicio Rápido

**➡️ Comienza aquí: [`COMO_CREAR_DASHBOARD_POWERBI.md`](./documentacion/COMO_CREAR_DASHBOARD_POWERBI.md)**

Esta guía maestra te dirigirá a todos los recursos que necesitas.

#### 📚 Recursos Disponibles

| Recurso | Descripción | Tiempo |
|---------|-------------|--------|
| 🎯 **[Guía Maestra](./documentacion/COMO_CREAR_DASHBOARD_POWERBI.md)** | Índice completo con flujo de trabajo recomendado | 5 min lectura |
| 🚀 **[Guía Paso a Paso](./documentacion/GUIA_RAPIDA_DASHBOARD_POWERBI.md)** | Instrucciones detalladas para crear el dashboard | 30 min |
| ✅ **[Checklist](./documentacion/CHECKLIST_DASHBOARD.md)** | Lista de verificación completa | - |
| 🎨 **[Layout Visual](./documentacion/LAYOUT_VISUAL_DASHBOARD.md)** | Vista previa de cómo debe verse el dashboard | 3 min |
| 🔍 **[Validador de Datos](./programas/validar_datos_powerbi.py)** | Script Python para verificar datos | 1 min |

#### 📦 Archivos Power BI Incluidos

Todos los archivos están listos en la carpeta `Power BI/`:

- ✅ **4 Queries M** (para cargar tablas desde CSV)
- ✅ **Medidas DAX** (15+ KPIs y métricas)
- ✅ **Tema JSON** (colores medievales profesionales)
- ✅ **Instrucciones de Layout** (paso a paso visual)

#### 🎯 Dashboard Final

El dashboard incluirá **2 páginas principales**:

**Página 1: Overview (General)**
- 5 tarjetas KPI (productos, inventario, stock, ventas, ingresos)
- Gráfico de barras: Productos por categoría
- Gráfico de columnas: Top 10 productos más valiosos
- Gráfico de anillos: Distribución de stock
- Tabla: Productos con stock bajo (con alertas)

**Página 2: Ventas y Clientes**
- 4 tarjetas KPI (ticket promedio, productos vendidos, clientes, promedio venta)
- Gráfico de línea: Evolución de ventas por fecha
- Gráfico de barras: Top 5 productos más vendidos
- Gráfico de columnas: Clientes por ciudad
- Tabla: Detalle completo de ventas
- Slicer: Filtro de fechas

#### 🎨 Diseño Visual

- **Tema:** Medieval/Fantasía con colores dorados y rojo oscuro
- **Interactividad:** Cross-filtering entre todos los visuales
- **Responsivo:** Adaptable a diferentes tamaños de pantalla

#### ⚡ Flujo de Trabajo Rápido

```bash
# 1. Validar datos (opcional, 1 min)
cd Sprint-2/programas
python validar_datos_powerbi.py

# 2. Abrir Power BI Desktop

# 3. Seguir GUIA_RAPIDA_DASHBOARD_POWERBI.md (30 min)
#    - Cargar 4 tablas con queries M (5 min)
#    - Crear relaciones (2 min)
#    - Importar tema (1 min)
#    - Crear medidas DAX (3 min)
#    - Página Overview (8 min)
#    - Página Ventas y Clientes (7 min)
#    - Formateo final (3 min)
#    - Guardar .pbix (1 min)

# 4. Resultado: Dashboard profesional completo ✅
```

#### 📊 KPIs Esperados

Al finalizar, tu dashboard mostrará aproximadamente:

- **Total Productos:** 80
- **Valor Total Inventario:** ~$285,000
- **Stock Total:** ~4,068 unidades
- **Total Ventas:** 100
- **Ingresos Totales:** ~$219,000
- **Ticket Promedio:** ~$2,190
- **Total Clientes:** 50
- **Productos Stock Bajo:** ~15

#### 🆘 Solución de Problemas

Todas las guías incluyen secciones de solución de problemas comunes:

- ❌ No se encuentran los archivos CSV → Solución en guía
- ❌ Las medidas DAX dan error → Verificación de nombres
- ❌ Las relaciones no funcionan → Pasos de corrección
- ❌ El tema no se aplica → Alternativas y soluciones

#### 📥 Descargar Power BI Desktop

Si aún no tienes Power BI Desktop:

🔗 **[Descargar Power BI Desktop](https://powerbi.microsoft.com/desktop/)** (Gratis)

---

## 👨‍💻 Autor

**Desarrollador**: Ludmila Martos

## 📞 Contacto

- **Email**: [ludmilamartos@gmail.com](mailto:ludmilamartos@gmail.com)
- **LinkedIn**: [ludmimar89](https://www.linkedin.com/in/ludmimar89/)
- **GitHub**: [Ludmimar](https://github.com/Ludmimar)
