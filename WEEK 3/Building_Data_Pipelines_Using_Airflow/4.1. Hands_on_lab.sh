# This is the hands on lab for Getting started with apache airflow on IBM Cloud Pak for Data
 
theia@theiadocker-nyakudyamufa:/home/project$ start_airflow
Starting Airflow
This process can take up to 15 minutes...
 - Initializing configuration
 - Running the Airflow initialization Service
 - Starting Airflow Services
      
Airflow started, waiting for all services to be ready....
      
Your airflow server is now ready to use and available with username: airflow password: MjQwNTktbnlha3Vk

You can access your Airflow Webserver at: https://nyakudyamufa-8080.theiadocker-1-labs-prod-theiak8s-4-tor01.proxy.cognitiveclass.ai

CommandLine: 
 • List DAGs: airflow dags list
 • List Tasks: airflow tasks list example_bash_operator
 • Run an example task: airflow tasks test example_bash_operator runme_1 2015-06-01
theia@theiadocker-nyakudyamufa:/home/project$ airflow dags list
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The sql_alchemy_conn option in [core] has been moved to the sql_alchemy_conn option in [database] - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The auth_backend option in [api] has been renamed to auth_backends - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:360: FutureWarning: The auth_backends setting in [api] has had airflow.api.auth.backend.session added in the running config, which is needed by the UI. Please update your config before Apache Airflow 3.0.
  FutureWarning,
dag_id                           | filepath                        | owner   | paused
=================================+=================================+=========+=======
example_bash_operator            | /home/airflow/.local/lib/python | airflow | False 
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_bash_operator.p |         |       
                                 | y                               |         |       
example_branch_datetime_operator | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_branch_datetime |         |       
                                 | _operator.py                    |         |       
example_branch_datetime_operator | /home/airflow/.local/lib/python | airflow | True  
_2                               | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_branch_datetime |         |       
                                 | _operator.py                    |         |       
example_branch_dop_operator_v3   | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_branch_python_d |         |       
                                 | op_operator_3.py                |         |       
example_branch_labels            | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_branch_labels.p |         |       
                                 | y                               |         |       
example_branch_operator          | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_branch_operator |         |       
                                 | .py                             |         |       
example_branch_python_operator_d | /home/airflow/.local/lib/python | airflow | True  
ecorator                         | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_branch_operator |         |       
                                 | _decorator.py                   |         |       
example_complex                  | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_complex.py      |         |       
example_dag_decorator            | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_dag_decorator.p |         |       
                                 | y                               |         |       
example_external_task_marker_chi | /home/airflow/.local/lib/python | airflow | True  
ld                               | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_external_task_m |         |       
                                 | arker_dag.py                    |         |       
example_external_task_marker_par | /home/airflow/.local/lib/python | airflow | True  
ent                              | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_external_task_m |         |       
                                 | arker_dag.py                    |         |       
example_kubernetes_executor      | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_kubernetes_exec |         |       
                                 | utor.py                         |         |       
example_local_kubernetes_executo | /home/airflow/.local/lib/python | airflow | True  
r                                | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_local_kubernete |         |       
                                 | s_executor.py                   |         |       
example_nested_branch_dag        | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_nested_branch_d |         |       
                                 | ag.py                           |         |       
example_passing_params_via_test_ | /home/airflow/.local/lib/python | airflow | True  
command                          | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_passing_params_ |         |       
                                 | via_test_command.py             |         |       
example_python_operator          | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_python_operator |         |       
                                 | .py                             |         |       
example_short_circuit_operator   | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_short_circuit_o |         |       
                                 | perator.py                      |         |       
example_skip_dag                 | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_skip_dag.py     |         |       
example_sla_dag                  | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_sla_dag.py      |         |       
example_subdag_operator          | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_subdag_operator |         |       
                                 | .py                             |         |       
example_subdag_operator.section- | /home/airflow/.local/lib/python | airflow | True  
1                                | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_subdag_operator |         |       
                                 | .py                             |         |       
example_subdag_operator.section- | /home/airflow/.local/lib/python | airflow | True  
2                                | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_subdag_operator |         |       
                                 | .py                             |         |       
example_task_group               | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_task_group.py   |         |       
example_task_group_decorator     | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_task_group_deco |         |       
                                 | rator.py                        |         |       
example_time_delta_sensor_async  | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_time_delta_sens |         |       
                                 | or_async.py                     |         |       
example_trigger_controller_dag   | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_trigger_control |         |       
                                 | ler_dag.py                      |         |       
example_trigger_target_dag       | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_trigger_target_ |         |       
                                 | dag.py                          |         |       
example_weekday_branch_operator  | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_branch_day_of_w |         |       
                                 | eek_operator.py                 |         |       
example_xcom                     | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_xcom.py         |         |       
example_xcom_args                | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_xcomargs.py     |         |       
example_xcom_args_with_operators | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_xcomargs.py     |         |       
latest_only                      | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_latest_only.py  |         |       
latest_only_with_trigger         | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/example_latest_only_wit |         |       
                                 | h_trigger.py                    |         |       
tutorial                         | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/tutorial.py             |         |       
tutorial_etl_dag                 | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/tutorial_etl_dag.py     |         |       
tutorial_taskflow_api_etl        | /home/airflow/.local/lib/python | airflow | True  
                                 | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/tutorial_taskflow_api_e |         |       
                                 | tl.py                           |         |       
tutorial_taskflow_api_etl_virtua | /home/airflow/.local/lib/python | airflow | True  
lenv                             | 3.7/site-packages/airflow/examp |         |       
                                 | le_dags/tutorial_taskflow_api_e |         |       
                                 | tl_virtualenv.py                |         |       
                                                                                     
theia@theiadocker-nyakudyamufa:/home/project$ airflow task list example_bash_operator/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The sql_alchemy_conn option in [core] has been moved to the sql_alchemy_conn option in [database] - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The auth_backend option in [api] has been renamed to auth_backends - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:360: FutureWarning: The auth_backends setting in [api] has had airflow.api.auth.backend.session added in the running config, which is needed by the UI. Please update your config before Apache Airflow 3.0.
  FutureWarning,
usage: airflow [-h] GROUP_OR_COMMAND ...

positional arguments:
  GROUP_OR_COMMAND

    Groups:
      celery         Celery components
      config         View configuration
      connections    Manage connections
      dags           Manage DAGs
      db             Database operations
      jobs           Manage jobs
      kubernetes     Tools to help run the KubernetesExecutor
      pools          Manage pools
      providers      Display providers
      roles          Manage roles
      tasks          Manage tasks
      users          Manage users
      variables      Manage variables

    Commands:
      cheat-sheet    Display cheat sheet
      dag-processor  Start a standalone Dag Processor instance
      info           Show information about current Airflow and environment
      kerberos       Start a kerberos ticket renewer
      plugins        Dump information about loaded plugins
      rotate-fernet-key
                     Rotate encrypted connection credentials and variables
      scheduler      Start a scheduler instance
      standalone     Run an all-in-one copy of Airflow
      sync-perm      Update permissions for existing roles and optionally DAGs
      triggerer      Start a triggerer instance
      version        Show the version
      webserver      Start a Airflow webserver instance

optional arguments:
  -h, --help         show this help message and exit

airflow command error: argument GROUP_OR_COMMAND: invalid choice: 'task' (choose from 'celery', 'cheat-sheet', 'config', 'connections', 'dag-processor', 'dags', 'db', 'info', 'jobs', 'kerberos', 'kubernetes', 'plugins', 'pools', 'providers', 'roles', 'rotate-fernet-key', 'scheduler', 'standalone', 'sync-perm', 'tasks', 'triggerer', 'users', 'variables', 'version', 'webserver'), see help above.
theia@theiadocker-nyakudyamufa:/home/project$ airflow task list tutorial
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The sql_alchemy_conn option in [core] has been moved to the sql_alchemy_conn option in [database] - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The auth_backend option in [api] has been renamed to auth_backends - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:360: FutureWarning: The auth_backends setting in [api] has had airflow.api.auth.backend.session added in the running config, which is needed by the UI. Please update your config before Apache Airflow 3.0.
  FutureWarning,
usage: airflow [-h] GROUP_OR_COMMAND ...

positional arguments:
  GROUP_OR_COMMAND

    Groups:
      celery         Celery components
      config         View configuration
      connections    Manage connections
      dags           Manage DAGs
      db             Database operations
      jobs           Manage jobs
      kubernetes     Tools to help run the KubernetesExecutor
      pools          Manage pools
      providers      Display providers
      roles          Manage roles
      tasks          Manage tasks
      users          Manage users
      variables      Manage variables

    Commands:
      cheat-sheet    Display cheat sheet
      dag-processor  Start a standalone Dag Processor instance
      info           Show information about current Airflow and environment
      kerberos       Start a kerberos ticket renewer
      plugins        Dump information about loaded plugins
      rotate-fernet-key
                     Rotate encrypted connection credentials and variables
      scheduler      Start a scheduler instance
      standalone     Run an all-in-one copy of Airflow
      sync-perm      Update permissions for existing roles and optionally DAGs
      triggerer      Start a triggerer instance
      version        Show the version
      webserver      Start a Airflow webserver instance

optional arguments:
  -h, --help         show this help message and exit

airflow command error: argument GROUP_OR_COMMAND: invalid choice: 'task' (choose from 'celery', 'cheat-sheet', 'config', 'connections', 'dag-processor', 'dags', 'db', 'info', 'jobs', 'kerberos', 'kubernetes', 'plugins', 'pools', 'providers', 'roles', 'rotate-fernet-key', 'scheduler', 'standalone', 'sync-perm', 'tasks', 'triggerer', 'users', 'variables', 'version', 'webserver'), see help above.
theia@theiadocker-nyakudyamufa:/home/project$ airflow unpause tutorial
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The sql_alchemy_conn option in [core] has been moved to the sql_alchemy_conn option in [database] - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The auth_backend option in [api] has been renamed to auth_backends - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:360: FutureWarning: The auth_backends setting in [api] has had airflow.api.auth.backend.session added in the running config, which is needed by the UI. Please update your config before Apache Airflow 3.0.
  FutureWarning,
usage: airflow [-h] GROUP_OR_COMMAND ...

positional arguments:
  GROUP_OR_COMMAND

    Groups:
      celery         Celery components
      config         View configuration
      connections    Manage connections
      dags           Manage DAGs
      db             Database operations
      jobs           Manage jobs
      kubernetes     Tools to help run the KubernetesExecutor
      pools          Manage pools
      providers      Display providers
      roles          Manage roles
      tasks          Manage tasks
      users          Manage users
      variables      Manage variables

    Commands:
      cheat-sheet    Display cheat sheet
      dag-processor  Start a standalone Dag Processor instance
      info           Show information about current Airflow and environment
      kerberos       Start a kerberos ticket renewer
      plugins        Dump information about loaded plugins
      rotate-fernet-key
                     Rotate encrypted connection credentials and variables
      scheduler      Start a scheduler instance
      standalone     Run an all-in-one copy of Airflow
      sync-perm      Update permissions for existing roles and optionally DAGs
      triggerer      Start a triggerer instance
      version        Show the version
      webserver      Start a Airflow webserver instance

optional arguments:
  -h, --help         show this help message and exit

airflow command error: argument GROUP_OR_COMMAND: `airflow unpause` command, has been removed, please use `airflow dags unpause`, see help above.
theia@theiadocker-nyakudyamufa:/home/project$ airflow dags unpause tutorial
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The sql_alchemy_conn option in [core] has been moved to the sql_alchemy_conn option in [database] - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The auth_backend option in [api] has been renamed to auth_backends - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:360: FutureWarning: The auth_backends setting in [api] has had airflow.api.auth.backend.session added in the running config, which is needed by the UI. Please update your config before Apache Airflow 3.0.
  FutureWarning,
Dag: tutorial, paused: False
theia@theiadocker-nyakudyamufa:/home/project$ airflow dags pause example_bash_operator
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The sql_alchemy_conn option in [core] has been moved to the sql_alchemy_conn option in [database] - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The auth_backend option in [api] has been renamed to auth_backends - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:360: FutureWarning: The auth_backends setting in [api] has had airflow.api.auth.backend.session added in the running config, which is needed by the UI. Please update your config before Apache Airflow 3.0.
  FutureWarning,
Dag: example_bash_operator, paused: True
theia@theiadocker-nyakudyamufa:/home/project$ airflow task list example_branch_labels/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The sql_alchemy_conn option in [core] has been moved to the sql_alchemy_conn option in [database] - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The auth_backend option in [api] has been renamed to auth_backends - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:360: FutureWarning: The auth_backends setting in [api] has had airflow.api.auth.backend.session added in the running config, which is needed by the UI. Please update your config before Apache Airflow 3.0.
  FutureWarning,
usage: airflow [-h] GROUP_OR_COMMAND ...

positional arguments:
  GROUP_OR_COMMAND

    Groups:
      celery         Celery components
      config         View configuration
      connections    Manage connections
      dags           Manage DAGs
      db             Database operations
      jobs           Manage jobs
      kubernetes     Tools to help run the KubernetesExecutor
      pools          Manage pools
      providers      Display providers
      roles          Manage roles
      tasks          Manage tasks
      users          Manage users
      variables      Manage variables

    Commands:
      cheat-sheet    Display cheat sheet
      dag-processor  Start a standalone Dag Processor instance
      info           Show information about current Airflow and environment
      kerberos       Start a kerberos ticket renewer
      plugins        Dump information about loaded plugins
      rotate-fernet-key
                     Rotate encrypted connection credentials and variables
      scheduler      Start a scheduler instance
      standalone     Run an all-in-one copy of Airflow
      sync-perm      Update permissions for existing roles and optionally DAGs
      triggerer      Start a triggerer instance
      version        Show the version
      webserver      Start a Airflow webserver instance

optional arguments:
  -h, --help         show this help message and exit

airflow command error: argument GROUP_OR_COMMAND: invalid choice: 'task' (choose from 'celery', 'cheat-sheet', 'config', 'connections', 'dag-processor', 'dags', 'db', 'info', 'jobs', 'kerberos', 'kubernetes', 'plugins', 'pools', 'providers', 'roles', 'rotate-fernet-key', 'scheduler', 'standalone', 'sync-perm', 'tasks', 'triggerer', 'users', 'variables', 'version', 'webserver'), see help above.
theia@theiadocker-nyakudyamufa:/home/project$ airflow dags unpause example_branch_labels
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The sql_alchemy_conn option in [core] has been moved to the sql_alchemy_conn option in [database] - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The auth_backend option in [api] has been renamed to auth_backends - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:360: FutureWarning: The auth_backends setting in [api] has had airflow.api.auth.backend.session added in the running config, which is needed by the UI. Please update your config before Apache Airflow 3.0.
  FutureWarning,
Dag: example_branch_labels, paused: False
theia@theiadocker-nyakudyamufa:/home/project$ airflow dags pause example_branch_labels
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The sql_alchemy_conn option in [core] has been moved to the sql_alchemy_conn option in [database] - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:528: DeprecationWarning: The auth_backend option in [api] has been renamed to auth_backends - the old setting has been used, but please update your config.
  option = self._get_environment_variables(deprecated_key, deprecated_section, key, section)
/home/airflow/.local/lib/python3.7/site-packages/airflow/configuration.py:360: FutureWarning: The auth_backends setting in [api] has had airflow.api.auth.backend.session added in the running config, which is needed by the UI. Please update your config before Apache Airflow 3.0.
  FutureWarning,
Dag: example_branch_labels, paused: True
theia@theiadocker-nyakudyamufa:/home/project$ 