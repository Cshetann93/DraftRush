# DraftsRush

DraftsRush is an independent scriptwriting studio that writes high-retention video screenplays and builds free browser-based creator tools. The studio designs content specifically for YouTube channels, Shorts, and Reels, focusing on opening hooks, watch-time mechanics, and pacing.

Live site: [draftsrush.com](https://www.draftsrush.com)

---

## Core Services

### 1. High-Retention Video Scripts
- **Short-Form Content:** Formatted in dual-column AV tables with visual cues, B-roll recommendations, and test hooks tailored for YouTube Shorts, Instagram Reels, and TikTok.
- **Long-Form Screenplays:** Fully researched video essays and explainer scripts structured with 90-second mini-arcs to keep audience drop-off low.
- **Pacing Control:** Scripts calibrated to natural speaking speeds of 130 to 160 words per minute.

### 2. Script Packages
- **Creator Tier:** Individual short-form script packages for growing vertical video channels.
- **Production Tier:** Full-length narrative video drafts with scene direction and visual asset breakdowns.
- **Retainer Tier:** Weekly deliveries on dedicated turnaround schedules for active production teams.

### 3. Free Browser Tools
- **Read Time & Pacing Calculator:** Converts word counts into estimated video runtimes across slow, average, and fast speaking rates.
- **Scene Duration Planner:** Estimates section lengths so creators avoid bloated intros and rushed conclusions.
- **Zero Friction:** Client-side utilities running in the browser without signups, logins, or tracking paywalls.

---

## Tech Stack & Design System

- **Markup:** HTML5 with semantic Schema.org organization markup.
- **Styling:** Tailwind CSS with a high-contrast neo-brutalist aesthetic (`#FFE600` accent, thick black borders, hard offset drop shadows).
- **Typography:** Space Grotesk (headers, badges) and Inter (body copy).
- **Deployment:** Vercel with GitHub version control.

---

## Project Structure

```text
├── index.html         # Homepage: Core studio introduction, specifications, and workflow
├── about.html         # Studio background, scriptwriting methodology, and standards
├── scripts.html       # Video script offerings, AV format breakdowns, and packages
├── tools.html         # Free client-side script pacing and read-time calculators
├── partner.html       # Agency white-label and production house partnerships
├── contact.html       # Project inquiry desk and order brief form
├── privacy.html       # Privacy policy
├── terms.html         # Terms of service
└── drlogo.png         # Studio logo asset
