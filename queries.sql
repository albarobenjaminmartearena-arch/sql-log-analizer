-- SQL Log Analyzer - Proyecto SOC Jr

-- 1. Top 5 IPs con más intentos fallidos
SELECT ip_origen, COUNT(*) as intentos_fallidos
FROM log_in_attempts 
WHERE resultado = 'FAILED'
GROUP BY ip_origen
ORDER BY intentos_fallidos DESC
LIMIT 5;

-- 2. IPs con 5+ fallos
SELECT ip_origen, COUNT(*) as intentos
FROM log_in_attempts
WHERE resultado = 'FAILED'
GROUP BY ip_origen
HAVING COUNT(*) >= 5
ORDER BY intentos DESC;
