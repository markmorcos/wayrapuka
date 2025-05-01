<script lang="ts">
  // Upcoming events data
  const upcomingEvents = [
    {
      date: "August 15, 2023",
      time: "20:00",
      venue: "Kulturbrauerei",
      location: "Berlin, Germany",
      ticketLink: "https://example.com/tickets",
      isSoldOut: false,
      image:
        "https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
    },
    {
      date: "August 28, 2023",
      time: "19:30",
      venue: "Club der Visionäre",
      location: "Berlin, Germany",
      ticketLink: "https://example.com/tickets",
      isSoldOut: false,
      image:
        "https://images.unsplash.com/photo-1540365047399-5fe0550fcef3?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
    },
    {
      date: "September 10, 2023",
      time: "21:00",
      venue: "Festsaal Kreuzberg",
      location: "Berlin, Germany",
      ticketLink: "https://example.com/tickets",
      isSoldOut: false,
      image:
        "https://images.unsplash.com/photo-1459749411175-04bf5292ceea?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
    },
    {
      date: "September 24, 2023",
      time: "20:30",
      venue: "SO36",
      location: "Berlin, Germany",
      ticketLink: "https://example.com/tickets",
      isSoldOut: true,
      image:
        "https://images.unsplash.com/photo-1525025500848-f00b7d362dec?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
    },
    {
      date: "October 5, 2023",
      time: "19:00",
      venue: "Lido",
      location: "Berlin, Germany",
      ticketLink: "https://example.com/tickets",
      isSoldOut: false,
      image:
        "https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
    },
    {
      date: "October 15, 2023",
      time: "20:00",
      venue: "Berghain Kantine",
      location: "Berlin, Germany",
      ticketLink: "https://example.com/tickets",
      isSoldOut: false,
      image:
        "https://images.unsplash.com/photo-1540039155733-5bb30b53aa14?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
    },
  ];

  // Past events for the tour history
  const pastEvents = [
    {
      tour: "European Summer Tour 2022",
      dates: "June - August 2022",
      cities: [
        "Berlin",
        "Hamburg",
        "Munich",
        "Vienna",
        "Prague",
        "Warsaw",
        "Amsterdam",
      ],
    },
    {
      tour: "Andean Fusion Tour",
      dates: "October - December 2021",
      cities: [
        "Berlin",
        "Cologne",
        "Frankfurt",
        "Stuttgart",
        "Leipzig",
        "Dresden",
      ],
    },
    {
      tour: "Album Release Tour",
      dates: "March - May 2020",
      cities: ["Berlin", "Hamburg", "Munich"],
    },
  ];
</script>

<section id="events" class="events-section">
  <div class="container">
    <h2 class="section-title">Upcoming Shows</h2>

    <div class="events-list">
      {#each upcomingEvents as event}
        <div class="event-card">
          <div
            class="event-image"
            style="background-image: url('{event.image}')"
          ></div>
          <div class="event-details">
            <div class="event-date">
              <time datetime={event.date.replace(",", "")}>{event.date}</time>
              <span class="event-time">{event.time}</span>
            </div>
            <div class="event-location">
              <h3 class="venue">{event.venue}</h3>
              <p class="location">{event.location}</p>
            </div>
            <div class="event-action">
              {#if event.isSoldOut}
                <span class="sold-out">Sold Out</span>
              {:else}
                <a
                  href={event.ticketLink}
                  target="_blank"
                  rel="noopener noreferrer"
                  class="btn primary">Get Tickets</a
                >
              {/if}
            </div>
          </div>
        </div>
      {/each}
    </div>

    <div class="tour-section">
      <h3>Tour History</h3>
      <div class="tour-history">
        {#each pastEvents as tour}
          <div class="tour-card">
            <h4 class="tour-name">{tour.tour}</h4>
            <p class="tour-dates">{tour.dates}</p>
            <div class="tour-cities">
              {#each tour.cities as city, i}
                <span class="city"
                  >{city}{i < tour.cities.length - 1 ? "," : ""}</span
                >
              {/each}
            </div>
          </div>
        {/each}
      </div>
    </div>

    <div class="booking-info">
      <h3>Booking Information</h3>
      <p>
        For booking inquiries, please contact our management team at:
        <a href="mailto:booking@wayrapuka.com">booking@wayrapuka.com</a>
      </p>
      <p>
        For press and media inquiries:
        <a href="mailto:press@wayrapuka.com">press@wayrapuka.com</a>
      </p>
      <div class="press-kit">
        <a href="#" class="btn secondary">Download Press Kit</a>
      </div>
    </div>
  </div>
</section>

<style>
  .events-section {
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

  .events-list {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
    margin-bottom: 4rem;
  }

  .event-card {
    display: flex;
    background-color: #f8f8f8;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
    transition: transform 0.3s ease;
  }

  .event-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
  }

  .event-image {
    width: 180px;
    background-size: cover;
    background-position: center;
  }

  .event-details {
    flex: 1;
    display: flex;
    padding: 1.5rem;
    align-items: center;
    justify-content: space-between;
  }

  .event-date {
    width: 140px;
    display: flex;
    flex-direction: column;
  }

  .event-date time {
    font-size: 1.2rem;
    font-weight: 600;
    color: #333;
  }

  .event-time {
    font-size: 1rem;
    color: #666;
    margin-top: 0.3rem;
  }

  .event-location {
    flex: 1;
    padding: 0 2rem;
  }

  .venue {
    font-size: 1.4rem;
    margin: 0 0 0.5rem 0;
    color: #333;
  }

  .location {
    font-size: 1rem;
    color: #666;
    margin: 0;
  }

  .event-action {
    width: 150px;
    text-align: right;
  }

  .btn {
    display: inline-block;
    padding: 0.8rem 1.5rem;
    border-radius: 50px;
    text-decoration: none;
    font-weight: 600;
    text-transform: uppercase;
    font-size: 0.9rem;
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
    color: #e76f51;
    border: 2px solid #e76f51;
  }

  .btn.secondary:hover {
    background-color: rgba(231, 111, 81, 0.1);
    transform: translateY(-2px);
  }

  .sold-out {
    display: inline-block;
    background-color: #888;
    color: white;
    font-weight: 600;
    padding: 0.8rem 1.5rem;
    border-radius: 50px;
    font-size: 0.9rem;
    text-transform: uppercase;
    letter-spacing: 1px;
  }

  .tour-section {
    margin-bottom: 4rem;
  }

  .tour-section h3,
  .booking-info h3 {
    font-size: 1.8rem;
    color: #333;
    margin-bottom: 1.5rem;
    position: relative;
    display: inline-block;
  }

  .tour-section h3::after,
  .booking-info h3::after {
    content: "";
    display: block;
    width: 50px;
    height: 3px;
    background-color: #e76f51;
    margin-top: 0.5rem;
  }

  .tour-history {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 2rem;
  }

  .tour-card {
    background-color: #f8f8f8;
    border-radius: 10px;
    padding: 1.5rem;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
  }

  .tour-name {
    font-size: 1.3rem;
    color: #333;
    margin-top: 0;
    margin-bottom: 0.5rem;
  }

  .tour-dates {
    color: #e76f51;
    font-weight: 600;
    margin-bottom: 1rem;
  }

  .tour-cities {
    color: #666;
    line-height: 1.6;
  }

  .city {
    margin-right: 0.3rem;
  }

  .booking-info {
    background-color: #f8f8f8;
    border-radius: 10px;
    padding: 2rem;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
  }

  .booking-info p {
    font-size: 1.1rem;
    line-height: 1.7;
    color: #555;
    margin-bottom: 1rem;
  }

  .booking-info a {
    color: #e76f51;
    text-decoration: none;
    font-weight: 600;
    transition: color 0.3s ease;
  }

  .booking-info a:hover {
    color: #d56344;
  }

  .press-kit {
    margin-top: 2rem;
  }

  @media (max-width: 768px) {
    .event-card {
      flex-direction: column;
    }

    .event-image {
      width: 100%;
      height: 150px;
    }

    .event-details {
      flex-direction: column;
      align-items: flex-start;
      gap: 1rem;
    }

    .event-location {
      padding: 0;
    }

    .event-action {
      width: 100%;
      text-align: left;
    }
  }
</style>
