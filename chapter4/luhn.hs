luhnDouble n = if dn > 9 then dn - 9 else dn
               where dn = n * 2

luhn a b c d = (da + b + dc + d) `mod` 10 == 0
               where
                    da = luhnDouble a
                    dc = luhnDouble c
