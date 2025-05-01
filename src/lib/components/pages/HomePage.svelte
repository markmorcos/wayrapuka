<script lang="ts">
  // Import images when available
  // import heroImage from '../../assets/hero-image.jpg';
</script>

<section id="home" class="home-section">
  <div class="hero">
    <div class="hero-content">
      <h1>WAYRA PUKA</h1>
      <p class="tagline">Andean Cumbia fusion from the heart of Berlin</p>
      <div class="cta-buttons">
        <a href="#music" class="btn primary">Listen Now</a>
        <a href="#events" class="btn secondary">Upcoming Shows</a>
      </div>
    </div>
  </div>

  <div class="featured-section">
    <div class="container">
      <h2>Latest News</h2>
      <div class="news-grid">
        <div class="news-card">
          <div class="news-image placeholder"></div>
          <div class="news-content">
            <h3>New Single Release</h3>
            <p class="date">June 15, 2023</p>
            <p>
              Our latest single "Montañas de Berlín" is now available on all
              streaming platforms!
            </p>
            <a href="#music" class="read-more">Listen Now →</a>
          </div>
        </div>

        <div class="news-card">
          <div class="news-image placeholder"></div>
          <div class="news-content">
            <h3>Summer Tour Announced</h3>
            <p class="date">May 28, 2023</p>
            <p>
              Join us for our summer tour across Germany and neighboring
              countries.
            </p>
            <a href="#events" class="read-more">See Dates →</a>
          </div>
        </div>

        <div class="news-card">
          <div class="news-image placeholder"></div>
          <div class="news-content">
            <h3>Berlin Cultural Festival</h3>
            <p class="date">April 10, 2023</p>
            <p>
              Wayra Puka will be headlining the Berlin Cultural Diversity
              Festival this August.
            </p>
            <a href="#events" class="read-more">Learn More →</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<style>
  .home-section {
    padding-top: 0;
  }

  .hero {
    height: 100vh;
    background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.7)),
      url("https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80");
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    color: white;
  }

  .hero-content {
    max-width: 800px;
    padding: 2rem;
  }

  .hero h1 {
    font-size: 5rem;
    margin: 0;
    font-weight: 900;
    letter-spacing: 4px;
    text-transform: uppercase;
    color: #ffffff;
    text-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
  }

  .tagline {
    font-size: 1.5rem;
    margin: 1.5rem 0 2.5rem;
    font-weight: 300;
    letter-spacing: 1px;
  }

  .cta-buttons {
    display: flex;
    justify-content: center;
    gap: 1rem;
  }

  .btn {
    display: inline-block;
    padding: 0.8rem 2rem;
    border-radius: 50px;
    text-decoration: none;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 1px;
    transition: all 0.3s ease;
  }

  .btn.primary {
    background-color: #e76f51;
    color: white;
  }

  .btn.primary:hover {
    background-color: #d56344;
    transform: translateY(-2px);
  }

  .btn.secondary {
    background-color: transparent;
    color: white;
    border: 2px solid white;
  }

  .btn.secondary:hover {
    background-color: rgba(255, 255, 255, 0.1);
    transform: translateY(-2px);
  }

  .featured-section {
    padding: 5rem 1rem;
    background-color: #f8f8f8;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
  }

  .featured-section h2 {
    text-align: center;
    font-size: 2.5rem;
    margin-bottom: 3rem;
    color: #333;
    position: relative;
  }

  .featured-section h2::after {
    content: "";
    display: block;
    width: 80px;
    height: 4px;
    background-color: #e76f51;
    margin: 0.5rem auto 0;
  }

  .news-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
  }

  .news-card {
    background-color: white;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    transition:
      transform 0.3s ease,
      box-shadow 0.3s ease;
  }

  .news-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
  }

  .news-image {
    height: 200px;
    background-size: cover;
    background-position: center;
  }

  .news-image.placeholder {
    background-color: #e76f51;
    background-image: linear-gradient(135deg, #e76f51, #f4a261);
  }

  .news-content {
    padding: 1.5rem;
  }

  .news-content h3 {
    margin-top: 0;
    font-size: 1.3rem;
    color: #333;
  }

  .date {
    color: #888;
    font-size: 0.9rem;
    margin-bottom: 1rem;
  }

  .read-more {
    display: inline-block;
    margin-top: 1rem;
    color: #e76f51;
    text-decoration: none;
    font-weight: 600;
    transition: color 0.3s ease;
  }

  .read-more:hover {
    color: #d56344;
  }

  @media (max-width: 768px) {
    .hero h1 {
      font-size: 3rem;
    }

    .tagline {
      font-size: 1.2rem;
    }

    .cta-buttons {
      flex-direction: column;
      gap: 1rem;
    }

    .news-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
