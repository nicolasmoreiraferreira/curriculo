#import "@preview/basic-resume:0.2.9": *

#let name = "Nicolas Moreira Ferreira"
#let location = "São Vicente, São Paulo, Brazil"
#let email = "nikola.snay@hotmail.com"
#let github = "github.com/nicolasmoreiraferreira"
#let linkedin = "linkedin.com/in/nicolasmoreiraferreira"
#let phone = "+55 13 99794-9634"
#let personal-site = "nicolasmoreiraferreira.github.io/portfolio"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#0f4c81",
  font: "New Computer Modern",
  font-size: 9.5pt,
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

== Summary

Full stack developer building and running web applications end to end: React and TypeScript
interfaces, typed APIs, relational databases and automated tests. I maintain a financial
dashboard in production and a desktop automation platform with 190+ Python modules, treating
accessibility, testing and CI/CD as requirements.

== Technical Skills

- *Front end:* HTML5, CSS3, JavaScript (ES2022+), TypeScript, React, Vite, Tailwind CSS, responsive design, accessibility (WCAG)
- *Back end & data:* Node.js, Express, tRPC, REST APIs, MySQL, Drizzle ORM, Zod, Python
- *Testing & quality:* Vitest, Testing Library, Playwright, ESLint, TypeScript strict mode
- *Tools & DevOps:* Git, GitHub, GitHub Actions (CI/CD), PyInstaller, browser extensions (Manifest V3)

== Projects

#project(
  name: "Financial Dashboard",
  role: "Full Stack Developer",
  dates: dates-helper(start-date: "Jul 2026", end-date: "Present"),
  url: "controlefinanceirosnay.com",
)
- Built a typed end-to-end API with tRPC over Express, persisting to MySQL through Drizzle ORM with versioned migrations and Zod validation.
- Implemented expense entry by WhatsApp message: a webhook parses amount, category and card from free text, and writes are idempotent by message identifier, so a resend never duplicates a transaction.
- Kept domain logic in pure functions tested in isolation (invoice cycle, balance, budgets, goals), reaching 130+ automated tests with type checking and build on every delivery.
- Isolated data per account — nominal invitations, empty first dashboard, dedicated sync credentials. Code is private (real financial data); showcase: #link("https://github.com/nicolasmoreiraferreira/controle-financeiro")

#project(
  name: "BOTSNAY — Web Process Automation Platform",
  role: "Developer",
  dates: dates-helper(start-date: "2026", end-date: "Present"),
)
- Built a desktop platform running workflows on websites autonomously, with 190+ Python modules.
- Orchestrated isolated Playwright browser sessions for parallel execution without interference, handling threads, state persistence and recovery from partial failures.
- Packaged for Windows with a versioned release pipeline validated in GitHub Actions, plus licensing and automatic updates for non-technical end users.

#project(
  name: "Estados — UI States Lab",
  role: "Front-end Developer",
  dates: dates-helper(start-date: "2026", end-date: "Present"),
  url: "github.com/nicolasmoreiraferreira/estados",
)
- Built an open-source React 19 and TypeScript app forcing twelve real API conditions — server error, expired session, no permission, no connection, corrupted payload, 5,000 records — so every screen can be verified on demand.
- Designed a single state renderer leaving no way to render content without handling loading, error and empty states, enforced by tests across all four screens.
- Covered it with 175 automated tests (103 unit, 72 browser) on desktop and mobile, with list virtualization keeping 20 rows in the DOM out of 5,004.

#project(
  name: "Digital Invitation with RSVP",
  role: "Full Stack Developer",
  dates: dates-helper(start-date: "Jul 2026", end-date: "Jul 2026"),
)
- Built an event site used by dozens of families, with real-time countdown and online RSVP separating adults from children, validated and stored server-side, plus an owner dashboard with consolidated totals.

#project(
  name: "Personal Portfolio",
  role: "Front-end Developer",
  dates: dates-helper(start-date: "2026", end-date: "Present"),
  url: "nicolasmoreiraferreira.github.io/portfolio",
)
- Built with React, TypeScript, Vite and Tailwind CSS, deployed continuously to GitHub Pages through GitHub Actions, with accessibility, responsive design and JSON-LD structured data.

== Education

#edu(
  institution: "Cruzeiro do Sul Virtual",
  location: "Distance learning, Brazil",
  dates: dates-helper(start-date: "2026", end-date: "2028"),
  degree: "Bachelor of Technology in Systems Analysis and Development (in progress)",
  consistent: true,
)

#edu(
  institution: "Curso em Vídeo",
  location: "Online, Brazil",
  dates: "2023",
  degree: "Front-End Development: HTML5, CSS3 and JavaScript",
  consistent: true,
)

== Languages

*Portuguese:* Native · *English:* Basic — I read technical documentation and follow written communication; currently starting a language course.
