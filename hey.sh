echo "<div class='container mt-4'>
      <h1 class='mb-4'>Tweets</h1>
      <div class='row'>
        <% @tweets.each do |tweet| %>
          <div class='col-md-4 mb-3'>
            <div class='card'>
              <div class='card-body'>
                <h5 class='card-title'>User <%= tweet.user_id %></h5>
                <p class='card-text'><%= tweet.content %></p>
                <small class='text-muted'><%= tweet.created_at.strftime('%B %d, %Y') %></small>
              </div>
            </div>
          </div>
        <% end %>
      </div>
      </div>" > app/views/tweets/index.html.erb

echo "<div class='container mt-4'>
      <h1 class='mb-4'>Facebook Posts</h1>
      <div class='row'>
        <% @posts.each do |post| %>
          <div class='col-md-4 mb-3'>
            <div class='card'>
              <div class='card-body'>
                <h5 class='card-title'>User <%= post.user_id %></h5>
                <p class='card-text'><%= post.content %></p>
                <small class='text-muted'><%= post.created_at.strftime('%B %d, %Y') %></small>
                <a href='<%= post_path(post) %>' class='btn btn-primary mt-3'>View Post</a>
              </div>
            </div>
          </div>
        <% end %>
      </div>
      </div>" > app/views/posts/index.html.erb

echo "<div class='container mt-4'>
      <div class='card'>
        <div class='card-body'>
          <h3 class='card-title'>Post by User <%= @post.user_id %></h3>
          <p class='card-text'><%= @post.content %></p>
          <small class='text-muted'>Created on: <%= @post.created_at.strftime('%B %d, %Y') %></small>
        </div>
      </div>
      <div class='mt-3'>
        <%= link_to 'Edit this post', edit_post_path(@post), class: 'btn btn-primary' %>
        <%= link_to 'Back to posts', posts_path, class: 'btn btn-secondary' %>
        <%= button_to 'Destroy this post', @post, method: :delete, class: 'btn btn-danger' %>
      </div>
      </div>" > app/views/posts/show.html.erb

echo "<div class='container mt-4'>
      <h1 class='mb-4'>Instagram Photos</h1>
      <div class='row'>
        <% @photos.each do |photo| %>
          <div class='col-md-3 mb-3'>
            <div class='card'>
              <%= image_tag photo.image, class: 'card-img-top', alt: 'Photo' %>
              <div class='card-body'>
                <p class='card-text'><%= photo.caption %></p>
                <small class='text-muted'>Uploaded on: <%= photo.created_at.strftime('%B %d, %Y') %></small>
              </div>
            </div>
          </div>
        <% end %>
      </div>
      <%= link_to 'Upload Photo', new_photo_path, class: 'btn btn-success mt-4' %>
      </div>" > app/views/photos/index.html.erb

