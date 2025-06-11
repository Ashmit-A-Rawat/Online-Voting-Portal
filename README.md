# 🗳️ E-Voting Portal

A secure and user-friendly **Java-based E-Voting System** built as a **SE Mini Project(SEM 3)** for the Bachelor of Engineering (Information Technology) degree at **Thadomal Shahani Engineering College**.

This project simulates real-world electronic voting scenarios using **Java Swing**, **AWT**, and **MySQL**, offering enhanced accessibility, security, and transparency.

---

## 🚀 Key Features

### 🔐 Secure Login System
- Role-based login: **Voter**, **Admin**, and **Super Admin**
- CAPTCHA validation to prevent bots
- Multi-factor-like authentication with security questions

### 🧑‍⚖️ Admin Role
- Monitor live voting progress
- Terminate/Hold elections
- View and download voter lists

### 🗳️ Voting Interface
- Timer-based voting process
- Vote confirmation
- Clean and intuitive GUI
- Post-vote feedback form

### 📊 Results and Transparency
- Automatic vote tallying
- Graphical (pie/bar charts) & statistical result display
- Immutable result storage

### 🏛️ Super Admin Controls
- Officially declare results
- Full system access for audit and closure

---

## 🏗️ Architecture

- **Frontend/UI:** Java Swing & AWT
- **Backend Logic:** Java
- **Database:** MySQL

The system follows a **3-tier architecture**:
1. **Presentation Layer:** GUI interfaces for all roles
2. **Business Logic Layer:** Voting logic, validations, and flow
3. **Data Layer:** MySQL database for users, votes, results

---

## 🔄 User Flow

1. **Login**
   - Enter credentials and CAPTCHA
2. **Vote**
   - Cast vote with confirmation
3. **Admin Monitoring**
   - Live stats, controls, user tracking
4. **Feedback**
   - Post-voting feedback collection
5. **Result**
   - Displayed graphically and statistically after voting ends

---

## 🧪 Technologies Used

| Component       | Technology         |
|----------------|--------------------|
| Frontend        | Java Swing, AWT    |
| Backend Logic   | Java               |
| Database        | MySQL              |
| Reporting       | Charts & stats via Java UI elements |
| Security        | CAPTCHA, Encryption logic, Session handling |

---

📄 _The full mini project report is also available in this repository as_ **`evotingjava.pdf`**.
