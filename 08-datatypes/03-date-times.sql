select ('1980 November 20'::DATE) -- riesce a converitre quasi tutti i formati in AAAA-MM-DD

--time without timezone
select ('01:23'::TIME) -- 01:23:00
select ('01:23 PM'::TIME) -- 13:23:00

--time with timezone
select ('01:23:23 AM z'::TIME WITH TIME ZONE) -- 01:23:23+00:00
select ('01:23:23 AM utc'::TIME WITH TIME ZONE) -- 01:23:23+00:00

--timestamp with timezone
select ('nov-20-1980 05:30 PM PST'::TIMESTAMP WITH TIME ZONE) -- 1980-11-20 18:23:00-07
