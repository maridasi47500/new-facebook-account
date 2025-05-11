for file in $(find app/views -type f -name 'index.html.erb'); do
  resource=$(basename $(dirname $file))
  hey1=$(ruby ./wow.rb "$resource")
  hey2=$(ruby ./wow.rb "$resource")
  new_link="<%= link_to 'New $hey1 ', new_ $hey1_path, class: 'btn btn-primary' %>"
  sed -i "\$a$new_link" $file
done
