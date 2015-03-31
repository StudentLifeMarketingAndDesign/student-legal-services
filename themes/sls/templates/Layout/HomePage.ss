<style>
.hero {
  border-bottom: 5px solid #ffce39;
  position: relative;
  padding: 2em 0;
  background-color: #FFF;
}
@media screen and (min-width: 480px) and (max-width: 768px) {
  .hero {
  <% if $BackgroundFeature %>
    background: black url({$BackgroundFeature.Image.URL}) no-repeat center top;
  <% else %>
    background: black url({$ThemeDir}/images/hero-image-md.jpg) no-repeat center top;
  <% end_if %>
    padding: 4em 0;
  }
}
@media screen and (min-width: 768px) {
  .hero {
  <% if $BackgroundFeature %>
    background: black url({$BackgroundFeature.Image.URL}) no-repeat center top;
  <% else %>
    background: black url({$ThemeDir}/images/hero-image.jpg) no-repeat center top;
  <% end_if %>
    padding: 0;
    height: 665px;
  }
}
</style>
<div class="hero">
        <div class="container clearfix">

        <% if HomePageHeroFeatures.Limit(2) %>
            <div class="hero-article-wrapper">

              <% loop HomePageHeroFeatures.Limit(2) %>
                <% include HomePageHeroFeature %>
              <% end_loop %>


            </div>
         <% end_if %>

        <div class="hero-text clearfix">
                <h2 class="blocktext">Student Legal Services provides professional legal advice and representation for University of Iowa Students</h2>
                <ul>
                    <li><a href="rental/problems/">Rental Guide</a></li>
                    <li><a href="appointments/">Appointments</a></li>
                </ul>
            </div>

        </div>

    </div>
  <section class="home-highlights">
        <div class="container clearfix">
          <% loop HomePageFeatures.Limit(3) %>
              <% include HomePageFeature %>
           <% end_loop %>
         </div><!-- end .container -->
    </section>

    <% include TopicsAndNews %>
