<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Demo Portfolio</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>Jane Doe | DevOps Engineer</h1>
            <!-- NEW: Dark Mode Toggle Button -->
            <button id="theme-toggle" aria-label="Toggle dark mode">🌙</button>
            <nav>
                <a href="#about">About</a>
                <a href="#projects">Projects</a>
                <a href="#contact">Contact</a>
            </nav>
        </div>
    </header>

    <section id="hero" class="hero">
        <div class="container">
            <h2>Automating the Future.</h2>
            <p>I build robust CI/CD pipelines, manage infrastructure as code, and ensure highly available systems.</p>
            <button id="ctaButton">See My Work</button>
        </div>
    </section>

    <section id="about" class="about-section">
        <div class="container">
            <h3>About Me</h3>
            <p>3+ years of experience specializing in Cloud (AWS/Azure), container orchestration (Kubernetes, Docker), and scripting (Python, Bash). Passionate about monitoring and efficiency.</p>
            <ul>
                <li><strong>Tools:</strong> Terraform, Ansible, Git, Jenkins, Prometheus, Grafana.</li>
                <li><strong>Languages:</strong> Python, Bash, YAML.</li>
            </ul>
        </div>
    </section>

    <section id="projects" class="project-section">
        <div class="container">
            <h3>Key Projects</h3>
            <div class="project-card">
                <h4>Automated Deployment Pipeline</h4>
                <p>Reduced deployment time by 80% using Jenkins and Ansible playbooks.</p>
            </div>
            <div class="project-card">
                <h4>Kubernetes Cluster Management</h4>
                <p>Managed scalable microservices architecture using Helm charts and GKE.</p>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2025 Jane Doe. All rights reserved.</p>
        </div>
    </footer>

    <script src="script.js"></script>
</body>
</html>


/* Global Reset and Variables */
:root {
    --primary-color: #3498db;
    --secondary-color: #2c3e50;
    --light-bg: #f4f7f6;
    --text-color: #333;
    --main-bg: #fff; /* Added main background variable */
    --card-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}

/* NEW: Dark Mode Theme Variables */
body.dark-mode {
    --primary-color: #4a90e2;
    --secondary-color: #1a1a1a;
    --light-bg: #333333;
    --text-color: #f0f0f0;
    --main-bg: #121212;
    --card-shadow: 0 4px 8px rgba(0, 0, 0, 0.5); /* Stronger shadow in dark mode */
}

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    line-height: 1.6;
    color: var(--text-color);
    background-color: var(--main-bg); /* Uses the variable */
    transition: background-color 0.5s, color 0.5s;
}

.container {
    width: 90%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px 0;
}

/* Header and Navigation */
header {
    background: var(--secondary-color);
    color: #fff;
    padding: 10px 0;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

header h1 {
    display: inline-block;
    font-size: 1.8rem;
}

nav {
    float: right;
    margin-top: 5px;
}

nav a {
    color: #fff;
    text-decoration: none;
    margin-left: 20px;
    font-weight: 500;
    transition: color 0.3s ease;
}

nav a:hover {
    color: var(--primary-color);
}

/* NEW: Theme Toggle Button Styling */
#theme-toggle {
    background: none;
    border: 2px solid var(--text-color);
    color: var(--text-color); /* Will be white in light mode, light grey in dark mode */
    float: right;
    padding: 5px 10px;
    margin-right: 15px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 1.2rem;
    line-height: 1;
    transition: background-color 0.3s, color 0.3s, border-color 0.3s;
}
body.dark-mode #theme-toggle {
    color: var(--primary-color);
    border-color: var(--primary-color);
    background-color: var(--light-bg);
}


/* Hero Section */
.hero {
    background: var(--primary-color);
    color: #fff;
    text-align: center;
    padding: 80px 0;
    transition: background-color 0.5s;
}

.hero h2 {
    font-size: 3rem;
    margin-bottom: 10px;
}

.hero p {
    font-size: 1.2rem;
    margin-bottom: 30px;
}

#ctaButton {
    background: var(--secondary-color);
    color: #fff;
    border: none;
    padding: 12px 25px;
    cursor: pointer;
    font-size: 1rem;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

#ctaButton:hover {
    background: #34495e;
}

/* Content Sections */
.about-section, .project-section {
    padding: 60px 0;
    background: var(--light-bg); /* Uses the variable */
    border-bottom: 1px solid #ddd;
    transition: background-color 0.5s;
}

.project-section {
    background: var(--main-bg); /* Uses the variable */
}

body.dark-mode .about-section {
    border-bottom: 1px solid #555;
}

h3 {
    text-align: center;
    color: var(--primary-color);
    font-size: 2rem;
    margin-bottom: 30px;
}

.about-section ul {
    list-style: none;
    text-align: center;
    margin-top: 20px;
}

.about-section li {
    display: inline-block;
    margin: 0 15px;
    padding: 8px 15px;
    background: var(--secondary-color);
    color: #fff;
    border-radius: 3px;
    font-size: 0.9rem;
    transition: background-color 0.5s;
}

/* Project Cards */
.project-card {
    background: var(--light-bg);
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 5px;
    box-shadow: var(--card-shadow);
    transition: background-color 0.5s;
}

.project-card h4 {
    color: var(--primary-color);
    margin-bottom: 10px;
}

/* Footer */
footer {
    background: var(--secondary-color);
    color: #fff;
    text-align: center;
    padding: 15px 0;
    transition: background-color 0.5s;
}

/* Media Queries for Responsiveness */
@media (max-width: 600px) {
    header h1 {
        display: block;
        text-align: center;
        margin-bottom: 10px;
    }

    nav {
        float: none;
        text-align: center;
        display: block;
        padding-top: 10px;
    }

    nav a {
        margin: 0 10px;
        display: inline-block;
    }
    
    #theme-toggle {
        float: none;
        display: block;
        margin: 10px auto 0;
    }

    .hero h2 {
        font-size: 2rem;
    }
}


document.addEventListener('DOMContentLoaded', () => {
    const ctaButton = document.getElementById('ctaButton');
    const projectsSection = document.getElementById('projects');
    const themeToggle = document.getElementById('theme-toggle');
    const body = document.body;

    // --- CTA Button Logic ---
    if (ctaButton && projectsSection) {
        ctaButton.addEventListener('click', () => {
            // Smoothly scroll to the projects section
            projectsSection.scrollIntoView({ behavior: 'smooth' });
            
            // Simple notification (replaced native alert)
            console.log('Navigating to projects section!');
            // NOTE: Using a console log instead of the problematic alert()
        });
    }

    // --- Dark Mode Logic ---

    // 1. Check user preference on load
    const currentTheme = localStorage.getItem('theme');
    if (currentTheme === 'dark') {
        body.classList.add('dark-mode');
        themeToggle.textContent = '☀️';
    } else {
        // Use system preference if no localStorage theme is set
        if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
            body.classList.add('dark-mode');
            themeToggle.textContent = '☀️';
            localStorage.setItem('theme', 'dark');
        } else {
            themeToggle.textContent = '🌙';
        }
    }


    // 2. Handle button click
    if (themeToggle) {
        themeToggle.addEventListener('click', () => {
            body.classList.toggle('dark-mode');

            if (body.classList.contains('dark-mode')) {
                // Set theme to dark and change button text
                localStorage.setItem('theme', 'dark');
                themeToggle.textContent = '☀️';
            } else {
                // Set theme to light and change button text
                localStorage.setItem('theme', 'light');
                themeToggle.textContent = '🌙';
            }
        });
    }

    console.log('Website loaded successfully! Ready for DevOps deployment.');
});

