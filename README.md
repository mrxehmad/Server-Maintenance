# Debian Server Weekly Maintenance Script

This repository contains a shell script to perform weekly maintenance tasks on a Debian server. The script clears various caches, removes unused Docker data, cleans the APT cache, and performs other housekeeping tasks to ensure optimal server performance.

## Features

- Clear PageCache, dentries, and inodes
- Remove unused Docker images, containers, volumes, and networks
- Clean APT cache and remove unnecessary packages
- Clear systemd journal logs older than 7 days
- Clear temporary files in `/tmp` and `/var/tmp`

## Usage

### Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/mrxehmad/Server-Maintenance.git
   cd Server-Maintenance
   ```

2. **Copy the script to `/usr/local/bin`:**
   ```bash
   sudo cp weekly_maintenance.sh /usr/local/bin/
   ```

3. **Make the script executable:**
   ```bash
   sudo chmod +x /usr/local/bin/weekly_maintenance.sh
   ```

4. **Set up the cron job:**
   ```bash
   sudo crontab -e
   ```

   Add the following line to the crontab file to run the script every Sunday at 2 AM:
   ```bash
   0 2 * * 0 /usr/local/bin/weekly_maintenance.sh > /var/log/weekly_maintenance.log 2>&1
   ```


### Verify Cron Job

To verify that the cron job is set up correctly, you can list the current cron jobs:

```bash
sudo crontab -l
```

### Manual Execution

You can manually run the script to test it:

```bash
sudo /usr/local/bin/weekly_maintenance.sh
```

### Logging

The cron job redirects both stdout and stderr to a log file (`/var/log/weekly_maintenance.log`). Check this file to see the output of the script and troubleshoot any issues.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes or improvements.

## Author

[mrxehmad](https://github.com/mrxehmad)
