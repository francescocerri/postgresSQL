/* gli hashtag si possono mettere in 3 posti, post, commento e user profile
Ma visto che sia gli hastag nei commenti che quelli nel profilo non vengono visti da nessuna parte,
non c'è bisogno di salvarli a db.
Solo quelli del post li salviamo a db perchè si possono cercare per hastag
*/

-- Utilizziamo una join table, perchè così abbiamo solo i tag da una parte con il titolo e una tabella solo di relazione
Table hastags {
  id SERIAL [pk, increment]
  created_at TIMESTAMP
  title VARCHAR(20)
}

Table hastags_posts {
  id SERIAL [pk, increment]
  post_id INTEGER [ref: > posts.id]
  hastag_id INTEGER [ref: > hastags.id]
}