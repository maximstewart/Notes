#!/usr/bin/python

# Python imports
import ssl
import socket
import argparse

# Lib imports

# Application imports



def parse_args():
  parser = argparse.ArgumentParser()

  parser.add_argument("-f", "--file",            help = "Specify input file with a list of hostnames to be checked", action = "store")
  parser.add_argument("-o", "--out",             help = "Specify output file",                                       action = "store")
  parser.add_argument("-d", "--domain",          help = "Specify domain name of host to be checked",                 action = "store")

  args = parser.parse_args()

  if (not args.domain and not args.file) or (args.domain and args.file):
      print("\nEither a single site's domain or a file containing sites must be used as input\n")
      parser.print_help()
      quit()

  return args


def process_ssl(host, args):
    hostname = host.strip()
    context  = ssl.create_default_context()

    with context.wrap_socket(socket.socket(), server_hostname = hostname) as sock:
        sock.settimeout(4)
        sock.connect((hostname, 443))
        ciphers         = sock.shared_ciphers()
        selected_cipher = sock.cipher()
        cert            = sock.getpeercert()
    
    subject    = dict(_[0] for _ in cert['subject'])
    issuer     = dict(_[0] for _ in cert['issuer'])
    issued_to  = subject['commonName']
    issued_by  = issuer['commonName']
    not_before = cert['notBefore']
    not_after  = cert['notAfter']

    data       = {
        "host": hostname,
        "issuer": {
            "org_name": issuer['organizationName'],
            "issued_by": issued_by
        },
        "subject": subject,
        "activation": not_before,
        "expiration": not_after,
        "common_name": issued_to,
        "selected_cipher": selected_cipher,
        "server_ciphers": str(ciphers)
    }
    
    print(data)

    if args.out:
        with open(args.out, "w+") as file:
            file.write(data)


def main():
    args = parse_args()

    if args.file:
        with open(args.file, "r") as file:
            hosts = file.readlines() 

            for host in hosts:
                try:
                    process_ssl(host, args)
                except Exception: 
                    continue
    elif args.domain:
        process_ssl(args.domain, args)
    else:
        print("No input detected")


if __name__ == "__main__":
    main()