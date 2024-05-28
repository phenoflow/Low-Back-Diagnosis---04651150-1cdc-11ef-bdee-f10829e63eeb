# Romi Haas, Ljoudmila Busija, Alexandra Gorelik, Denise A O'Connor, Christopher Pierce, Danielle Mazza, Rochelle Buchbinder, 2024.

import sys, csv, re

codes = [{"code":"241577003.0","system":"snomedct"},{"code":"241580002.0","system":"snomedct"},{"code":"241645008.0","system":"snomedct"},{"code":"3418002.0","system":"snomedct"},{"code":"267982002.0","system":"snomedct"},{"code":"44275008.0","system":"snomedct"},{"code":"64217002.0","system":"snomedct"},{"code":"241648005.0","system":"snomedct"},{"code":"178771000.0","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('low-back-diagnosis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["low-back-diagnosis-spine---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["low-back-diagnosis-spine---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["low-back-diagnosis-spine---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)