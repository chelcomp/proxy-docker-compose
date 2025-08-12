# 🐳 Docker-Based Reverse Proxy with Nginx Proxy Manager and Cloudflare Tunnel

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A robust and secure reverse proxy setup using Docker, featuring the powerful **Nginx Proxy Manager** for easy management of proxy hosts and SSL certificates, and **Cloudflare Tunnel** for securely exposing your local services to the internet without opening ports.

---

## ✨ Features

- **Easy Management**: Utilizes Nginx Proxy Manager for a user-friendly web interface to manage proxy hosts, redirection, and SSL certificates.
- **Secure Tunneling**: Integrates Cloudflare Tunnel to create a secure outbound connection to the Cloudflare network, protecting your server from direct attacks.
- **Automated SSL**: Nginx Proxy Manager handles the creation and renewal of Let's Encrypt SSL certificates automatically.
- **Containerized**: Fully containerized with Docker Compose for easy deployment and management.
- **Customizable**: Easily extendable to include more services.

---

## 🚀 Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- A [Cloudflare](https://www.cloudflare.com/) account and a registered domain.

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/chelcomp/proxy-docker-compose.git
    cd proxy-docker-compose
    ```

2.  **Create your environment file:**
    Copy the template to a new `.env` file:
    ```bash
    cp .env.template .env
    ```
    Now, edit the `.env` file with your favorite editor and add your credentials.

3.  **Start the services:**
    Use the provided script to start the containers in detached mode:
    ```bash
    ./start.sh
    ```

---

## ⚙️ Configuration

### Environment Variables

The following environment variables need to be set in the `.env` file:

| Variable          | Description                                                                                             |
| ----------------- | ------------------------------------------------------------------------------------------------------- |
| `TUNNEL_TOKEN`    | Your Cloudflare Tunnel token. You can get this from your Cloudflare dashboard when creating a new tunnel. |

### Nginx Proxy Manager

-   **Access**: `http://<your-server-ip>:81`
-   **Default User**: `admin@example.com`
-   **Default Password**: `changeme`

Log in and change the default credentials immediately. You can then start adding your proxy hosts and configuring SSL certificates.

---

## 🛠️ Services Used

This setup is composed of two main services:

| Service              | Docker Image                                                                    | Description                                                                                                                            |
| -------------------- | ------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| **Nginx Proxy Manager** | [`jc21/nginx-proxy-manager:latest`](https://hub.docker.com/r/jc21/nginx-proxy-manager) | A user-friendly interface for managing Nginx proxy hosts with a focus on simplicity and ease of use.                                   |
| **Cloudflare Tunnel**   | [`cloudflare/cloudflared:latest`](https://hub.docker.com/r/cloudflare/cloudflared)         | Creates a secure, outbound-only connection to the Cloudflare network, allowing you to expose local services without opening firewall ports. |

---

## 📜 Scripts

-   `start.sh`: Starts the Docker containers in detached mode.
-   `stop.sh`: Stops the Docker containers.
-   `restart.sh`: Restarts the Docker containers.
-   `logs.sh`: Shows the logs of the containers.

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/chelcomp/proxy-docker-compose/issues).

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
