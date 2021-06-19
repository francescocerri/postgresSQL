Table likes {
  id SERIAL [pk, increment]
  created_at TIMESTAMP
  user_id INTEGER [ref: > users.id]
  comment_id INTEGER [ref: > comments.id]
  post_id INTEGER [ref: > posts.id]
}
/* in questo caso abbiamo deciso di fare una tabella sola ed inserire sia i like dei post che i like dei post
questo perchè non dovevamo salvare dati diversi tra i commenti e i post, per cui non aveva senso fare una tabella solo per i
like dei commenti e una solo per i like dei post.
In più bisognerà mettere il check che almeno uno tra comment_id e post_id esista
*/