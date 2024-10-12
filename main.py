from fastapi import FastAPI
from utils import io

import json


app = FastAPI()


@app.get("/cxns/{cxn}")
async def get_cxn_info(cxn: str):
    str_data: str = io.read_file('cxns.json')



    return json.loads(str_data)[cxn]