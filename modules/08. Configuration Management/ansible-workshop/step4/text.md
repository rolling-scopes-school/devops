## Apache Role

Lets create the `Apache role`{{}}. 

This role will have a different structure:

```yaml
roles/
├── apache/
│   ├── tasks/
│   │   └── main.yaml
│   ├── templates/
│   │   └── apache.conf.j2
│   └── handlers/
│       └── main.yaml
└── ...
```

In this case, we have introduced two new folders, `templates`{{}} and `handlers`{{}}.

### Template Folder

Is used to store `Jinja2`{{}} templates that are used to dynamically generate configuration files or text files based on variables and data provided in the Ansible playbook or inventory. Templates are a powerful feature that allows you to create flexible and customizable configurations for different environments or hosts.

When you use a template in your Ansible role, you can leverage Jinja2 templating syntax to insert variable values, conditional statements, and loops into the resulting configuration file. This approach makes it easier to manage complex configurations, especially when different hosts require slightly different settings.


In this template we use 2 variables: 
- `{{ http_port }}`{{}}
- `{{ http_host }}`{{}}

***NOTE***: These variables are going to be defined later

```sh
cd /root/ansible-workshop/roles/apache/templates/
nano apache.conf.j2
```{{exec}}

```jinja
<VirtualHost *:{{ http_port }}>
    ServerAdmin webmaster@localhost
    ServerName {{ http_host }}
    ServerAlias www.{{ http_host }}
    DocumentRoot /var/www/{{ http_host }}/wordpress
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined

    <Directory /var/www/{{ http_host }}>
          Options -Indexes
          AllowOverride All
    </Directory>

    <IfModule mod_dir.c>
        DirectoryIndex index.php index.html index.cgi index.pl  index.xhtml index.htm
    </IfModule>

</VirtualHost>

```{{copy}}

### Handlers Folder

Is used to store `handler`{{}} tasks. Handlers are special tasks in Ansible that are only executed if they are notified by other tasks in the role. When a task in the role triggers a notification, the corresponding handler task(s) will be run at the end of the role's execution.

Handlers are often used to restart services or perform other actions that require synchronization with other tasks in the role. For example, if you make changes to a configuration file using a template (as discussed above), you might want to notify a handler task to restart the associated service after the configuration file is updated.

We are going to use only 1 handler called `Restart Apache`{{}}.

```sh
cd /root/ansible-workshop/roles/apache/handlers/
nano main.yaml
```{{exec}}

```yaml
# /root/ansible-workshop/roles/apache/handlers/main.yaml
---
- name: Restart Apache
  service:
    name: apache2
    state: restarted

```{{copy}}


### Tasks Folder

Finally, we create the task file to configure Apache, use the Template and finally use notify parameter to invoke the handler. 

```sh
cd /root/ansible-workshop/roles/apache/tasks
nano main.yaml
```{{exec}}

```yaml
# /root/ansible-workshop/roles/apache/tasks/main.yaml
---
- name: Create document root
  file:
    path: "/var/www/{{ http_host }}"
    state: directory
    owner: "www-data"
    group: "www-data"
    mode: '0755'
  tags: web

- name: Set up Apache VirtualHost
  template:
    src: "templates/apache.conf.j2"
    dest: "/etc/apache2/sites-available/{{ http_conf }}"
  tags: web

- name: Enable rewrite module
  shell: /usr/sbin/a2enmod rewrite
  tags: web

- name: Enable new site
  shell: /usr/sbin/a2ensite {{ http_conf }}
  tags: web

- name: Disable default Apache site
  shell: /usr/sbin/a2dissite 000-default.conf
  notify: Restart Apache
  tags: web

```{{copy}}


## MySQL Role
This role is less complex than the Apache role, but it has more tasks. 

```yaml
roles/
└── mysql/
    └── tasks/
        └── main.yaml
```

We will use different modules to configure a MySQL server to be used for WordPress.

```sh
cd /root/ansible-workshop/roles/mysql/tasks
nano main.yaml
```{{exec}}

```yaml
# /root/ansible-workshop/roles/mysql/tasks/main.yaml
---
- name: Start MySQL service
  shell: service mysql start

- name: Set the root password
  mysql_user:
    name: root
    password: "{{ mysql_root_password }}"
    login_unix_socket: /var/run/mysqld/mysqld.sock
  tags: db

- name: Remove all anonymous user accounts
  mysql_user:
    name: ''
    host_all: yes
    state: absent
    login_user: root
    login_password: "{{ mysql_root_password }}"
  tags: db

- name: Remove the MySQL test database
  mysql_db:
    name: test
    state: absent
    login_user: root
    login_password: "{{ mysql_root_password }}"
  tags: db

- name: Creates database for WordPress
  mysql_db:
    name: "{{ mysql_db }}"
    state: present
    login_user: root
    login_password: "{{ mysql_root_password }}"
  tags: db

- name: Create MySQL user for WordPress
  mysql_user:
    name: "{{ mysql_user }}"
    password: "{{ mysql_password }}"
    priv: "{{ mysql_db }}.*:ALL"
    state: present
    login_user: root
    login_password: "{{ mysql_root_password }}"
    priv: '*.*:ALL'
    host: '%'
  tags: db

- name: Enable remote login to mysql
  lineinfile:
    path: /etc/mysql/mysql.conf.d/mysqld.cnf
    regexp: '^bind-address'
    line: 'bind-address = 0.0.0.0'
    backup: yes

- name: Restart mysql
  shell: service mysql restart

```{{copy}}


## Wordpress Role

Let's create the `Wordpress role`{{}}. As you can see, we have a template here:

```yaml
roles/
└── wordpress/
    ├── tasks/
    │   └── main.yaml
    └── templates/
        └── wp-config.php.j2
```

Let's start with the task

```sh
cd /root/ansible-workshop/roles/wordpress/tasks
nano main.yaml
```{{exec}}

```yaml
# /root/ansible-workshop/roles/wordpress/tasks/main.yaml
---
- name: Download and unpack latest WordPress
  unarchive:
    src: https://wordpress.org/latest.tar.gz
    dest: "/var/www/{{ http_host }}"
    remote_src: yes
    creates: "/var/www/{{ http_host }}/wordpress"
  tags: [ wordpress ]

- name: Set ownership
  file:
    path: "/var/www/{{ http_host }}"
    state: directory
    recurse: yes
    owner: www-data
    group: www-data
  tags: [ wordpress ]

- name: Set permissions for directories
  shell: "/usr/bin/find /var/www/{{ http_host }}/wordpress/ -type d -exec chmod 750 {} \\;"
  tags: [ wordpress ]

- name: Set permissions for files
  shell: "/usr/bin/find /var/www/{{ http_host }}/wordpress/ -type f -exec chmod 640 {} \\;"
  tags: [ wordpress ]

- name: Set up wp-config
  template:
    src: "templates/wp-config.php.j2"
    dest: "/var/www/{{ http_host }}/wordpress/wp-config.php"
  tags: [ wordpress ]

```{{copy}}

Finally, the template

```sh
cd /root/ansible-workshop/roles/wordpress/templates/
nano wp-config.php.j2
```{{exec}}

```jinja
<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', '{{ mysql_db }}' );

/** MySQL database username */
define( 'DB_USER', '{{ mysql_user }}' );

/** MySQL database password */
define( 'DB_PASSWORD', '{{ mysql_password }}' );

/** MySQL hostname */
define( 'DB_HOST', '{{ mysql_host }}' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/** Filesystem access **/
define('FS_METHOD', 'direct');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '{{ lookup('password', '/dev/null chars=ascii_letters length=64') }}' );
define( 'SECURE_AUTH_KEY',  '{{ lookup('password', '/dev/null chars=ascii_letters length=64') }}' );
define( 'LOGGED_IN_KEY',    '{{ lookup('password', '/dev/null chars=ascii_letters length=64') }}' );
define( 'NONCE_KEY',        '{{ lookup('password', '/dev/null chars=ascii_letters length=64') }}' );
define( 'AUTH_SALT',        '{{ lookup('password', '/dev/null chars=ascii_letters length=64') }}' );
define( 'SECURE_AUTH_SALT', '{{ lookup('password', '/dev/null chars=ascii_letters length=64') }}' );
define( 'LOGGED_IN_SALT',   '{{ lookup('password', '/dev/null chars=ascii_letters length=64') }}' );
define( 'NONCE_SALT',       '{{ lookup('password', '/dev/null chars=ascii_letters length=64') }}' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );

```{{copy}}

