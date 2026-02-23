from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/getitems")
async def getitem():
    return {
        "item-list":
        {
            "1": "patato",
            "2": "tomato"
        }
    }