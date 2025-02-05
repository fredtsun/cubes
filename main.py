from fastapi import FastAPI, Query

app = FastAPI()


@app.get("/")
def read_root(msg: str = Query(default="Hello from cubes!")):
    return {"message": msg}
