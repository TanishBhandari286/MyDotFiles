custom_text=(
  label="Tanish" # Displaying your name as the label
  label.drawing=on
  padding_right=15
  label.font="$FONT:Bold:17.0"
)

sketchybar --add item custom_text right \
  --set custom_text "${custom_text[@]}"
