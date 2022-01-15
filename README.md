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
                                                                      <a href="https://donbigi.github.io/Ucosibe/spotify.html" target="_blank">Click Here</a> to see a summary of my findings <br>
          
         
