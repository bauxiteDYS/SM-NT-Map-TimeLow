# SM-NT-Map-TimeLow
Used with mp_timelimit, changes map on first client load if not enough time is left.
I suggest using `mp_timelimit 120` for Public servers to keep them working smoothly and reduce crashes.
However if players join with only a short time left, the map may unexpectedly change disurpting their game.
This plugin should ensure that when a player first joins the server if there is less than 33 minutes left the map will automatically change, otherwise nothing should happen.
