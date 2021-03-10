# rails-api-poc

This is a proof of concept on setting up a Ruby on Rails API.

## Sign up user

To sign up a user, send the following payload to `/signup`:

```
{
    "name" : "NAME",
    "email" : "EMAIL",
    "password" : "PASSWORD"
}
```

This user will be able to perform POST, PUT, PATCH, and DELETE commands using
the auth token provided.

To login, use the following payload on `/login`:

```
{
    "email" : "YOUR_EMAIL",
    "password" : "YOUR_PASSWORD"
}
```