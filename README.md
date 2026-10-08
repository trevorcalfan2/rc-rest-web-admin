# RC Rest Web Admin

Sistema web del restaurante Rincon Chami: menú digital, pedidos online, reservas, QR de mesas y panel de administración.

## Stack

- Laravel 9 / PHP 8.1
- MySQL 8
- Docker (apache + mysql + phpmyadmin)

## Levantar en local

```bash
cp .env.example .env
docker compose up -d
docker compose exec app php artisan key:generate
docker compose exec app php artisan storage:link
```

App: http://localhost:8890
phpMyAdmin: http://localhost:8891

## Notas

- La config visible del sitio (textos, colores, ubicaciones) se administra desde el panel admin (`/admin`) y vive en la tabla `basic_settings`/`basic_extendeds`.
- `database/backup.sql` es el dump base con la configuración real del restaurante — se carga automático al iniciar el contenedor de MySQL por primera vez.
