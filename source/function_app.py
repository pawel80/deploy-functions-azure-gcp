import azure.functions as func
# import datetime
# import json
import logging

app = func.FunctionApp()

@app.function_name(name="HttpTrigger1")
@app.route(route="py_https", auth_level=func.AuthLevel.ANONYMOUS)
def py_https(req: func.HttpRequest) -> func.HttpResponse:
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
        return func.HttpResponse(f"Hello, {name}. This HTTP triggered function executed successfully.")
    else:
        return func.HttpResponse(
             "This HTTP triggered function executed successfully. Pass a name in the query string or in the request body for a personalized response.",
             status_code=200
        )


# @app.function_name(name="HttpTrigger2")
# @app.route(route="py_https2", auth_level=func.AuthLevel.ANONYMOUS)
# def py_https2(req: func.HttpRequest) -> func.HttpResponse:
#     logging.info("Python HTTP trigger function (two) processed a request.")

#     return func.HttpResponse(
#         "This HTTP triggered function executed successfully.",
#         status_code=200
#         )
