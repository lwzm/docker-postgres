### Docker postgres

With extension `plpython3u`.

```sh
docker run -p 5432:5432 lwzm/postgres
```

Enable `plpython3u`:

```sql
create extension plpython3u;
```

Test function:

```sql
CREATE OR REPLACE FUNCTION pymax (a integer, b integer)
  RETURNS integer
AS $$
if a > b:
    return a
return b
$$ LANGUAGE plpython3u;


do language plpython3u $$
import time
import os
time.sleep(1)
with open("/tmp/debug", "a") as f:
    print(dir(), file=f)
    print(globals(), file=f)
    print(os.getcwd(), file=f)
$$;
```
