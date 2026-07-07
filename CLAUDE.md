# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static HTML/CSS portfolio website deployed to AWS using S3 and CloudFront, provisioned with Terraform, and automated via GitHub Actions.

## Architecture
- Pure HTML5 and CSS3
- No JavaScript
- No build step
- No framework

## Safety
Never put secrets in this file. No API keys, passwords, or AWS credentials.

## Conventions
- All infrastructure changes go through Terraform — never modify AWS resources manually
- No JavaScript in this project
- CSS uses mobile-first approach with breakpoints at 900px, 768px, and 600px

## Commands
- terraform init
- terraform plan
- terraform apply

### File Organization
- **index.html** — Main website (sections: navbar, hero, about, services, courses, books, community, contact, footer)
- **style.css** — Complete responsive styling (~1146 lines)
- **images/** — Logo, hero banner, book covers, profile photo
- **privacy.html, terms.html** — Legal pages (linked from footer)

### Design System
- **Color scheme**: Yellow (#facc15) for accents, blue (#3b82f6) for secondary, black/white for contrast
- **Responsive breakpoints**: 600px (mobile), 900px (tablet)
- **Layout**: Flexbox/Grid, fixed navbar, smooth scroll behavior

### Sections Structure
1. **Navbar** — Fixed top navigation; hamburger menu on mobile
2. **Hero** — Full-screen background with headline
3. **About** — Author bio + 4 role cards
4. **Services** — 3 service offerings with feature lists
5. **Courses** — Grid of 10 course cards (external Udemy links)
6. **Books** — 3 alternating book rows (left-right layout)
7. **Community** — Social proof cards + stats
8. **Contact** — Dark card (contact info) + yellow card (response time)
9. **Footer** — Brand info, links, socials, copyright

## Deployment for DMI Students

### Mandatory Footer Customization
Students **must** edit the footer in `index.html` (line 604) to add ownership proof:

**Original:**
```html
<p>Crafted with <span>cloud</span> excellence by Pravin Mishra</p>
```

**Add this line (example):**
```html
<p><strong>Deployed by:</strong> DMI Cohort 2 | Rahul Sharma | Group 4 | Week 1 | 16-01-2026</p>
```

This text must be visible in the browser screenshot submission to prove deployment and ownership.

### Deployment Steps
1. Clone/download this repo to Ubuntu VM
2. Install Nginx: `sudo apt-get install nginx`
3. Copy files to `/var/www/html/` or configure Nginx to serve this directory
4. Start Nginx: `sudo systemctl start nginx`
5. Access via `http://<public-ip>` (keep live for 24 hours)
6. Screenshot with footer proof visible

## Development

Since this is a static site:
- **Edit HTML**: Modify content in `index.html`
- **Edit CSS**: Update styles in `style.css`
- **Preview locally**: Open `index.html` in any browser
- **Deploy**: Copy all files to server

### Adding Content
- **Courses**: Add `<div class="course-card">` entries in `#courses` section
- **Books**: Add `<article class="book-row">` entries in `#book` section
- **Links**: Update href attributes in navbar, footer, and cards
- **Images**: Add files to `images/` and reference in `src` attributes

### Styling Notes
- Colors use CSS custom values or hex codes (no CSS variables defined)
- Mobile-first approach in media queries (start small, expand up)
- Font: Arial, sans-serif (from Font Awesome for icons)
- Icon library: Font Awesome 6.5.0 (CDN-linked)

## External Dependencies

- **Font Awesome 6.5.0** — Icon library (CDN: cdnjs.cloudflare.com)
- No other dependencies; works offline after first CDN load

## Key Files to Know

| File | Purpose | Notes |
|------|---------|-------|
| `index.html` | Main website content | ~613 lines; semantic HTML structure |
| `style.css` | All styling | Responsive design; fixes navbar scroll offset with `scroll-margin-top: 90px` |
| `README.md` | Project documentation | Explains DMI assignment, footer proof requirement |
| `images/` | Assets | Logo, hero, books, profile; uses lazy loading |

## Common Tasks

- **Change author name**: Search/replace "Pravin Mishra" throughout HTML
- **Update social links**: Edit `<a href=...>` in footer, community section, and About
- **Modify colors**: Find hex values (#facc15 yellow, #3b82f6 blue) in CSS
- **Adjust spacing**: Look for `padding`, `margin`, `gap` in CSS
- **Fix mobile layout**: Check media queries at 600px and 900px breakpoints
