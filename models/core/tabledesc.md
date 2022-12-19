{% docs __overview__ %}
# Monthly Recurring Revenue (MRR) playbook.
This dbt project is a worked example to demonstrate how to model subscription
revenue. **Check out the full write-up \[here](https://blog.getdbt.com/modeling-subscription-revenue/),
as well as the repo for this project \[here](https://github.com/dbt-labs/mrr-playbook/).**
...

{% enddocs %}


{% docs table_final_orders %}

This table contains clickstream events from the marketing website.

The events in this table are recorded by [Snowplow](http://github.com/snowplow/snowplow) and piped into the warehouse on an hourly basis. The following pages of the marketing site are tracked:
 - /
 - /about
 - /team
 - /contact-us

{% enddocs %}