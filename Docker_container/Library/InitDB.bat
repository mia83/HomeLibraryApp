@REM This is a correct comment for .bat files
docker compose -f library.yml run -it --rm db-backup sh -c "exec /custom_scripts/createDump.sh"
docker compose -f library.yml down db
docker volume rm library_mariadb-data-dir
docker compose -f library.yml up -d db