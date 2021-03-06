{% extends "wrapper.tpl" %}

{% block title %}donate{% endblock %}

{% block body %}
<div class="box">
  <header>
    <h1>money, <strong>money,</strong> money</h1>
  </header>

  <p>
    The server costs {{ server_cost }}/month.
    The donations so far this month are <strong>{{ this_month_amount }}</strong>{% if carried_over_amount %} with <strong>{{ carried_over_amount }}</strong> carried over from last month{% endif %}:
  </p>

  <div class="progressbar">
    <div id="track-progress" style="width:{{ this_month_progress }}%;"></div>
  </div>

  <p>
    This month <strong>{% if this_month_paid %}is{% else %}is not{% endif %}</strong> paid for.
    {% if surplus_amount %}There is a surplus of <strong>{{ surplus_amount }}</strong>.{% endif %}
  </p>

  <p>
    You can send me money via <a href="https://paypal.me/barrucadu">PayPal</a>.
  </p>

  <p><a href="/">Return to the radio</a></p>
</div>
{% endblock %}
