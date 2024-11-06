# Análisis de Datos de Uber | Proyecto de Ingeniería de Datos Moderna en GCP

## Introducción
Este proyecto tiene como objetivo analizar datos de Uber utilizando una arquitectura moderna de ingeniería de datos en Google Cloud Platform (GCP). Las principales herramientas y tecnologías incluyen GCP Storage, Python, Compute Instances, la herramienta de pipelines de datos Mage, BigQuery y Looker Studio. El enfoque principal del proyecto es crear un pipeline de datos eficiente, realizar procesos ETL y generar insights.

## Arquitectura
La arquitectura integra múltiples componentes de GCP y herramientas para optimizar el flujo de trabajo de ingeniería de datos:
- **Google Storage**: Para almacenar datos en bruto.
- **Compute Instances**: Para ejecutar transformaciones de datos y trabajos ETL.
- **BigQuery**: Para almacenar y consultar datos estructurados.
- **Looker Studio**: Para la visualización de datos y creación de reportes.
- **Herramienta de Pipelines de Datos Mage**: Utilizada para gestionar los pipelines ETL de manera eficiente.

![alt text](architecture.jpg)

## Tecnologías Utilizadas
- **Lenguaje de Programación**: Python
- **Servicios de Google Cloud Platform**:
  - Google Storage
  - Compute Instances
  - BigQuery
  - Looker Studio
- **Herramienta de Pipeline de Datos**: [Mage.ai](https://www.mage.ai/)

### Contribuir
Este proyecto utiliza la herramienta de pipeline de datos de código abierto [Mage.ai](https://github.com/mage-ai/mage-ai). ¡Las contribuciones son bienvenidas en su repositorio de GitHub!

## Conjunto de Datos Utilizado
Los datos para este proyecto se basan en el TLC Trip Record Data, que incluye registros de viajes de taxis amarillos y verdes. Los campos principales capturan detalles como:
- Fechas/horas de recogida y entrega
- Ubicaciones de recogida y entrega
- Distancias de viaje
- Tarifas detalladas
- Tipos de tarifa y pago
- Cantidad de pasajeros reportada por el conductor

### Fuentes del Conjunto de Datos
- **Conjunto de Datos del Proyecto**: [uber_data.csv](https://github.com/Danirive30/Uber-DA-GCP-project/blob/main/data/uber_data.csv)
- **Fuente Oficial del Conjunto de Datos**: [TLC Trip Record Data](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page)
- **Diccionario de Datos**: [Diccionario de Datos (Taxis Amarillos)](https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf)

## Modelo de Datos
El modelo de datos para este proyecto consiste en tablas estructuradas en BigQuery, diseñadas para optimizar el rendimiento de las consultas y la recuperación de datos. Se aplican transformaciones a los datos para limpiarlos y enriquecerlos, lo que permite un análisis y visualización eficientes.
![alt text](data_model.jpeg)

---

# Uber-DA-GCP-project
