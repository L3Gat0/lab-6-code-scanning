# Answers to Part 3

Add your answers to the questions in Part 3, Step 2 below. 

## Vulernability Remediation:
### Vulnerability 1: 
1. Which package or library are you addressing?
 Certifi
2. Which CVE is linked to this vulnerability?
CVE-2023-37920
3. What remediation steps do you suggest?
Update the Certifi library to a patched version to remove any untrusted certificate authorities. This hits close to home as I manage Certificates at work and this would be a critical vulnerability in our infrastructure. 

### Vulnerability 2:
1. Which vulnerability are you addressing?
Pillow
2. Which CVE is linked to this vulnerability?
CVE-2023-44271
3. What remediation steps do you suggest? 

The results show "An issue was discovered in Pillow before 10.0.0."

I would suggest upgrading pillow to v10.0.0 or higher to prevent any denial-of-service attacks due to memory leaks. 

Run pip install --upgrade pillow