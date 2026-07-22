Troubleshooting
===============

Blank browser tab on Linux or macOS
-----------------------------------

A browser can open before Streamlit is ready and remain on a blank page with a loading indicator. The included launchers start Streamlit in headless mode, wait for ``http://localhost:8501`` to respond, and then open the browser. If the first tab remains blank, open the same address in a new tab.

Disable automatic browser opening with::

   DASHBOARD_NO_BROWSER=1 ./Launch_Dashboard.sh

Use ``Launch_Dashboard.command`` on macOS. This symptom is not necessarily caused by ``watchdog``. Watchdog remains an explicit dependency because it improves local file-change monitoring.

Python or virtual environment errors
------------------------------------

Confirm that Python 3.10 or newer is installed. Debian and Ubuntu users may need::

   sudo apt install python3-venv python3-pip

Delete ``.venv`` and run the launcher again to force a clean installation.

Port already in use
-------------------

Run on another port::

   python -m streamlit run app.py --server.port 8502

For the Linux/macOS launcher::

   DASHBOARD_PORT=8502 DASHBOARD_URL=http://localhost:8502 ./Launch_Dashboard.sh

Plotly static export fails
--------------------------

Interactive HTML export should still work. Static Plotly export may require a current Kaleido installation and Chrome or Chromium. Restart the dashboard after installing browser dependencies.

Regression is unavailable
-------------------------

Regression requires numeric X and Y variables, enough complete observations, and variation in X. Group-specific fits are skipped for groups that do not contain enough usable observations for the selected polynomial degree.

Documentation build
-------------------

Run ``build_docs.bat`` on Windows or ``./build_docs.sh`` on Linux/macOS. After a successful build, open ``readthedocs/_build/html/index.html``. A local server can be started with::

   python -m http.server 8000 --directory readthedocs/_build/html
