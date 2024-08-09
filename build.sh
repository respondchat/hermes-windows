rm -rf destroot/
# rm -rf build_*/

export DEBUG=true

# rm -rf **/CMakeFiles

./utils/build-ios-framework.sh
mkdir -p archive
cp -r destroot/ archive/destroot
tar -czvf hermes-ios-release.tar.gz archive
cp hermes-ios-release.tar.gz ../../app/client/ios
cd ../../app/client/ios && ./install.sh

# napi_create_async_work
# napi_delete_async_work
# napi_queue_async_work
# napi_create_threadsafe_function
# napi_call_threadsafe_function
# napi_release_threadsafe_function
# napi_ref_threadsafe_function
# napi_unref_threadsafe_function
