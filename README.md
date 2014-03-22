rsyslog Cookbook
================
This cookbook sets your rsyslog to forward logs to another rsyslog server that's listening on port 514. This is one of my first recipes so it's a bit rough.

Requirements
------------
Tested on:
  RHEL 6 / CentOS 6

e.g.
#### packages
- `rsyslog` - Default CentOS 6 logger  

Attributes
----------

#### rsyslog::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['rsyslog']['ipaddress']</tt></td>
    <td>string</td>
    <td>This is the IP address for the listening server</td>
    <td><tt>10.13.37.23</tt></td>
  </tr>
  <tr>
    <td><tt>['rsyslog']['config']</tt></td>
    <td>string</td>
    <td>This is where rsyslog.conf is located</td>
    <td><tt>/etc/rsyslog.conf</tt></td>
  </tr>
  <tr>
    <td><tt>['rsyslog']['service']</tt></td>
    <td>string</td>
    <td>rsyslog is the service</td>
    <td><tt>rsyslog</tt></td>
  </tr>
</table>

Usage
-----
#### rsyslog::default

Just include `rsyslog` in your node's `run_list`:

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Andrew Raymer 
