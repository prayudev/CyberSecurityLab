# 🔐 John The Ripper ZIP Password Auditing Lab

A practical cybersecurity lab performed on Kali Linux using <a href="https://www.openwall.com/john/" target="_blank">John the Ripper</a> to audit the strength of a password-protected ZIP file in a safe and authorized environment.

---

# 📌 Aim

To test and demonstrate how weak passwords in ZIP files can be identified using dictionary-based password auditing techniques.

---

# 🛠 Tools Used

- Kali Linux
- John the Ripper
- zip2john
- rockyou.txt wordlist
- ZIP Utility

---

# 📂 Project Structure

```bash
john-the-ripper-lab/
│
├── john_lab.sh
├── README.md
├── screenshots/
│   └── output.png
└── zip_hash.txt
```

---

# ⚡ Features

✅ Create password-protected ZIP files  
✅ Extract ZIP password hashes  
✅ Perform dictionary-based password auditing  
✅ Demonstrate weak password risks  
✅ Learn basic password security concepts  

---

# 🧠 Theory

John the Ripper is an open-source password auditing and recovery tool widely used in cybersecurity and penetration testing.

It works by:
- Extracting password hashes
- Comparing them against wordlists
- Identifying weak or commonly used passwords

This lab demonstrates why weak passwords like:

```text
123456
password
admin123
qwerty
```

are highly insecure.

---

# 🚀 Lab Procedure

## 1️⃣ Create Test File

```bash
echo "This is my test file" > test.txt
```

---

## 2️⃣ Create Password-Protected ZIP

```bash
zip -e secret.zip test.txt
```

---

## 3️⃣ Verify ZIP Protection

```bash
unzip secret.zip
```

---

## 4️⃣ Extract rockyou Wordlist

```bash
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz
```

---

## 5️⃣ Extract ZIP Hash

```bash
zip2john secret.zip > zip_hash.txt
```

---

## 6️⃣ View Extracted Hash

```bash
cat zip_hash.txt
```

---

## 7️⃣ Run John the Ripper

```bash
john --wordlist=/usr/share/wordlists/rockyou.txt zip_hash.txt
```

---

## 8️⃣ Show Cracked Password

```bash
john --show zip_hash.txt
```

---

# 📸 Output Screenshots

## Terminal Output

Add your screenshots inside:

```text
screenshots/
```

Example:

```md
![Output](screenshots/output.png)
```

---

# 🔍 Sample Output

```text
123456 (secret.zip)
1 password hash cracked
```

---

# 📖 Learning Outcomes

After completing this lab, I learned:

- Basic password auditing
- ZIP hash extraction
- Dictionary attack concepts
- Weak password risks
- John the Ripper basics
- Linux command-line workflow

---

# ⚠ Disclaimer

This project was performed only in a safe lab environment on personally created files for educational and ethical learning purposes.

Do not use these techniques on systems or files without proper authorization.

---

# 👨‍💻 Author

Ravi Raj

Cybersecurity Enthusiast | Ethical Hacking Learner | B.Tech CSE Student

---

# ⭐ Support

If you found this project useful, consider giving it a ⭐ on GitHub.
