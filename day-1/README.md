# Day 1: Creating a Non-Interactive Login User

## Overview
Day 1 of the 100 Days of DevOps challenge focuses on Linux user management, specifically creating users that cannot log in interactively. This is a fundamental DevOps skill as many system services and applications require dedicated users that run background processes without shell access.

## Task Description
Create a script that adds a user account designed for running background services or automated tasks. The user should:
- Have no interactive login capability
- Be configured with appropriate system settings for service accounts
- Include proper error handling and user feedback

## Script Details

### `create-no-interactive-login-user.sh`
This script creates a user named "james" with the following characteristics:

**Key Features:**
- **No shell access**: Uses `/sbin/nologin` as the shell to prevent interactive login
- **No home directory**: The `-M` flag prevents creation of a home directory
- **Service account purpose**: Configured with a comment indicating its use for database backup agents
- **Error handling**: Includes proper exit codes and user feedback

**Script Parameters:**
- `-s /sbin/nologin`: Sets the shell to nologin, preventing interactive sessions
- `-c "Run database backup agents"`: Adds a descriptive comment to the user account
- `-M`: Prevents creation of a home directory
- `james`: The username to be created

## Usage

### Prerequisites
- Root or sudo privileges required
- Linux system with `useradd` command available

### Running the Script

1. **Make the script executable:**
   ```bash
   chmod +x create-no-interactive-login-user.sh
   ```

2. **Run with root privileges:**
   ```bash
   sudo ./create-no-interactive-login-user.sh
   ```

### Expected Output
- **Success**: "User 'james' created successfully with no interactive login."
- **Failure**: "Failed to create user 'james'." (with exit code 1)

## Verification

After running the script, you can verify the user was created correctly:

```bash
# Check if user exists
id james

# Verify the shell is set to nologin
grep james /etc/passwd

# Attempt to login (should be denied)
su - james
```

## Use Cases

Non-interactive users are commonly used for:
- **Database services**: Running MySQL, PostgreSQL, or other database daemons
- **Web servers**: Running Apache, Nginx, or application servers
- **Backup services**: Automated backup agents and scripts
- **Monitoring tools**: System monitoring and alerting services
- **CI/CD agents**: Build and deployment automation

## Security Benefits

1. **Principle of Least Privilege**: Service accounts have minimal permissions
2. **Attack Surface Reduction**: No shell access prevents interactive exploitation
3. **Process Isolation**: Services run under dedicated user contexts
4. **Audit Trail**: Process ownership is clearly identifiable

## Learning Objectives

By completing this task, you will understand:
- Linux user management fundamentals
- Service account best practices
- Shell scripting with error handling
- Security principles in user account creation

## Next Steps

- Explore user group management
- Learn about sudo configuration for service accounts
- Investigate systemd service creation with dedicated users
- Study file permissions and ownership for service accounts

---

**Author**: Yahaya Azeez  
**Date**: August 5, 2025  
**Challenge**: 100 Days of DevOps - KodeKloud