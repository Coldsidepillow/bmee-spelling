BMEE Spelling: how to put it on Render as its own new site

1. On GitHub, make a NEW repository (for example "bmee-spelling") and upload these four files to the top of it:
   Dockerfile, nginx.conf, render.yaml and site.zip
2. On Render: New + > Web Service > pick the new repository.
   Language/Runtime: Docker. Instance type: Free. Then press Deploy.
   (Or use New + > Blueprint, which reads render.yaml for you.)
3. When it says Live, the link at the top of the page is your BMEE Spelling site.

To update the site later: replace site.zip in the repository (the name must stay exactly site.zip). Render redeploys by itself.

The site has a start menu with two games: "Unit 2, week 5 spelling" and "Listen and spell".
The free plan goes to sleep when nobody visits, so the first visit after a while can take about a minute to wake up.
