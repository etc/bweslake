# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal academic website for Brad Weslake built with [Nesta CMS](https://nestacms.com/) (a Ruby/Sinatra-based CMS). Hosted on Railway at https://bweslake.org/.

## Commands

```bash
# Install dependencies
bundle install

# Run development server (default port 9292)
bundle exec puma

# Run on specific port
bundle exec puma -p 3000

# Production (Docker)
docker build -t bweslake . && docker run -p 80:80 bweslake
```

## Architecture

### Content Structure
- `content/pages/` - Markdown/HAML content files (teaching materials, CV, blog posts)
- `content/attachments/` - Static assets (PDFs, images)
- `content/menu.txt` - Navigation menu definition

### Theme System
- `themes/parallelist/` - Custom theme controlling visual style
- `themes/parallelist/views/` - HAML templates (layout.haml, page.haml, teaching.haml, cv.haml, etc.)
- `themes/parallelist/views/*.sass` - Stylesheets (master.sass imports others)
- `themes/parallelist/app.rb` - Theme configuration and Kramdown setup

### Key Files
- `config.ru` - Rack entry point with URL rewrites
- `config/config.yml` - Site configuration (title, theme, analytics)
- `Gemfile` - Dependencies (nesta from GitHub, kramdown, nesta-plugin-maldini for bibliographies)

## Content Authoring

Pages use Kramdown markdown with:
- PHP Markdown Extra footnote syntax: `[^1]` with `[^1]: footnote text`
- LaTeX math blocks rendered by MathJax: `$$...$$`
- YAML frontmatter for metadata

Teaching materials are organized by year under `content/pages/teaching/`.

## Key Dependencies

- `nesta` - CMS framework (from GitHub: gma/nesta)
- `nesta-plugin-maldini` - Bibliography/citation plugin (BibTeX support)
- `kramdown` - Markdown parser with math and footnotes
- `puma` - Web server
- `tilt` - Pinned to 2.4.0 (2.5.0 causes MarukuTemplate error)
