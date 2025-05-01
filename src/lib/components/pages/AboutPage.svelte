<script lang="ts">
  // Band members data
  const bandMembers = [
    {
      name: "Alejandro Gutiérrez",
      role: "Vocals, Charango",
      bio: "Born in Bolivia, Alejandro brings authentic Andean musical traditions to the band, combining them with modern vocal techniques.",
      image:
        "https://images.unsplash.com/photo-1522556189639-b150ed9c4330?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
    },
    {
      name: "Sofia Mendoza",
      role: "Guitar, Backing Vocals",
      bio: "Originally from Colombia, Sofia is passionate about fusing traditional Latin rhythms with contemporary sounds.",
      image:
        "https://images.unsplash.com/photo-1534126511673-b6899657816a?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
    },
    {
      name: "Klaus Weber",
      role: "Bass, Production",
      bio: "A Berlin native with a love for Latin American music, Klaus provides the solid foundation that anchors the band's sound.",
      image:
        "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
    },
    {
      name: "Maria Rodriguez",
      role: "Percussion, Drums",
      bio: "From Peru, Maria brings authentic cumbia rhythms and a unique percussive style that drives the band's infectious grooves.",
      image:
        "https://images.unsplash.com/photo-1567360425618-1594206637d2?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
    },
    {
      name: "Lukas Schmidt",
      role: "Keyboard, Electronics",
      bio: "Adding modern electronic elements to the band's traditional roots, Lukas creates the distinctive fusion sound of Wayra Puka.",
      image:
        "https://images.unsplash.com/photo-1486309146754-8e1c491886c6?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
    },
  ];
</script>

<section id="about" class="about-section">
  <div class="container">
    <h2 class="section-title">About Wayra Puka</h2>

    <div class="band-story">
      <div class="story-image">
        <div class="image-placeholder"></div>
      </div>
      <div class="story-content">
        <h3>Our Story</h3>
        <p>
          Wayra Puka, meaning "Red Wind" in Quechua, was formed in Berlin in
          2018 when Alejandro Gutiérrez and Sofia Mendoza met at a Latin
          American cultural festival. What started as a casual jam session
          quickly evolved into a serious musical project.
        </p>
        <p>
          Our music blends traditional Andean instruments and melodies with the
          infectious rhythms of cumbia, all filtered through the unique
          multicultural lens of Berlin's vibrant music scene. We create a fusion
          that bridges continents and generations.
        </p>
        <p>
          Since our formation, we have performed at venues across Europe, from
          intimate club settings to major festivals. Our debut album, "Entre
          Montañas y Concreto" (Between Mountains and Concrete), released in
          2020, received critical acclaim for its innovative fusion of sounds.
        </p>
      </div>
    </div>

    <div class="band-philosophy">
      <h3>Our Philosophy</h3>
      <p>
        At the heart of Wayra Puka is a commitment to cultural exchange and
        musical exploration. We believe that music transcends borders and can
        bring people together in celebration of our shared humanity while
        honoring diverse traditions.
      </p>
      <p>
        Our performances are designed to take audiences on a journey from the
        Andean highlands to the urban streets of Berlin, creating spaces where
        different worlds meet and new connections are formed.
      </p>
    </div>

    <h3 class="members-title">Meet the Band</h3>
    <div class="band-members">
      {#each bandMembers as member}
        <div class="member-card">
          <div
            class="member-image"
            style="background-image: url('{member.image}')"
          ></div>
          <div class="member-info">
            <h4>{member.name}</h4>
            <p class="member-role">{member.role}</p>
            <p class="member-bio">{member.bio}</p>
          </div>
        </div>
      {/each}
    </div>
  </div>
</section>

<style>
  .about-section {
    padding: 5rem 1rem;
    background-color: #fff;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
  }

  .section-title {
    text-align: center;
    font-size: 2.5rem;
    margin-bottom: 3rem;
    color: #333;
    position: relative;
  }

  .section-title::after {
    content: "";
    display: block;
    width: 80px;
    height: 4px;
    background-color: #e76f51;
    margin: 0.5rem auto 0;
  }

  .band-story {
    display: flex;
    gap: 3rem;
    margin-bottom: 3rem;
  }

  .story-image {
    flex: 1;
  }

  .image-placeholder {
    width: 100%;
    height: 100%;
    background-color: #e76f51;
    background-image: linear-gradient(135deg, #e76f51, #f4a261);
    border-radius: 10px;
    min-height: 350px;
  }

  .story-content {
    flex: 1;
  }

  .story-content h3,
  .band-philosophy h3,
  .members-title {
    font-size: 1.8rem;
    color: #333;
    margin-top: 0;
    margin-bottom: 1.5rem;
    position: relative;
    display: inline-block;
  }

  .story-content h3::after,
  .band-philosophy h3::after,
  .members-title::after {
    content: "";
    display: block;
    width: 50px;
    height: 3px;
    background-color: #e76f51;
    margin-top: 0.5rem;
  }

  .story-content p,
  .band-philosophy p {
    font-size: 1.1rem;
    line-height: 1.7;
    color: #555;
    margin-bottom: 1.5rem;
  }

  .band-philosophy {
    margin-bottom: 4rem;
  }

  .members-title {
    text-align: center;
    margin-bottom: 3rem;
  }

  .members-title::after {
    margin: 0.5rem auto 0;
  }

  .band-members {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 2rem;
  }

  .member-card {
    background-color: #f8f8f8;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
  }

  .member-card:hover {
    transform: translateY(-10px);
  }

  .member-image {
    height: 280px;
    background-size: cover;
    background-position: center;
  }

  .member-info {
    padding: 1.5rem;
  }

  .member-info h4 {
    margin-top: 0;
    margin-bottom: 0.5rem;
    font-size: 1.3rem;
    color: #333;
  }

  .member-role {
    color: #e76f51;
    font-weight: 600;
    font-size: 1rem;
    margin-bottom: 1rem;
  }

  .member-bio {
    color: #666;
    font-size: 0.95rem;
    line-height: 1.6;
  }

  @media (max-width: 768px) {
    .band-story {
      flex-direction: column;
      gap: 2rem;
    }

    .member-card {
      max-width: 350px;
      margin: 0 auto;
    }
  }
</style>
