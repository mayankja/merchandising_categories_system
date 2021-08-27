# Merchandising Categories System

This repository contains the solution for **[merchandising categories problem](https://github.com/RBM-Technologies/challenge)**.

### System Requirements
- Ruby version - `ruby-2.7.2`
- Bundler version - `2.1.4`
	- Installation: 	`gem install bundler:2.1.4`

### Setting Up
- Run command
	- `bundle install && bundle exec rails db:drop db:create db:migrate db:seed`

### Endpoints Description

 #### 1. **Listing Categories**

  This endpoint list all the categories.

  ##### **Details**
  - Endpoint: `/v1/categories.json`
  - Method:   `GET`

  - Request body (SAMPLE)
    ```json
      [
        {
          "name":"Pets",
          "products":10,
          "children":[
            {
              "name":"Pet Food",
              "products":10,
              "children":[
              ]
            }
          ]
        },
        {
          "name":"Pet Food",
          "products":10,
          "children":[
            {
              "name":"Dog Food",
              "products":10,
              "children":[
              ]
            }
          ]
        }
      ]
    ```

  - Sample Request (CURL)

    ```curl
      curl --location --request GET 'http://localhost:3000/v1/categories.json'
    ```

  <br>

 #### 2. **Child categories of Sub categories**

  This endpoint list sub categories of any specific category/sub category.

  ##### **Details**
  - Endpoint: `/v1/category.json`
  - Method:   `GET`

  - Request body (SAMPLE)
    ```json
      [
        {
          "name":"Pets",
          "products":10,
          "children":[
            {
              "name":"Pet Food",
              "products":10,
              "children":[]
            }
          ]
        }
      ]
    ```

  - Sample Request (CURL)

    ```curl
      curl --location --request GET 'http://localhost:3000/v1/category.json?name=pets'
    ```

  <br>

#### 3. **Child categories of Sub categories with products**

  This endpoint list sub categories of any specific category/sub category with it's immediate products.

  ##### **Details**
  - Endpoint: `/v1/category.json`
  - Method:   `GET`

  - Request body (SAMPLE)
    ```json
      [
        {
          "name":"Hardware",
          "products":[
            {
              "name":"Rustic Granite Table",
              "created_at":"2021-08-27T14:05:13.126Z"
            },
            {
              "name":"Sleek Marble Gloves",
              "created_at":"2021-08-27T14:05:13.331Z"
            }
          ],
          "children":[
            {
              "name":"Stuff",
              "products":10,
              "children":[]
            }
          ]
        }
      ]
    ```

  - Sample Request (CURL)

    ```curl
      curl --location --request GET 'http://localhost:3000/v1/products.json?name=pets'
    ```
