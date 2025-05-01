<script lang="ts">
  let name = "";
  let email = "";
  let subject = "";
  let message = "";
  let formSubmitted = false;
  let formError = false;

  function handleSubmit() {
    // Basic form validation
    if (!name || !email || !message) {
      formError = true;
      return;
    }

    // In a real implementation, we would send form data to a server
    // For now, we'll just simulate form submission
    formSubmitted = true;
    formError = false;

    // Reset form fields
    name = "";
    email = "";
    subject = "";
    message = "";

    // After 5 seconds, reset the submission state
    setTimeout(() => {
      formSubmitted = false;
    }, 5000);
  }
</script>

<section id="contact" class="contact-section">
  <div class="container">
    <h2 class="section-title">Contact Us</h2>

    <div class="contact-container">
      <div class="contact-info">
        <div class="contact-methods">
          <div class="method">
            <div class="method-icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="currentColor"
                ><path
                  d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-2.033 16.01c.564-1.789 1.632-3.932 1.821-4.474.273-.787-.211-1.136-1.74.209l-.34-.64c1.744-1.897 5.335-2.326 4.113.613-.763 1.835-1.309 3.074-1.621 4.03-.455 1.393.694.828 1.819-.211.153.25.203.331.356.619-2.498 2.378-5.271 2.588-4.408-.146zm4.742-8.169c-.532.453-1.32.443-1.761-.022-.441-.465-.43-1.195.1-1.65.53-.45 1.318-.442 1.761.023.441.465.429 1.197-.1 1.649z"
                /></svg
              >
            </div>
            <div class="method-details">
              <h3>Email</h3>
              <p><a href="mailto:info@wayrapuka.com">info@wayrapuka.com</a></p>
            </div>
          </div>

          <div class="method">
            <div class="method-icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="currentColor"
                ><path
                  d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm3.445 17.827c-3.684 1.684-9.401-9.43-5.8-11.308l1.053-.519 1.746 3.409-1.042.513c-1.095.587 1.185 5.04 2.305 4.497l1.032-.505 1.76 3.397-1.054.516z"
                /></svg
              >
            </div>
            <div class="method-details">
              <h3>Phone</h3>
              <p><a href="tel:+4930123456789">+49 30 123 456 789</a></p>
            </div>
          </div>

          <div class="method">
            <div class="method-icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="currentColor"
                ><path
                  d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-2.917 19.883c-4.396-2.239-5.58-8.468-1.226-12.096l.737-.677 1.850.717-.701.752c-2.956 2.773-1.811 7.52 1.444 9.086l.832.429-1.087 1.926-.849-.137zm5.834-16.766c4.396 2.239 5.58 8.468 1.226 12.096l-.737.677-1.850-.717.701-.752c2.956-2.773 1.811-7.52-1.444-9.086l-.832-.429 1.087-1.926.849.137z"
                /></svg
              >
            </div>
            <div class="method-details">
              <h3>Social Media</h3>
              <div class="social-links">
                <a
                  href="https://www.instagram.com/"
                  target="_blank"
                  rel="noopener noreferrer"
                  aria-label="Instagram">Instagram</a
                >
                <a
                  href="https://www.facebook.com/"
                  target="_blank"
                  rel="noopener noreferrer"
                  aria-label="Facebook">Facebook</a
                >
                <a
                  href="https://www.youtube.com/"
                  target="_blank"
                  rel="noopener noreferrer"
                  aria-label="YouTube">YouTube</a
                >
              </div>
            </div>
          </div>

          <div class="method">
            <div class="method-icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="currentColor"
                ><path
                  d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-1.218 19l-1.782-1.75 5.25-5.25-5.25-5.25 1.782-1.75 6.968 7-6.968 7z"
                /></svg
              >
            </div>
            <div class="method-details">
              <h3>Booking</h3>
              <p>For bookings, please contact:</p>
              <p>
                <a href="mailto:booking@wayrapuka.com">booking@wayrapuka.com</a>
              </p>
            </div>
          </div>
        </div>

        <div class="address">
          <h3>Our Studio</h3>
          <address>
            Wayra Puka Music<br />
            Kreuzberg Straße 123<br />
            10965 Berlin, Germany
          </address>
        </div>
      </div>

      <div class="contact-form">
        <h3>Send us a message</h3>

        {#if formSubmitted}
          <div class="form-success">
            <p>Thank you for your message! We'll get back to you soon.</p>
          </div>
        {:else}
          <form on:submit|preventDefault={handleSubmit}>
            {#if formError}
              <div class="form-error">
                <p>Please fill in all required fields.</p>
              </div>
            {/if}

            <div class="form-group">
              <label for="name">Name *</label>
              <input
                type="text"
                id="name"
                bind:value={name}
                required
                class:error={formError && !name}
              />
            </div>

            <div class="form-group">
              <label for="email">Email *</label>
              <input
                type="email"
                id="email"
                bind:value={email}
                required
                class:error={formError && !email}
              />
            </div>

            <div class="form-group">
              <label for="subject">Subject</label>
              <input type="text" id="subject" bind:value={subject} />
            </div>

            <div class="form-group">
              <label for="message">Message *</label>
              <textarea
                id="message"
                rows="5"
                bind:value={message}
                required
                class:error={formError && !message}
              ></textarea>
            </div>

            <button type="submit" class="btn primary">Send Message</button>
          </form>
        {/if}
      </div>
    </div>

    <div class="map-container">
      <h3>Find us on the map</h3>
      <!-- In a real implementation, this would be an iframe with a Google Maps or similar embed -->
      <div class="map-placeholder">
        <span>Interactive Map Coming Soon</span>
      </div>
    </div>
  </div>
</section>

<style>
  .contact-section {
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

  .contact-container {
    display: flex;
    gap: 3rem;
    margin-bottom: 4rem;
  }

  .contact-info,
  .contact-form {
    flex: 1;
  }

  .contact-methods {
    margin-bottom: 2rem;
  }

  .method {
    display: flex;
    align-items: flex-start;
    margin-bottom: 1.5rem;
  }

  .method-icon {
    background-color: #f8f8f8;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-right: 1rem;
    color: #e76f51;
  }

  .method-details h3 {
    font-size: 1.2rem;
    margin: 0 0 0.5rem 0;
    color: #333;
  }

  .method-details p {
    margin: 0;
    color: #666;
  }

  .method-details a {
    color: #666;
    text-decoration: none;
    transition: color 0.3s ease;
  }

  .method-details a:hover {
    color: #e76f51;
  }

  .social-links {
    display: flex;
    gap: 1rem;
  }

  .address {
    padding: 1.5rem;
    background-color: #f8f8f8;
    border-radius: 10px;
  }

  .address h3 {
    font-size: 1.2rem;
    margin: 0 0 1rem 0;
    color: #333;
  }

  .address address {
    font-style: normal;
    line-height: 1.6;
    color: #666;
  }

  .contact-form h3 {
    font-size: 1.5rem;
    margin-top: 0;
    margin-bottom: 1.5rem;
    color: #333;
    position: relative;
  }

  .contact-form h3::after {
    content: "";
    display: block;
    width: 50px;
    height: 3px;
    background-color: #e76f51;
    margin-top: 0.5rem;
  }

  .form-group {
    margin-bottom: 1.5rem;
  }

  .form-group label {
    display: block;
    margin-bottom: 0.5rem;
    color: #333;
    font-weight: 600;
  }

  .form-group input,
  .form-group textarea {
    width: 100%;
    padding: 0.8rem;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 1rem;
    color: #333;
    transition: border-color 0.3s ease;
  }

  .form-group input:focus,
  .form-group textarea:focus {
    outline: none;
    border-color: #e76f51;
  }

  .form-group input.error,
  .form-group textarea.error {
    border-color: #e74c3c;
  }

  .form-error {
    background-color: rgba(231, 76, 60, 0.1);
    border-left: 4px solid #e74c3c;
    padding: 1rem;
    margin-bottom: 1.5rem;
    border-radius: 5px;
  }

  .form-error p {
    margin: 0;
    color: #e74c3c;
    font-weight: 600;
  }

  .form-success {
    background-color: rgba(46, 204, 113, 0.1);
    border-left: 4px solid #2ecc71;
    padding: 1.5rem;
    margin-bottom: 1.5rem;
    border-radius: 5px;
  }

  .form-success p {
    margin: 0;
    color: #2ecc71;
    font-weight: 600;
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
    cursor: pointer;
    font-size: 0.9rem;
    border: none;
  }

  .btn.primary {
    background-color: #e76f51;
    color: white;
  }

  .btn.primary:hover {
    background-color: #d56344;
    transform: translateY(-2px);
  }

  .map-container {
    margin-top: 4rem;
  }

  .map-container h3 {
    font-size: 1.5rem;
    margin-bottom: 1.5rem;
    color: #333;
    position: relative;
  }

  .map-container h3::after {
    content: "";
    display: block;
    width: 50px;
    height: 3px;
    background-color: #e76f51;
    margin-top: 0.5rem;
  }

  .map-placeholder {
    width: 100%;
    height: 400px;
    background-color: #f8f8f8;
    border-radius: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #666;
    font-weight: 600;
    background-image: url("https://images.unsplash.com/photo-1526778548025-fa2f459cd5ce?ixlib=rb-4.0.3&auto=format&fit=crop&w=1400&q=80");
    background-size: cover;
    background-position: center;
    position: relative;
  }

  .map-placeholder::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.5);
    border-radius: 10px;
  }

  .map-placeholder span {
    position: relative;
    z-index: 1;
    color: white;
    font-size: 1.2rem;
    background-color: rgba(0, 0, 0, 0.5);
    padding: 0.8rem 1.5rem;
    border-radius: 50px;
  }

  @media (max-width: 992px) {
    .contact-container {
      flex-direction: column;
    }
  }

  @media (max-width: 768px) {
    .social-links {
      flex-direction: column;
      gap: 0.5rem;
    }
  }
</style>
