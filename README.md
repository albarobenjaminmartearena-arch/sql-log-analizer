# SQL Log Analyzer

Proyecto para analizar registros de intentos de inicio de sesión y detectar actividad sospechosa.

## Descripción
Herramienta que procesa logs de autenticación desde un archivo CSV usando SQL. Permite identificar IPs con múltiples intentos fallidos para detección de posibles ataques de fuerza bruta.

## Archivos
- `log_in_attempts.csv`: Dataset con registros de login. Columnas: timestamp, ip_origen, usuario, resultado
- `queries.sql`: Consultas SQL para análisis de seguridad

## Consultas incluidas
1. **Top 5 IPs sospechosas**: Muestra las IPs con más intentos fallidos
2. **Detección de fuerza bruta**: Lista IPs con 5+ fallos consecutivos

## Cómo usar
1. Abrir `log_in_attempts.csv` en cualquier herramienta SQL o Python
2. Ejecutar las queries de `queries.sql` sobre la tabla `log_in_attempts`
3. Revisar resultados para identificar actividad anómala

## Skills demostradas
SQL, Análisis de logs, Detección de amenazas, Seguridad SOC
