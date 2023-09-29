#!/bin/bash -e
# set -e

# If running the rails server then create or migrate existing database
# if [ "${*}" == "./bin/rails server" ]; then
#   ./bin/rails db:create
#   ./bin/rails db:prepare
# fi

  # ./bin/rails db:create
  # ./bin/rails db:migrate
  ./bin/rails db:prepare

# Remove a potentially pre-existing server.pid for Rails.

# rm -f /myApp/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).

exec "${@}"

# #!/bin/bash
# set -e

# # Remove a potentially pre-existing server.pid for Rails.
# rm -f /myApp/tmp/pids/server.pid


# # Then exec the container's main process (what's set as CMD in the Dockerfile).
# exec "$@"