#! /bin/sh

hugo server -D -w --logLevel debug --enableGitInfo  --disableFastRender --cleanDestinationDir --gc --environment development
