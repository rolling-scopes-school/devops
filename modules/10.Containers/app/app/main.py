import os
from fastapi import FastAPI
from fastapi.responses import FileResponse

app = FastAPI()

@app.get("/")
def hello_world():
    env_value = os.getenv("CUSTOM_MESSAGE", "OK")
    return {"message": env_value}

@app.get("/file")
def read_file():
    file_path = "./text.txt"
    if os.path.isfile(file_path):
        with open(file_path, "r") as file:
            file_contents = file.read()
        return {"file_contents": file_contents}
    else:
        return {"error": "File not found"}