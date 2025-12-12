# Passive Reconnaissance Report — holbertonschool.com

This report documents the passive reconnaissance work performed on the domain **holbertonschool.com** using the Shodan platform and public DNS information.

---

## 1. Subdomain Enumeration

### Subdomain analyzed
- **www.holbertonschool.com**

### DNS Results (using `dig`)


### Observations
- The domain uses **Webflow** (CNAME).
- Several backend IPs are hosted on **Amazon AWS**, region **eu-south-1**.
- Multiple IPs resolve for load balancing.

---

## 2. Shodan Analysis Per IP

### 🔹 IP: 15.160.106.203
**Result:**  
Shodan returned **403 Forbidden** (feature restricted for free accounts).

This indicates the IP exists but cannot be analyzed with the free Shodan tier.

---

### 🔹 IP: 35.152.117.67

- **Hostnames:**  
  - ec2-35-152-117-67.eu-south-1.compute.amazonaws.com  
  - bramergroup.com
- **Location:** Milan, Italy  
- **Organization:** Amazon Data Services Italy  
- **Open Ports:** 80, 81, 443  
- **Web Server:** nginx  
- **SSL Certificate:** Let’s Encrypt  
- **Observed Technologies:**  
  - nginx reverse proxy  
- **Notes:** The HTTP titles and certificate CN relate to *bramergroup.com*, meaning AWS recycles shared IPs for multiple customers.

---

### 🔹 IP: 15.161.34.42

- **Hostnames:**  
  - tscottroofing.com  
  - ec2-15-161-34-42.eu-south-1.compute.amazonaws.com
- **Location:** Milan, Italy  
- **Organization:** Amazon Data Services Italy  
- **Open Ports:** 80, 81, 443  
- **Web Server:** nginx  
- **SSL Certificate:** Let’s Encrypt  
- **Observed Technologies:**  
  - nginx reverse proxy  
- **Notes:** Same AWS shared IP behavior as above.

---

## 3. IP Ranges (CIDR)
Shodan Free does not provide ASN or CIDR information for this domain.  
However, based on hostnames, the IPs belong to:

- **AWS eu-south-1 region**

---

## 4. Summary of Findings

- The domain *holbertonschool.com* uses **Webflow** hosting, as shown by the CNAME.
- Backend IPs are hosted on **Amazon AWS eu-south-1** (Milan).
- Technologies observed:
  - **nginx** as web server (shared reverse proxy)
  - **Let’s Encrypt SSL certificates**
  - **Webflow infrastructure**
- Some IPs cannot be analyzed due to Shodan Free restrictions (403 errors).
- Shared AWS IPs host unrelated websites, which is normal for cloud infrastructure.

---

## 5. Limitations

- The Shodan `domain` feature requires a paid membership.
- Some IPs do not expose information under the free tier.
- Only passive reconnaissance was performed — no intrusive scanning.

