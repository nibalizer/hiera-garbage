# hiera-garbage backend

Hiera lookups that fail crash compilation
That sucks, lets have garbage instead

# use

install the backend

All hiera lookups that hit this backend will return the string 'garbage'
This means you can count on the hiera function to not fail.


# most of this is cargo culted from hunner/ldap
