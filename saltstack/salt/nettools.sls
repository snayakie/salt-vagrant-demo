install_network_packages:
  pkg.installed:
    - pkgs:
      - rsync
      - lftp
      - curl
      
update_lftp_conf:
  file.append:
    - name: /etc/lftp.conf
    - text: set net:limit-rate 100000:500000