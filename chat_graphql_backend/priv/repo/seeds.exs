alias ChatGraphqlBackend.User
alias ChatGraphqlBackend.Message
alias ChatGraphqlBackend.Repo

Repo.insert!(%User{name: "osdnk"})
Repo.insert!(%User{name: "aleqsio"})

for _ <- 1..10 do
  Repo.insert!(%Message{
    body: Faker.Lorem.paragraph,
    user_id: [1, 2] |> Enum.take_random(1) |> hd
  })
end