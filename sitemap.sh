find */ -type f | grep -oP '^[^.]+(?=(\.md)?$)' | sed 's/^/https:\/\/moixllik.com\//' > sitemap.txt