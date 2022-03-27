package main

import (
  "io/ioutil"
  "net/http"
  "net/http/httptest"
  "testing"
)

func Test_server(t *testing.T) {
  if testing.Short() {
    t.Skip("Flag `-short` provided: skipping Integration Tests.")
  }

  tests := []struct {
    name         string
    URI          string
    responseCode int
    body         string
  }{
  //HOME OAGE TEST  
  {
      name:         "Home page",
      URI:          "",
      responseCode: 404,
      body:         "404 page not found\n",
    },
    //HELLO PAGE TEST WITH NAME
    {
      name:         "Hello page with one name",
      URI:          "/hello?name=Holberton",
      responseCode: 200,
      body:         "Hello Holberton!",
    },
    //HELLO PAGE TEST WITH EMPTY NAME
    {
      name:         "Hello page with empty name",
      URI:          "/hello?",
      responseCode: 200,
      body:         "Hello there!",
    },
    //HELLO PAGE TEST WITH TWO NAME PARAMETER
    {
      name:         "Hello page with two Name",
      URI:          "/hello?name=PabloNeruda&name=PauloCoelho",
      responseCode: 200,
      body:         "Hello PauloCoelho!",
    },
    //HEALTH PAGE
    {
      name:         "Healt page",
      URI:          "/health",
      responseCode: 200,
      body:         "ALIVE",
    },
  }

  for _, tt := range tests {
    t.Run(tt.name, func(t *testing.T) {
      ts := httptest.NewServer(setupRouter())
      defer ts.Close()

      res, err := http.Get(ts.URL + tt.URI)
      if err != nil {
        t.Fatal(err)
      }

      // Check that the status code is what you expect.
      expectedCode := tt.responseCode
      gotCode := res.StatusCode
      if gotCode != expectedCode {
        t.Errorf("handler returned wrong status code: got %q want %q", gotCode, expectedCode)
      }

      // Check that the response body is what you expect.
      expectedBody := tt.body
      bodyBytes, err := ioutil.ReadAll(res.Body)
      res.Body.Close()
      if err != nil {
        t.Fatal(err)
      }
      gotBody := string(bodyBytes)
      if gotBody != expectedBody {
        t.Errorf("handler returned unexpected body: got %q want %q", gotBody, expectedBody)
      }
    })
  }
}
