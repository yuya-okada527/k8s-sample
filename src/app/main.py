from fastapi import FastAPI
import time

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/load")
def load(sec: int = 5):
    start = time.time()
    cnt = 0
    while time.time() - start <= sec:
        print(f"{cnt}")
        cnt += 1
        cnt ** cnt

    return {"count": cnt, "sec": sec}
