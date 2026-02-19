cmake_minimum_required (VERSION 2.6...3.10.2)
project (CGenerator C)

cmake_policy(SET CMP0063 NEW)

set(CMAKE_C_VISIBILITY_PRESET default)
set(CMAKE_VISIBILITY_INLINES_HIDDEN OFF)
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=implicit-function-declaration")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=missing-declarations")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=int-conversion")

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

find_package(OpenSSL)

if (OPENSSL_FOUND)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DOPENSSL")
    if(CMAKE_VERSION VERSION_LESS 3.4)
        include_directories(${OPENSSL_INCLUDE_DIR})
        include_directories(${OPENSSL_INCLUDE_DIRS})
        link_directories(${OPENSSL_LIBRARIES})
    endif()
endif()

set(pkgName "payconductor_api")

# this default version can be overridden in PreTarget.cmake
set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 0)
set(PROJECT_VERSION_PATCH 1)

if( (DEFINED CURL_INCLUDE_DIR) AND (DEFINED CURL_LIBRARIES))
    include_directories(${CURL_INCLUDE_DIR})
    set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
else()
    find_package(CURL 7.58.0 REQUIRED)
    if(CURL_FOUND)
        include_directories(${CURL_INCLUDE_DIR})
        set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
    endif()
endif()

set(SRCS
    src/list.c
    src/apiKey.c
    src/apiClient.c
    src/binary.c
    external/cJSON.c
    model/object.c
    model/available_payment_methods.c
    model/bank_slip.c
    model/bank_slip_expiration_in_days.c
    model/complete_card_data.c
    model/complete_card_data_expiration.c
    model/credit_card.c
    model/credit_card_card.c
    model/credit_card_installments.c
    model/customer.c
    model/customer_1.c
    model/customer_address.c
    model/document_type.c
    model/draft.c
    model/draft_expiration_in_seconds.c
    model/event.c
    model/merchant_input.c
    model/nu_pay.c
    model/nu_pay_nu_pay.c
    model/payment_method.c
    model/pic_pay.c
    model/pix.c
    model/pix_expiration_in_seconds.c
    model/pix_type.c
    model/post_card_tokenization_200_response.c
    model/post_card_tokenization_request.c
    model/post_card_tokenization_request_customer.c
    model/post_card_tokenization_request_customer_any_of.c
    model/post_orders_200_response.c
    model/post_orders_200_response_bank_slip.c
    model/post_orders_200_response_credit_card.c
    model/post_orders_200_response_nu_pay.c
    model/post_orders_200_response_order_items_inner.c
    model/post_orders_200_response_pic_pay.c
    model/post_orders_200_response_pix.c
    model/post_orders_200_response_session.c
    model/post_orders_by_id_confirm_200_response.c
    model/post_orders_request.c
    model/post_orders_request_fingerprints.c
    model/post_orders_request_items_inner.c
    model/post_orders_request_payment.c
    model/post_orders_request_session.c
    model/post_withdraws_200_response.c
    model/post_withdraws_200_response_payed_at.c
    model/post_withdraws_200_response_payout_account.c
    model/post_withdraws_request.c
    model/post_withdraws_request_payout_account.c
    model/status.c
    model/tokenized_card.c
    api/CardTokenizationAPI.c
    api/CustomersAPI.c
    api/OrdersAPI.c
    api/TransfersAPI.c

)

set(HDRS
    include/apiClient.h
    include/list.h
    include/binary.h
    include/keyValuePair.h
    external/cJSON.h
    model/object.h
    model/any_type.h
    model/available_payment_methods.h
    model/bank_slip.h
    model/bank_slip_expiration_in_days.h
    model/complete_card_data.h
    model/complete_card_data_expiration.h
    model/credit_card.h
    model/credit_card_card.h
    model/credit_card_installments.h
    model/customer.h
    model/customer_1.h
    model/customer_address.h
    model/document_type.h
    model/draft.h
    model/draft_expiration_in_seconds.h
    model/event.h
    model/merchant_input.h
    model/nu_pay.h
    model/nu_pay_nu_pay.h
    model/payment_method.h
    model/pic_pay.h
    model/pix.h
    model/pix_expiration_in_seconds.h
    model/pix_type.h
    model/post_card_tokenization_200_response.h
    model/post_card_tokenization_request.h
    model/post_card_tokenization_request_customer.h
    model/post_card_tokenization_request_customer_any_of.h
    model/post_orders_200_response.h
    model/post_orders_200_response_bank_slip.h
    model/post_orders_200_response_credit_card.h
    model/post_orders_200_response_nu_pay.h
    model/post_orders_200_response_order_items_inner.h
    model/post_orders_200_response_pic_pay.h
    model/post_orders_200_response_pix.h
    model/post_orders_200_response_session.h
    model/post_orders_by_id_confirm_200_response.h
    model/post_orders_request.h
    model/post_orders_request_fingerprints.h
    model/post_orders_request_items_inner.h
    model/post_orders_request_payment.h
    model/post_orders_request_session.h
    model/post_withdraws_200_response.h
    model/post_withdraws_200_response_payed_at.h
    model/post_withdraws_200_response_payout_account.h
    model/post_withdraws_request.h
    model/post_withdraws_request_payout_account.h
    model/status.h
    model/tokenized_card.h
    api/CardTokenizationAPI.h
    api/CustomersAPI.h
    api/OrdersAPI.h
    api/TransfersAPI.h

)

include(PreTarget.cmake OPTIONAL)

set(PROJECT_VERSION_STRING "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

# Add library with project file with project name as library name
if(NOT BUILD_STATIC_LIBS)
  add_library(${pkgName} ${SRCS} ${HDRS})
else()
  add_library(${pkgName} STATIC ${SRCS} ${HDRS})
endif()
# Link dependent libraries
if(NOT CMAKE_VERSION VERSION_LESS 3.4)
    target_link_libraries(${pkgName} PRIVATE OpenSSL::SSL OpenSSL::Crypto)
endif()
target_link_libraries(${pkgName} PUBLIC ${CURL_LIBRARIES} )
target_include_directories(
    ${pkgName} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

include(PostTarget.cmake OPTIONAL)

# installation of libraries, headers, and config files
if (NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in)
    install(TARGETS ${pkgName} DESTINATION lib)
else()
    include(GNUInstallDirs)
    install(TARGETS ${pkgName} DESTINATION lib EXPORT ${pkgName}Targets)

    foreach(HDR_FILE ${HDRS})
        get_filename_component(HDR_DIRECTORY ${HDR_FILE} DIRECTORY)
        get_filename_component(ABSOLUTE_HDR_DIRECTORY ${HDR_DIRECTORY} ABSOLUTE)
        file(RELATIVE_PATH RELATIVE_HDR_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${ABSOLUTE_HDR_DIRECTORY})
        install(FILES ${HDR_FILE} DESTINATION include/${pkgName}/${RELATIVE_HDR_PATH})
    endforeach()

    include(CMakePackageConfigHelpers)
    write_basic_package_version_file(
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            VERSION "${PROJECT_VERSION_STRING}"
            COMPATIBILITY AnyNewerVersion
    )

    export(EXPORT ${pkgName}Targets
            FILE "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Targets.cmake"
            NAMESPACE ${pkgName}::
            )

    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            @ONLY
            )

    set(ConfigPackageLocation lib/cmake/${pkgName})
    install(EXPORT ${pkgName}Targets
            FILE
            ${pkgName}Targets.cmake
            NAMESPACE
            ${pkgName}::
            DESTINATION
            ${ConfigPackageLocation}
            )
    install(
            FILES
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            DESTINATION
            ${ConfigPackageLocation}
    )
endif()

# make installation packages
include(Packing.cmake OPTIONAL)

# Setting file variables to null
set(SRCS "")
set(HDRS "")


## This section shows how to use the above compiled library to compile the source files
## set source files
#set(SRCS
#    unit-tests/manual-CardTokenizationAPI.c
#    unit-tests/manual-CustomersAPI.c
#    unit-tests/manual-OrdersAPI.c
#    unit-tests/manual-TransfersAPI.c
#)

##set header files
#set(HDRS
#)

## loop over all files in SRCS variable
#foreach(SOURCE_FILE ${SRCS})
#    # Get only the file name from the file as add_executable does not support executable with slash("/")
#    get_filename_component(FILE_NAME_ONLY ${SOURCE_FILE} NAME_WE)
#    # Remove .c from the file name and set it as executable name
#    string( REPLACE ".c" "" EXECUTABLE_FILE ${FILE_NAME_ONLY})
#    # Add executable for every source file in  SRCS
#    add_executable(unit-${EXECUTABLE_FILE} ${SOURCE_FILE})
#    # Link above created library to executable and dependent library curl
#    target_link_libraries(unit-${EXECUTABLE_FILE} ${CURL_LIBRARIES} ${pkgName} )
#endforeach(SOURCE_FILE ${SRCS})
