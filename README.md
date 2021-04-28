# run-in-compose
 Github Action to launch a docker-compose file and wait for a specified service to exit. Could be used for integration tests launch in a compose environment.
## Usage
```yml
    - name: Run Integration tests
      uses: ./.github/actions/run-in-compose
      with:
        compose-file: docker-compose.yml
        service-name: my-test-integration
        project-name: integration-test
```
## Parameters
  **compose-file:** Docker-compose file to run. Optional. Default value: 'docker-compose.yml'
  
  **service-name:** Name of the service to wait for. Usually it is something like "my_project_my_service_1", if you have only one instance of the service.
  
  **project-name:** Name of the compose project to create. Optional. Default value: 'run-in-compose'
## Outputs
None, it is expected to get some results somehow from the service awaited.
