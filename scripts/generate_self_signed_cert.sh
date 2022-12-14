#!/bin/bash
set -e
cd "${0%/*}/../data"

# Remove certificates
rm -rf "*.pem"

# Certificate configs
country="US"                   # Country Name (2 letter code)
state="MA"                     # State or Province Name (full name)
city="Waltham"                 # Locality Name (eg, city)
organization="zlargon"         # Organization Name (eg, company)
organization_unit="zlargon"    # Organizational Unit Name (eg, section)
domain_name="localhost"        # Common Name (eg, fully qualified host name)
email="zlargon1988@gmail.com"  # Email Address

# Generate self signed certificate
openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout key.pem -out cert.pem -days 3650 \
  -subj "/C=$country/ST=$state/L=$city/O=$organization/OU=$organization_unit/CN=$domain_name/emailAddress=$email"

echo "Server's signed certificate"
openssl x509 -in cert.pem -noout -text
