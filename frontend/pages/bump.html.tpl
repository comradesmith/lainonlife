{% extends "wrapper.tpl" %}

{% block title %}radio bumps{% endblock %}

{% block body %}
<div class="box">
  <header>
    <h1>Do you want to hear <strong>your work</strong> on the radio?</h1>
  </header>

  <p>A <a href="https://en.wikipedia.org/wiki/Bumper_(broadcasting)">bump</a> is a short piece of audio played to break up the playlist.  Currently the radio plays one every three hours.</p>

  <p>Bumps can be totally original, soundbites, mash-ups, whatever!  20 seconds is a good maximum length.  flac, mp3, and ogg are all welcome.</p>

  <hr/>

  <p>Here are some examples:</p>

  <dl>
    <dt>208.67.222.222</dt>
    <dd>
      <audio controls preload="none" id="audio">
        <source src="/bumps/208.67.222.222.ogg" type="audio/ogg"/>
        <em>Your browser lacks support for Vorbis files. Sucks to be you.</em>
      </audio>
    </dd>
    <dt>Jazz//Data</dt>
    <dd>
      <audio controls preload="none" id="audio">
        <source src="/bumps/data_jazz.mp3" type="audio/mpeg"/>
        <em>Your browser lacks support for MPEG files. Sucks to be you.</em>
      </audio>
    </dd>
    <dt>Hack the Planet</dt>
    <dd>
      <audio controls preload="none" id="audio">
        <source src="/bumps/hack_the_planet.mp3" type="audio/mpeg"/>
        <em>Your browser lacks support for MPEG files. Sucks to be you.</em>
      </audio>
    </dd>
    <dt>Home</dt>
    <dd>
      <audio controls preload="none" id="audio">
        <source src="/bumps/home.mp3" type="audio/mpeg"/>
        <em>Your browser lacks support for MPEG files. Sucks to be you.</em>
      </audio>
    </dd>
    <dt>Listen in while wired in</dt>
    <dd>
      <audio controls preload="none" id="audio">
        <source src="/bumps/listen_in.mp3" type="audio/mpeg"/>
        <em>Your browser lacks support for MPEG files. Sucks to be you.</em>
      </audio>
    </dd>
    <dt>Stay Free</dt>
    <dd>
      <audio controls preload="none" id="audio">
        <source src="/bumps/stay_free.mp3" type="audio/mpeg"/>
        <em>Your browser lacks support for MPEG files. Sucks to be you.</em>
      </audio>
    </dd>
  </dl>

  <hr/>

  <form action="/upload/bump" method="post" enctype="multipart/form-data">
    <fieldset>
      <ol>
        <li>
          <label for="file">File</label>
          <input type="file" id="file" name="file" accept="audio/*">
        </li>
        <li>
          <label for="url">Or URL</label>
          <input type="url" id="url" name="url">
        </li>
        <li>
          <input type="submit" value="Make me into a radio star!">
        </li>
      </ol>
    </fieldset>
  </form>
</div>
{% endblock %}
