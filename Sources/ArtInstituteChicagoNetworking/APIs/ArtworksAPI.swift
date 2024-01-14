//
// ArtworksAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ArtworksAPI {

    /**
     Artworks List
     
     - parameter page: (query) Number of page 
     - parameter limit: (query) Limit of artworks by page 
     - returns: ArtworksList
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func everythingGet(page: String, limit: String) async throws -> ArtworksList {
        return try await everythingGetWithRequestBuilder(page: page, limit: limit).execute().body
    }

    /**
     Artworks List
     - GET /artworks
     - parameter page: (query) Number of page 
     - parameter limit: (query) Limit of artworks by page 
     - returns: RequestBuilder<ArtworksList> 
     */
    open class func everythingGetWithRequestBuilder(page: String, limit: String) -> RequestBuilder<ArtworksList> {
        let localVariablePath = "/artworks"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ArtworksList>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
