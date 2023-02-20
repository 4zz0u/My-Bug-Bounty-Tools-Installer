
echo "Starting deep enumeration...\n"

for subdomain in $(cat deephosts)
do
   echo "Preparing dns list on $subdomain...\n"
   awk -v host=$subdomain '{print $0"."host}' ../mydnslist > deep_massdnslist
done

echo "------------------------ Subdomains found... -----------------------------\n"
massdns deep_massdnslist -r ../resolvers.txt -o S -t A -q | awk -F ". " '{print $1}' | sort -u | anew deep_subdomains
