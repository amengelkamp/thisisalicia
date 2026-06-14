# thisisalicia.de

Static portfolio site served by Caddy from `/srv/www/alicia` on `thisisalicia.de`.

## Deploying

```bash
./deploy-website.sh
```

Rsyncs local files to `alicia@thisisalicia.de:/srv/www/alicia`. Excludes `drafts/`, `*.md`, `.gitignore`, and the script itself. Use `--dry-run` to preview before deploying.
