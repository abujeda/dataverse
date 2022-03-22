#!/bin/sh
curl http://localhost:8080/api/admin/datasetfield/loadNAControlledVocabularyValue
# TODO: The "@" is confusing. Consider switching to --upload-file citation.tsv
curl http://localhost:8080/api/admin/datasetfield/load -X POST --data-binary @data/metadatablocks/citation.tsv -H "Content-type: text/tab-separated-values"
curl http://localhost:8080/api/admin/datasetfield/load -X POST --data-binary @data/metadatablocks/geospatial.tsv -H "Content-type: text/tab-separated-values"
curl http://localhost:8080/api/admin/datasetfield/load -X POST --data-binary @data/metadatablocks/social_science.tsv -H "Content-type: text/tab-separated-values"
curl http://localhost:8080/api/admin/datasetfield/load -X POST --data-binary @data/metadatablocks/astrophysics.tsv -H "Content-type: text/tab-separated-values"
curl http://localhost:8080/api/admin/datasetfield/load -X POST --data-binary @data/metadatablocks/biomedical.tsv -H "Content-type: text/tab-separated-values"
curl http://localhost:8080/api/admin/datasetfield/load -X POST --data-binary @data/metadatablocks/journals.tsv -H "Content-type: text/tab-separated-values"
curl http://localhost:8080/api/admin/datasetfield/load -X POST --data-binary @data/metadatablocks/computational.tsv -H "Content-type: text/tab-separated-values"

curl http://localhost:8080/api/dataverses/1/metadatablockfacets -X POST -d '["citation", "computational"]' -H "X-Dataverse-key: b73a18ab-675b-432e-a576-39df04856b13" -H "Content-type: application/json"

