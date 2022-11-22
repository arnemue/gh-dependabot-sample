from fastapi import FastAPI

app = FastAPI()

@app.get("/health")
async def health():
    return "Endpoint is healthy"
