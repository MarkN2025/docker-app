import streamlit as st
from PIL import Image

# Create a title
st.title("My Website App")

# We can add any other HTML or Markdown code we want
html_instructions = """
    <h1>Welcome!</h1>
"""
st.markdown(html_instructions, unsafe_allow_html=True)

# List of option names
options = ["cat", "dog", "turtle"]

# The variable choice is equal to what the user selects from the list of options
choice = st.selectbox("Choose an animal:", options)

# Let the user input a caption
my_caption = st.text_input("Enter a caption:", "caption")

# Choose the image file name based on the animal name
image_file = f"animals/{choice}.png"

# Open the image file
my_image = Image.open(image_file)

# Show the image and add the caption
st.image(my_image, caption=my_caption)


