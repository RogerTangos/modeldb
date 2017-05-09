../../scripts/gen_thrift_file.py python '../../thrift/ModelDB_API.thrift' './ModelDB_API.thrift'
thrift -r -out modeldb/thrift -gen py ModelDB_API.thrift
