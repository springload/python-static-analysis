#!/bin/sh

echo "This will run pip-audit instead of safety has changed its licence, not allowing to be used commercially."
echo "Please change your script to actually run pip-audit."

exec pip-audit --no-deps $@
