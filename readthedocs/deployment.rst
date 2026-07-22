GitHub and Read the Docs deployment
===================================

Repository
----------

The canonical repository is ``juryxy/Publication_chart_dashboard``. The default branch is ``main`` and the project is distributed under the MIT License.

Read the Docs import
--------------------

#. Sign in to Read the Docs using the GitHub account that can access the repository.
#. Choose **Import a Project**.
#. Select ``juryxy/Publication_chart_dashboard``.
#. Use the project slug ``publication-chart-dashboard``.
#. Keep ``main`` as the default branch and trigger the first build.

The root ``.readthedocs.yaml`` file selects Ubuntu 24.04 and Python 3.12, installs ``readthedocs/requirements-docs.txt``, and builds Sphinx from ``readthedocs/conf.py``.

Automatic rebuilds
------------------

When the GitHub integration is installed correctly, Read the Docs adds a webhook and rebuilds the ``latest`` documentation after changes are pushed to ``main``. Pull-request preview builds can be enabled in the Read the Docs project settings.

Local documentation build
-------------------------

Windows users can run ``build_docs.bat``. Linux and macOS users can run::

   chmod +x build_docs.sh
   ./build_docs.sh

The generated homepage is ``readthedocs/_build/html/index.html``.

Application deployment
----------------------

The supplied launchers are designed for local use. To expose the dashboard on a trusted local network, run::

   python -m streamlit run app.py --server.address 0.0.0.0 --server.port 8501

Do not expose the development Streamlit server directly to the public internet without authentication, HTTPS, access controls, and an appropriate production deployment architecture.
