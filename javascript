document.addEventListener('DOMContentLoaded', () => {
    const ctaButton = document.getElementById('ctaButton');
    const projectsSection = document.getElementById('projects');

    if (ctaButton && projectsSection) {
        ctaButton.addEventListener('click', () => {
            // Smoothly scroll to the projects section
            projectsSection.scrollIntoView({ behavior: 'smooth' });
            
            // Simple alert to show interaction (for demo purposes)
            alert('Navigating to projects section!');
        });
    }

    console.log('Website loaded successfully! Ready for DevOps deployment.');
});

