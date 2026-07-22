from pathlib import Path
import base64
import gzip

base = Path(__file__).resolve().parent
parts = sorted((base / "app_bundle").glob("part_*.b64"))
if not parts:
    raise RuntimeError("Compressed application bundle is missing.")
encoded = "".join(path.read_text(encoding="ascii") for path in parts)
source = gzip.decompress(base64.b64decode(encoded)).decode("utf-8")
exec(compile(source, str(base / "app_source.py"), "exec"), globals(), globals())
