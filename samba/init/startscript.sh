#!/bin/bash
service smbd restart
echo "Running useless command just to keep container running..."
tail -f /dev/null