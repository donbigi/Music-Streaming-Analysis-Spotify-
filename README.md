# Music-Streaming-Analysis-Spotify
<p> Analysis of my Spotify stream beteween Feb 2021 to Jan 2022 <br>
I joined Spotify last year, I was curious to know more about my streaming habit, so I set out to perform an exploratory analysis to answer some questions to help me understand how I listen to music.</P> <br>
 <p> 
    <ul">
          I wanted to find out
          <li>Total unique artists.</li>
          <li>Total unique songs.</li>
          <li>The timeline of my streaming.</li>
          <li>What day I listened to music the most.</li>
          <li>My favorite artist.</li>
          <li>Top song.</li>
 </ul>
  </p>
 <p>       
<a href="https://donbigi.github.io/Ucosibe/spotify.html" target="_blank">Click Here</a> to see a summary of my findings <br>
<a href="https://public.tableau.com/app/profile/uchechukwu.cos.ibe/viz/spotifyanalysis_16421777483760/Dashboard1?publish=yes" target="_blank">Click Here </a> to see Tableau dashboard
 <p>                                                                                                                                      
<p style="text-align: justify;"><strong>About the data</strong> 
          <br> One of the beautiful things I love about Spotify is the ability 
            to request a download of all my streaming history. Anyone can ask 
            for their data for personal use through their developer platform. 
        </p>
        <p style="text-align: justify;"> The data was in JSON format, and I 
          converted it to CSV using 
          <a
          href="https://retool.com/utilities/json-to-csv"
          target="_blank"
        >
        Retool Utilities
        </a>
        </p>  
        <ul class="after-boat-list">
          There are three datasets with four columns each, four columns include:
          <li>endTime - Date and time of when the stream ended</li>
          <li>artistName - Name of "creator" for each stream (e.g., the artist's 
            name if a music track).</li>
          <li>trackName - Name of items listened to or watched (e.g., the title 
            of music track or name of the video)</li>
          <li>msPlayed - Stands for how many milliseconds the track was heard.</li>
        </ul>
        <p style="text-align: justify;">
          I used SQL to clean the data according to my needs. The code used for 
          cleaning is named <strong>"cleaning_and_formatting_code.sql"</strong> 
        </p>

         <p>
          During my analysis, I discovered between <strong>February 2021 and January 2022</strong>, 
          I have spent approximately <strong>84,513.55 minutes </strong>(about 58 days!)  listening 
          to music. It is not too surprising to me because I love music. In that same 
          period, I listened to <strong>3,813</strong> unique artists and <strong>9,506</strong> unique songs,
           but in total, I listened to <strong>26,201</strong> songs.
        </p>
        
        <p style="text-align: justify;"> <strong>My streaming history timeline</strong> <br>
          I know I spend a lot of time listening to music listening to music. I didn't realize
          it was this much time! (84,513.55 minutes between February 2021 and January 2022). 
        </p>
        <div class="data-set-1-img-container">
          <img src="Spotify/1_linegraph_streaming_history(day).jpg" class="boat-data-set" />
        </div>
        <p style="text-align: justify;">
          To be fair, music helps me sleep at night, so there is a massive spike when I go 
          to bed. </p>

          <p>&nbsp;</p>
        </p>
        <div class="data-set-1-img-container">
          <img src="Spotify/2_TImeline_of_my_streaming_history.jpg" class="boat-data-set" />
        </div>
        <p>
          On June 19th, 2021, I spent a gasping 1,027 minutes (about 17 hours) listening
          to music – the most in the past year! There are similar spikes in listening 
          times, and they almost all happen on weekends (Friday, Saturday, and Sundays) 
          when I am mostly at home. I am not surprised as listening to music is my favorite
           pastime. I turn on music in the background while working on projects, cleaning, 
           or surfing the web.
        </p>
        <p>&nbsp;</p>
        <p style="text-align: justify;">
          <strong>Day preference</strong> <br>
          Does the day of a week affect how I listen to music?
        </p>
        <div class="data-set-1-img-container">
          <img src="Spotify/3_day_prefrence.jpg" class="boat-data-set" />
        </div>
        <p style="text-align: justify;">
          I listen to music wherever I go. It makes sense Monday – Wednesday recorded 
          the lowest listening time because those are the days I am mostly busy with 
          school. I am shocked, though, on Saturday's record. I suppose because 
          visitors and chores caused the low listening time.
        </p>
        <p>&nbsp;</p>
        <p style="text-align: justify;">
          <strong>Favorite artists</strong> <br>
          Do I have a favorite artist?
        </p>
        <ul class="after-boat-list">
          According to the data, I do. I considered two factors to determine this:
          <li>The number of times I played an artist's song</li>
          <li>The number of minutes I spent listening to an artist song</li>
        </ul>
        <p>The graphs below show the top 15 artists under both categories</p>
        <div class="data-set-1-img-container">
          <img src="Spotify/4_count.jpg" class="boat-data-set" />
        </div>
        <div class="data-set-1-img-container">
          <img src="Spotify/5_sum.jpg" class="boat-data-set" />
        </div>
        <p style="text-align: justify;">
          Drake and J. Cole maintained the top positions on both graphs. The thing
           starts to rearrange after the top two because I listen to the podcast. 
           Naval and Business Wars are some of the podcasts I listen to; although I 
           don't click on them as often, it shows I listen to the podcasts for a 
           significant amount of time (an average podcast lasts an hour).
        </p>
        <p>&nbsp;</p>
        <p style="text-align: justify;">
          <strong>What songs were played the most?</strong> <br>
          Was it by the same artists? - Well... It is complicated <br>
          Here's why:
        </p>
        <div class="data-set-1-img-container">
          <img src="Spotify/6_Favorite song.jpg" class="boat-data-set" />
        </div>
        <p style="text-align: justify;">
          Some of the top artists I listen to made the chart, but it was populated 
          mainly by podcast episodes and viral songs I classify as earworms. 
          The top song (in this case podcast), How to Get Rich, accounted for 
          40% of the time I spent listening to the artist Naval. Although Young 
          Stoner Boy featured drake in the song Solid, it charted as top 3, goes to 
          show how much I like drake. Lemon Pepper Freestyle by Drake was in the 
          chart too. I never thought my most listened to song would be a podcast, 
          but it was expected given the average listening time of a podcast.

        <p>&nbsp;</p>
        <h5><strong>Conclusion</strong></h5>
        <p style="text-align: justify;">
          I had fun working on this project as it was personal to me. I enjoyed 
          learning more about my music preferences. The quantifiable figure of 
          how much time I spend on music surprised me, I know I loved listening 
          to music, but I had no idea it was this much! <br> 
        </p>
        <p style="text-align: justify;">
          Tableau dashboard to interact with any of the chart 
          <a href="https://public.tableau.com/app/profile/uchechukwu.cos.ibe/viz/spotifyanalysis_16421777483760/Dashboard1?publish=yes" target="_blank">Click to view dashboard</a>
        </p>                                                                    
