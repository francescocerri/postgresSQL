/* In questo caso invece abbiamo 2 tag diversi che devono salvare dati diversi:
1- il tag nella foto, che deve salvare anche la posizione x e y nella foto
2- il tag nel post, che non li deve salvare
*/

Table photo_tags {
  id SERIAL [pk, increment]
  created_at TIMESTAMP
  updated_at TIMESTAMP
  --user tagged
  user_id INTEGER [ref: > users.id]
  --post where photo is added
  post_id INTEGER [ref: > posts.id]
  x INTEGER
  y INTEGER
}

Table caption_tags {
  id SERIAL [pk, increment]
  created_at TIMESTAMP
  user_id INTEGER [ref: > users.id]
  post_id INTEGER [ref: > posts.id]
}