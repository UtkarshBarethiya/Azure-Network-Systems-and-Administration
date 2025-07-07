# Azure Docker Deployment with Terraform & GitHub Actions 🚀

This project automates the deployment of a Dockerized application on an Azure Virtual Machine using **Terraform**, **GitHub Actions**, and **Azure CLI**.

---

## 📦 Project Structure

```
project-root/
│
├── app/                        # Flask/Docker app
│   ├── app.py
│   ├── Dockerfile
│   ├── requirements.txt
│   └── templates/
│       └── index.html
│
├── azure-docker-deploy/       # Terraform configuration files
│   ├── main.tf
│   ├── outputs.tf
│   ├── variables.tf
│   └── ...
│
└── .github/
    └── workflows/
        └── terraform-deploy.yml
```

---

## ⚙️ Tools Used

- **Terraform** – Infrastructure as Code (IaC)
- **Docker** – Containerized app deployment
- **Azure** – Cloud infrastructure (VM, Network, etc.)
- **GitHub Actions** – CI/CD pipeline
- **Flask** – Lightweight Python web framework

---

## 🚀 Deployment Flow

1. **Code push to GitHub** on the `main` branch.
2. GitHub Actions runs:
   - Terraform Init
   - Terraform Apply
3. Azure VM is provisioned.
4. Docker container with your app is deployed.
5. Public IP is outputted → You can access the app in the browser.

---

## 🔐 Required GitHub Secrets

Ensure the following secrets are added in your GitHub repo under\
**Settings → Secrets → Actions**:

- `ARM_CLIENT_ID`
- `ARM_CLIENT_SECRET`
- `ARM_SUBSCRIPTION_ID`
- `ARM_TENANT_ID`
- `SSH_PUBLIC_KEY` *(Public key used for VM access)*
- `ADMIN_USERNAME` *(e.g., azureuser)*

---

## 📅 Setup Instructions

### 1. Clone this Repo

```bash
git clone https://github.com/<your-username>/Azure-Network-Systems-and-Administration.git
```

### 2. Replace or Update App

Modify the Flask app inside the `/app` folder as needed.

### 3. Push Changes to Trigger Workflow

```bash
git add .
git commit -m "Deploy update"
git push origin main
```

---

## 📌 Notes

- Ensure your Terraform files do not include large binaries (e.g., `.exe`) in the repo.
- Use `.gitignore` to exclude `.terraform/`, `.terraform.lock.hcl`, and other local state files.
- Use SSH keys for authentication – no passwords.

---

## 📸 Output Example

After deployment, access the app via the VM's public IP, e.g.:

```
http://52.147.201.2
```

---

## 🤝 Contributing

Pull requests are welcome! Feel free to fork this project and contribute.

---

## 📄 License

MIT License © [Utkarsh Barethiya]
