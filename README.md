### 📌 **Pasos para agregar el README**  
1. En la terminal dentro de tu directorio del proyecto, ejecuta:  
   ```sh
   touch README.md
   ```
2. Abre el archivo con un editor de texto o ejecuta:  
   ```sh
   nano README.md
   ```
3. Copia y pega el siguiente contenido:  

---

## 🚀 Implementación de una Máquina Virtual en GCP con Terraform  

### 📌 Descripción  
Este proyecto automatiza la creación de una máquina virtual en **Google Cloud Platform (GCP)** utilizando **Terraform**. Se configura una instancia en **Compute Engine** con las mejores prácticas para entornos en la nube.

### 🔧 **Servicios Utilizados**
| Servicio en GCP | Equivalente en AWS | Descripción |
|----------------|------------------|-------------|
| Compute Engine | EC2 | Máquina virtual escalable |
| VPC | VPC | Red virtual para la VM |
| Subnet | Subnet | Subred dentro de la VPC |
| Firewall Rules | Security Groups | Reglas de acceso a la VM |

### 🛠 **Requisitos**
Antes de desplegar la infraestructura, asegúrate de tener instalado:  
- [Terraform](https://developer.hashicorp.com/terraform/downloads)  
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)  
- Cuenta con permisos en GCP para crear recursos  

### 🚀 **Despliegue**
1. **Autenticarse en GCP**  
   ```sh
   gcloud auth application-default login
   ```
2. **Inicializar Terraform**  
   ```sh
   terraform init
   ```
3. **Previsualizar cambios**  
   ```sh
   terraform plan
   ```
4. **Aplicar configuración**  
   ```sh
   terraform apply -auto-approve
   ```
5. **Acceder a la VM vía SSH**  
   ```sh
   gcloud compute ssh <nombre-de-tu-vm> --zone=<zona>
   ```

### 🧹 **Eliminar Recursos**  
Para evitar costos innecesarios, destruye la infraestructura cuando no la necesites:  
```sh
terraform destroy -auto-approve
```

### 📄 **Estructura del Proyecto**
```
📂 gcp-vm-terraform
 ├── 📄 main.tf  # Configuración principal de Terraform
 ├── 📄 variables.tf  # Variables reutilizables
 ├── 📄 outputs.tf  # Valores de salida de la infraestructura
 ├── 📄 .gitignore  # Archivos ignorados en el repositorio
 ├── 📄 README.md  # Documentación del proyecto
```

### 📬 **Contacto**
Si tienes dudas o sugerencias, contáctame en [LinkedIn] https://www.linkedin.com/in/k3nhz/. 🚀

---

4. Guarda y cierra el archivo (`CTRL + X`, luego `Y` y `Enter` si usaste `nano`).

5. **Sube los cambios a GitHub**  
   ```sh
   git add README.md
   git commit -m "Agregando documentación del proyecto"
   git push origin main
   ```
