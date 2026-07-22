Installation
============

Requirements
------------

Python 3.10 or newer is recommended. Internet access is needed during the first dependency installation. The dashboard runs in a modern browser and processes uploaded data locally.

Windows
-------

Extract the repository and double-click ``Launch_Dashboard.bat``. The launcher creates ``.venv``, installs dependencies, and starts Streamlit. For a manual setup::

   py -m venv .venv
   .venv\Scripts\activate
   python -m pip install --upgrade pip
   python -m pip install -r requirements.txt
   python -m streamlit run app.py

macOS and Linux
---------------

Make the launcher executable and run it::

   chmod +x Launch_Dashboard.sh
   ./Launch_Dashboard.sh

On macOS use ``Launch_Dashboard.command``. The launcher starts Streamlit in headless mode, waits until the local server responds, and then opens a new browser window. Set ``DASHBOARD_NO_BROWSER=1`` to disable automatic browser opening.

Manual setup::

   python3 -m venv .venv
   source .venv/bin/activate
   python -m pip install --upgrade pip
   python -m pip install -r requirements.txt
   python -m streamlit run app.py

The default address is ``http://localhost:8501``.
