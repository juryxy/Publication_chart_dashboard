from pathlib import Path
import base64
import bz2

base = Path(__file__).resolve().parent
bundle = base / "app_bundle" / "app.b64"
if not bundle.exists():
    raise RuntimeError("Compressed application bundle is missing.")
encoded = bundle.read_text(encoding="ascii")
source = bz2.decompress(base64.b64decode(encoded)).decode("utf-8")
exec(compile(source, str(base / "app_source.py"), "exec"), globals(), globals())
