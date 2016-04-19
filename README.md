# ether
Sleeping AWS resources.

![alt text](http://rlv.zcache.com/funny_anesthesiologist_poster-r8e2ab44c25f4479aa2700dee26840a55_r1wr_8byvr_324.jpg "")

## Usage

Cron job that runs with an AWS IAM role to check tags for auto starting and auto stopping resources.

## Tags

The *ether* key checks for start and stop values in cron time format in parenthesis. If not available, the values will default to 7am and 7pm.  This tag is *optional* and will not default.  Prod instances should not have this tag unless otherwise approved.

All times are UTC

Tag format must be
```
Key=ether Value=start: (* * * * *), stop: (* * * * *)
```

## Future

Add optional tag option for kill.  Find way to implement timezones.