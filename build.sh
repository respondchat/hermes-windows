rm -rf destroot/
rm -rf build_*/

# delete all cmakefiles also in subdirectories
rm -rf **/CMakeFiles

./utils/build-ios-framework.sh
mkdir -p archive
cp -r destroot/ archive/destroot
tar -czvf hermes-ios-release.tar.gz archive

# napi_create_async_work
# napi_delete_async_work
# napi_queue_async_work
# napi_create_threadsafe_function
# napi_call_threadsafe_function
# napi_release_threadsafe_function
# napi_ref_threadsafe_function
# napi_unref_threadsafe_function
