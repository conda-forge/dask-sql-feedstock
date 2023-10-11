maturin build -vv --release --strip --manylinux off --interpreter=%PYTHON%

FOR /F "delims=" %%i IN ('dir /s /b target\wheels\*.whl') DO set dask_sql_wheel=%%i

%PYTHON% -m pip install --no-deps %dask_sql_wheel% -vv
