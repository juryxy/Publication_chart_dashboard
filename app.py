from pathlib import Path

base = Path(__file__).resolve().parent
parts = sorted((base / "app_parts").glob("part_*.pyfrag"))
if not parts:
    raise RuntimeError("Application source parts are missing.")
source = "".join(path.read_text(encoding="utf-8") for path in parts)
exec(compile(source, str(base / "app_source.py"), "exec"), globals(), globals())
