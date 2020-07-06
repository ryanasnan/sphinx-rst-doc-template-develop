Sphinx Http RESTful API
===========================

file conf.py::

	extensions = ['sphinxcontrib.httpdomain']

Untuk mengaplikasikannya gunakan syntax function ``http`` seperti kode berikut

Format penulisan (contoh daripada HTTP Get)

.. code-block:: rst

    .. http:get:: /api/v3/projects/(string:project_slug)/

        Retrieve details of a single project.

        .. admonition:: **Params, Headers & Body**

            .. tabs::

                .. tab:: Params

                    .. csv-table:: params
                    :header: Key,Type Value/Example Value

                    query, ``string``
                    is_enable, ``BOOLEAN`` `true/false`

                .. tab:: Headers

                    .. csv-table:: headers
                    :header: Key,Type Value/Example Value

                    Authorization, **Bearer {{TOKEN}}**

                .. tab:: Body

                    .. csv-table:: form
                    :header: Key,Type Value/Example Value

                    picture,``file``

                    **json raw**

                    .. sourcecode:: json

                        {
                            "name": "string",
                            "number": 1
                        }

===========================
Project details
===========================

.. http:get:: /api/v3/projects/(string:project_slug)/

    Retrieve details of a single project.

    .. admonition:: **Params, Headers & Body**

        .. tabs::

            .. tab:: Params

                .. csv-table:: params
                   :header: Key,Type Value/Example Value

                   query, ``string``
                   is_enable, ``BOOLEAN`` `true/false`

            .. tab:: Headers

                .. csv-table:: headers
                   :header: Key,Type Value/Example Value

                   Authorization, **Bearer {{TOKEN}}**

            .. tab:: Body

                .. csv-table:: form
                   :header: Key,Type Value/Example Value

                   picture,``file``

                **json raw**

                .. sourcecode:: json

                    {
                        "name": "string",
                        "number": 1
                    }

    .. admonition:: **Example request & response**

        .. tabs::

            .. tab:: Request

                .. code-block:: rst

                    curl --location --request PUT '{{URL}}/api/story/5e40b98036b80062cf051696/comment' \
                    --header 'Content-Type: application/json' \
                    --header 'Authorization: Bearer {{TOKEN}}' \
                    --data-raw '{
                        "name": "string",
                        "number": 1
                    }'

            .. tab:: Response

                .. sourcecode:: json

                    {
                        "name": "string",
                        "number": 1
                    }

===========================
Project create
===========================

.. http:post:: /api/v3/projects/

    Import a project under authenticated user.

    .. admonition:: **Params, Headers & Body**

        .. tabs::

            .. tab:: Params

                .. csv-table:: params
                   :header: Key,Type Value/Example Value

                   query, ``string``
                   is_enable, ``BOOLEAN`` `true/false`

            .. tab:: Headers

                .. csv-table:: headers
                   :header: Key,Type Value/Example Value

                   Authorization, **Bearer {{TOKEN}}**

            .. tab:: Body

                .. csv-table:: form
                   :header: Key,Type Value/Example Value

                   picture,``file``

                **json raw**

                .. sourcecode:: json

                    {
                        "name": "string",
                        "number": 1
                    }

    .. admonition:: **Example request & response**

        .. tabs::

            .. tab:: Request

                .. code-block:: rst

                    curl --location --request PUT '{{URL}}/api/story/5e40b98036b80062cf051696/comment' \
                    --header 'Content-Type: application/json' \
                    --header 'Authorization: Bearer {{TOKEN}}' \
                    --data-raw '{
                        "name": "string",
                        "number": 1
                    }'

            .. tab:: Response

                .. sourcecode:: json

                    {
                        "name": "string",
                        "number": 1
                    }
===========================
Project update
===========================

.. http:patch:: /api/v3/projects/(string:project_slug)/

    Update an existing project.

    .. admonition:: **Params, Headers & Body**

        .. tabs::

            .. tab:: Params

                .. csv-table:: params
                   :header: Key,Type Value/Example Value

                   query, ``string``
                   is_enable, ``BOOLEAN`` `true/false`

            .. tab:: Headers

                .. csv-table:: headers
                   :header: Key,Type Value/Example Value

                   Authorization, **Bearer {{TOKEN}}**

            .. tab:: Body

                .. csv-table:: form
                   :header: Key,Type Value/Example Value

                   picture,``file``

                **json raw**

                .. sourcecode:: json

                    {
                        "name": "string",
                        "number": 1
                    }

    .. admonition:: **Example request & response**

        .. tabs::

            .. tab:: Request

                .. code-block:: rst

                    curl --location --request PUT '{{URL}}/api/story/5e40b98036b80062cf051696/comment' \
                    --header 'Content-Type: application/json' \
                    --header 'Authorization: Bearer {{TOKEN}}' \
                    --data-raw '{
                        "name": "string",
                        "number": 1
                    }'

            .. tab:: Response

                .. sourcecode:: json

                    {
                        "name": "string",
                        "number": 1
                    }

===========================
Project delete
===========================

.. http:delete:: /api/v3/projects/(str:project_slug)/

    Delete a subproject relationship.

    .. admonition:: **Params, Headers & Body**

        .. tabs::

            .. tab:: Params

                .. csv-table:: params
                   :header: Key,Type Value/Example Value

                   query, ``string``
                   is_enable, ``BOOLEAN`` `true/false`

            .. tab:: Headers

                .. csv-table:: headers
                   :header: Key,Type Value/Example Value

                   Authorization, **Bearer {{TOKEN}}**

            .. tab:: Body

                .. csv-table:: form
                   :header: Key,Type Value/Example Value

                   picture,``file``

                **json raw**

                .. sourcecode:: json

                    {
                        "name": "string",
                        "number": 1
                    }

    .. admonition:: **Example request & response**

        .. tabs::

            .. tab:: Request

                .. code-block:: rst

                    curl --location --request PUT '{{URL}}/api/story/5e40b98036b80062cf051696/comment' \
                    --header 'Content-Type: application/json' \
                    --header 'Authorization: Bearer {{TOKEN}}' \
                    --data-raw '{
                        "name": "string",
                        "number": 1
                    }'

            .. tab:: Response

                .. sourcecode:: json

                    {
                        "name": "string",
                        "number": 1
                    }


====================================================================
Http rest API untuk logging dari `activity`
====================================================================

Jika ingin menuliskan log daripada activity request (curl) dapat menggunakan extension httpexample

file conf.py::

	extensions = ['sphinxcontrib.httpdomain', 'sphinxcontrib.httpexample']

Untuk mengaplikasikannya gunakan syntax function ``http`` dan diikuti ``example`` seperti kode berikut


.. code-block:: rst

	.. http:example::

		POST /posts HTTP/1.1
		Content-Type: application/json
		User-Agent: PostmanRuntime/7.19.0
		Accept: */*
		Cache-Control: no-cache
		Postman-Token: b0eac192-eb30-4c6f-a321-3dd7b88d060a
		Host: jsonplaceholder.typicode.com
		Accept-Encoding: gzip, deflate
		Content-Length: 75
		Cookie: __cfduid=d5ba8a8be0aa609b735f5dcc666889b671576686965
		Connection: keep-alive

		{
			"userId": 5,
			"title": "some title",
			"body": "some new body"
		}


	    HTTP/1.1 201 Created
		Date: Thu, 19 Dec 2019 07:09:15 GMT
		Content-Type: application/json; charset=utf-8
		Content-Length: 82
		Connection: keep-alive
		X-Powered-By: Express
		Vary: Origin, X-HTTP-Method-Override, Accept-Encoding
		Access-Control-Allow-Credentials: true
		Cache-Control: no-cache
		Pragma: no-cache
		Expires: -1
		Access-Control-Expose-Headers: Location
		Location: http://jsonplaceholder.typicode.com/posts/101
		X-Content-Type-Options: nosniff
		Etag: W/"52-wCvUezYamfn9AMh9ZPWHH1FAp84"
		Via: 1.1 vegur
		CF-Cache-Status: DYNAMIC
		Expect-CT: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
		Server: cloudflare
		CF-RAY: 54778ccd6e8ceb55-LAX

		{
			"userId": 5,
			"title": "some title",
			"body": "some new body",
			"id": 101
		}

Hasil

.. http:example::

    POST /posts HTTP/1.1
    Content-Type: application/json
    User-Agent: PostmanRuntime/7.19.0
    Accept: */*
    Cache-Control: no-cache
    Postman-Token: b0eac192-eb30-4c6f-a321-3dd7b88d060a
    Host: jsonplaceholder.typicode.com
    Accept-Encoding: gzip, deflate
    Content-Length: 75
    Cookie: __cfduid=d5ba8a8be0aa609b735f5dcc666889b671576686965
    Connection: keep-alive

    {
        "userId": 5,
        "title": "some title",
        "body": "some new body"
    }


    HTTP/1.1 201 Created
    Date: Thu, 19 Dec 2019 07:09:15 GMT
    Content-Type: application/json; charset=utf-8
    Content-Length: 82
    Connection: keep-alive
    X-Powered-By: Express
    Vary: Origin, X-HTTP-Method-Override, Accept-Encoding
    Access-Control-Allow-Credentials: true
    Cache-Control: no-cache
    Pragma: no-cache
    Expires: -1
    Access-Control-Expose-Headers: Location
    Location: http://jsonplaceholder.typicode.com/posts/101
    X-Content-Type-Options: nosniff
    Etag: W/"52-wCvUezYamfn9AMh9ZPWHH1FAp84"
    Via: 1.1 vegur
    CF-Cache-Status: DYNAMIC
    Expect-CT: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
    Server: cloudflare
    CF-RAY: 54778ccd6e8ceb55-LAX

    {
        "userId": 5,
        "title": "some title",
        "body": "some new body",
        "id": 101
    }

======================================================================
Mempermudah untuk mendapatkan request beserta response dari Postman
======================================================================

Untuk mempermudah dalam mendapatkan raw code daripada suatu request dan response pada Postmn, maka dapat dengan menggunakan raw code dari console

Dan untuk mempermudah dalam view dengan menggunakan indent (seperti pada contoh diatas), maka sebaiknya pada bagian response jangan diberikan ``Tab`` melainkan ``Space``, nantinya bagian request endpoint akan menjadi header dan key-value dibawahnya memiliki indent. 

.. warning::

	Sebaiknya jangan menggunakan **generate code snippet**, karena terdapat keterangan yang kurang mewakili seperti `Host`

	Sejatinya dokumentasi RESTful API itu hanya endpoint saja

.. hint::

	Selain dengan cara dokumentasi di sphinx, penulis juga menyarankan untuk melakukan generate `Postman Collection` menggunakan docgen https://github.com/thedevsaddam/docgen

Berikut tata cara dalam pembuatan RESTful API

.. raw:: html

	<center>
		<video width="800" controls>
			<source src="../../resources/videos/sphinx-write-restful-api-with-postman.mp4" type="video/mp4">
		Your browser does not support HTML5 video.
		</video>
		<p>Video</p>
	</center>

