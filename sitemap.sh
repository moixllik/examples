find */ -maxdepth 2 -type f | grep -oP '^[^.]+(?=(\.md)?$)' | sed 's/^/https:\/\/examples.moixllik.com\//' > sitemap.txt