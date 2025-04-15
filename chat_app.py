import streamlit as st
from google import genai

# Set up AI
gemini_key = 
client = genai.Client(api_key=gemini_key)

# Create a title
st.title("Gemini Chat Bot")

# Get the user's message for the AI. When the page is first loaded, use a default
default_message = ""
message = st.text_input("Enter your message to Gemini:", default_message)

# Send the message to the AI
response = client.models.generate_content(
    model="gemini-2.0-flash", contents=message
)

# Print the response text
st.write(response.text)
    

