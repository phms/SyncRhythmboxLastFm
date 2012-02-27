SyncRhythmboxLastFm - Sync Rhythmbox with Last.fm database
==========================================================
Forked from LastfmPlaycount_

.. _LastfmPlaycount: https://github.com/BramBonne/LastfmPlaycount


Synopsis
--------

The Last.fm database synchronization plugin for Rhythmbox fetches the currently playing track's playcount from Last.fm, and updates your Rhythmbox database accordingly.

Will be synchronized the following information:

- Count of reproduction (play count)
- Loved track (rating)
- Date of first reproduction (first seen)
- Date of last reproduction (last played)
- *Suggestions_?*

.. _Suggestions: https://github.com/phms/SyncRhythmboxLastFm/issues

The Last.fm username is read from Rhythmbox' Last.fm plugin.


Installation
------------

To install the plugin for the current user only, run the install script with
:: ./install.sh

To install system-wide (for all users), run this script as root with
:: sudo ./install.sh


How to enable
-------------

After installing the plugin in one of the two ways mentioned above, start up Rhythmbox, and head over to the "Edit > Plugins" menu. Check the box next to "Last.fm playcount synchronization".
Also make sure that you also have the regular "Last.fm" plugin enabled, since your Last.fm credentials stored in this plugin are used by the Last.fm playcount synchronization plugin to get the correct playcounts.


Tips and Tricks
---------------

With the combination of plays counts and the date of first play, it is possible  to create an automatic playlist to find the songs less played in your library.
Probably, these songs aren't very nice...

To create this playlist, in "New Automatic Playlist" use this following rules:

- Time Added to Library > not in last > 50 > weeks
- Play Count > at most > 4
- Play count > at least > 1


Credits
-------

Plugin created by Bram Bonné (https://github.com/BramBonne) and forked by Fabio Serra (https://github.com/phms)
