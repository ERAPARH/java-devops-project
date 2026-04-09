 Java DevOps Project (End-to-End Deployment)

 Project Overview

This project demonstrates a complete **end-to-end DevOps pipeline** where a Java Spring Boot application is built, containerized, and deployed on Kubernetes running on AWS EC2.


 Tech Stack Used

* Java (Spring Boot)
* Apache Maven
* Docker
* Docker Hub
* Kubernetes (Minikube)
* AWS EC2
* Git & GitHub



 Architectur

Developer → GitHub → Docker → Docker Hub → AWS EC2 → Minikube → Kubernetes Deployment → Service → Browser Access



##  Steps Performed

### 1️ Application Development

* Created a Spring Boot REST API
* Endpoints:

  * `/hello`
  * `/health`



### 2️ Build Application

```bash
mvn clean package
```

---

### 3️ Dockerize Application

* Created Dockerfile
* Built image:

```bash
docker build -t java-devops-app .
```

---

### 4️ Push Image to Docker Hub

```bash
docker tag java-devops-app eraparh/java-devops-app
docker push eraparh/java-devops-app
```

---

### 5️ AWS EC2 Setup

* Launched Ubuntu EC2 instance
* Installed Docker, Minikube, kubectl

---

### 6️ Kubernetes Deployment

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

---

### 7️ Expose Application

```bash
kubectl port-forward --address 0.0.0.0 service/java-service 8080:80
```

---

##  Access Application


http://13.63.49.104:8080/hello


---

## Key Learnings

* Docker image vs container
* Kubernetes deployment and services
* NodePort vs Port Forwarding
* Cloud deployment on AWS EC2
* Troubleshooting real-world issues

---

##  Challenges Faced

* ImagePullBackOff error (fixed by using Docker Hub image)
* Minikube networking issue
* EC2 memory limitation
* Port accessibility (resolved via port-forward)

---

##  Future Improvements

* CI/CD using GitHub Actions
* Infrastructure automation using Terraform
* Deployment on AWS EKS
* Monitoring using Prometheus & Grafana

---

##  Conclusion

This project helped in understanding real-world DevOps workflow from development to deployment on cloud infrastructure.

---

##  Author

Hariom Parmar**

---

🔥 *This project represents a real-world DevOps implementation and hands-on learning experience.*

