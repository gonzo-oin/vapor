import HTTPVapor
import URI
import Transport

extension Request {
    public static func makeTest(
        // request
        method: HTTPVapor.Method,
        version: Version = Version(major: 1, minor: 1),
        headers: [HeaderKey: String] = [:],
        body: Body = .data([]),
        // uri
        scheme: String = "",
        userInfo: URI.UserInfo? = nil,
        hostname: String = "0.0.0.0",
        port: Port? = nil,
        path: String = "",
        query: String? = nil,
        rawQuery: String? = nil,
        fragment: String? = nil,
        // onfail
        file: StaticString = #file,
        line: UInt = #line
    ) -> Request {
        let uri = URI(
            scheme: scheme,
            userInfo: userInfo,
            hostname: hostname,
            port: port,
            path: path,
            query: query,
            fragment: fragment
        )
        return Request(
            method: method,
            uri: uri,
            version: version,
            headers: headers,
            body: body
        )
    }
}
