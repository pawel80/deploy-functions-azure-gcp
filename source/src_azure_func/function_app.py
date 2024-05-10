import azure.functions as func
# import datetime
# import json
import logging

app = func.FunctionApp()

@app.function_name(name="HttpTriggerTest1")
@app.route(route="py-test1", auth_level=func.AuthLevel.ANONYMOUS)
def py_test1(req: func.HttpRequest) -> func.HttpResponse:
    logging.info("Python HTTP trigger function processed a request.")

    name = req.params.get("name")
    if not name:
        try:
            req_body = req.get_json()
        except ValueError:
            pass
        else:
            name = req_body.get("name")

    if name:
        return func.HttpResponse(f"Hello {name}, hello Azure World! This HTTP triggered function executed successfully.")
    else:
        return func.HttpResponse(
             "Hello Azure World! This HTTP triggered function executed successfully. Pass a name in the query string or in the request body for a personalized response.",
             status_code=200
        )


@app.function_name(name="HttpTriggerTest2")
@app.route(route="py-test2", auth_level=func.AuthLevel.ANONYMOUS)
def py_test2(req: func.HttpRequest) -> func.HttpResponse:
    logging.info("Python HTTP trigger function (two) processed a request.")

    return func.HttpResponse(
        "Hello Azure World! Yet another HTTP triggered successfully story!",
        status_code=200
        )
