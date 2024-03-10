# sdkman-idea

Gradle wrapper is one way to let a dev bootstrap from a text file to a toolchain.

If you have control over the environment with devcontainer you can use other tools.
SDKMan can install just about every combination of JDK (https://sdkman.io/jdks) and 
JVM related SDK (https://sdkman.io/sdks).

It also provides a `.sdkmanrc` which allows per directory settings. This example is
a bit of a hack but it uses the SDKMan feature to bootstrap `sdk` from there the 
project itself defines two toolchains A and B via `.sdkmanrc` files. SDKMan was 
configured to auto switch env on `cd`. But it doesn't automatically install. 

So the devcontainer will pre-install all sdks as part of the post create hook. This
adds time to startup but could be made better with prebuilds or other tuning. 